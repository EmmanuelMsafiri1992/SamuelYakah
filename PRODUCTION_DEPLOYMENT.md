# Production Deployment Guide - Sunrise & Sunset Home Care

## 📋 Pre-Deployment Checklist

### 1. Environment Configuration

1. **Copy production environment file:**
   ```bash
   cp .env.production .env
   ```

2. **Update the following in `.env`:**
   - `APP_ENV=production`
   - `APP_DEBUG=false`
   - `APP_URL=https://yourdomain.com`
   - Database credentials
   - Email SMTP settings
   - Admin email address

### 2. Email Configuration

#### Option A: Gmail SMTP
```env
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your-email@gmail.com
MAIL_PASSWORD=your-gmail-app-password
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=noreply@yourdomain.com
ADMIN_EMAIL=admin@yourdomain.com
```

**To create Gmail App Password:**
1. Go to Google Account Settings
2. Security → 2-Step Verification
3. App passwords → Generate new app password
4. Copy the 16-character password to `MAIL_PASSWORD`

#### Option B: SendGrid
```env
MAIL_MAILER=smtp
MAIL_HOST=smtp.sendgrid.net
MAIL_PORT=587
MAIL_USERNAME=apikey
MAIL_PASSWORD=your-sendgrid-api-key
MAIL_ENCRYPTION=tls
```

#### Option C: Mailgun
```env
MAIL_MAILER=mailgun
MAILGUN_DOMAIN=your-domain.com
MAILGUN_SECRET=your-mailgun-secret
MAILGUN_ENDPOINT=api.mailgun.net
```

### 3. Database Setup

```bash
# Run migrations
php artisan migrate --force

# Seed initial data
php artisan db:seed --class=HomePageSettingsSeeder
php artisan db:seed --class=FooterSettingsSeeder
php artisan db:seed --class=AllPagesContentSeeder
php artisan db:seed --class=NewsAndResourcesSeeder
php artisan db:seed --class=MenuItemsSeeder
php artisan db:seed --class=NewsArticlesSeeder
php artisan db:seed --class=SiteLogoSeeder
```

### 4. Optimize Application

```bash
# Install production dependencies
composer install --optimize-autoloader --no-dev

# Generate application key (if not done)
php artisan key:generate

# Cache configuration
php artisan config:cache

# Cache routes
php artisan route:cache

# Cache views
php artisan view:cache

# Create storage link
php artisan storage:link

# Build frontend assets
npm install
npm run build
```

### 5. File Permissions

```bash
# Set correct permissions
chmod -R 755 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache
```

### 6. Web Server Configuration

#### Apache (.htaccess already configured)
Make sure `mod_rewrite` is enabled:
```bash
sudo a2enmod rewrite
sudo systemctl restart apache2
```

#### Nginx Configuration
```nginx
server {
    listen 80;
    listen [::]:80;
    server_name yourdomain.com www.yourdomain.com;
    root /path/to/SamuelYakah/public;

    add_header X-Frame-Options "SAMEORIGIN";
    add_header X-Content-Type-Options "nosniff";

    index index.php;

    charset utf-8;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location = /favicon.ico { access_log off; log_not_found off; }
    location = /robots.txt  { access_log off; log_not_found off; }

    error_page 404 /index.php;

    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php/php8.3-fpm.sock;
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        include fastcgi_params;
    }

    location ~ /\.(?!well-known).* {
        deny all;
    }
}
```

### 7. SSL Certificate (Let's Encrypt)

```bash
# Install Certbot
sudo apt install certbot python3-certbot-nginx  # For Nginx
# OR
sudo apt install certbot python3-certbot-apache  # For Apache

# Obtain certificate
sudo certbot --nginx -d yourdomain.com -d www.yourdomain.com
# OR
sudo certbot --apache -d yourdomain.com -d www.yourdomain.com

# Auto-renewal
sudo certbot renew --dry-run
```

### 8. Scheduler Setup (For automated tasks)

Add to crontab:
```bash
crontab -e
```

Add this line:
```
* * * * * cd /path/to/SamuelYakah && php artisan schedule:run >> /dev/null 2>&1
```

### 9. Queue Worker (For background jobs)

Create systemd service `/etc/systemd/system/laravel-worker.service`:
```ini
[Unit]
Description=Laravel Queue Worker
After=network.target

[Service]
User=www-data
Group=www-data
Restart=always
ExecStart=/usr/bin/php /path/to/SamuelYakah/artisan queue:work database --sleep=3 --tries=3 --max-time=3600

[Install]
WantedBy=multi-user.target
```

Enable and start:
```bash
sudo systemctl enable laravel-worker
sudo systemctl start laravel-worker
```

## 🔒 Security Checklist

- [ ] Set `APP_DEBUG=false`
- [ ] Set `APP_ENV=production`
- [ ] Enable HTTPS/SSL
- [ ] Set strong `APP_KEY`
- [ ] Use secure database password
- [ ] Enable `SESSION_ENCRYPT=true`
- [ ] Set `SESSION_SECURE_COOKIE=true`
- [ ] Configure firewall (UFW or similar)
- [ ] Keep Laravel and dependencies updated
- [ ] Disable directory listing
- [ ] Set up regular backups

## 📧 Admin Email Settings

After deployment, log into admin panel:
1. Go to **Email Settings** in the admin menu
2. Set your admin email address
3. Configure notification preferences
4. Test email by submitting a job application

## 🚀 Performance Optimization

### Redis Setup (Recommended for production)

```bash
# Install Redis
sudo apt install redis-server

# Start Redis
sudo systemctl enable redis-server
sudo systemctl start redis-server
```

Update `.env`:
```env
CACHE_STORE=redis
SESSION_DRIVER=redis
QUEUE_CONNECTION=redis
```

### Database Optimization

```sql
-- Add indexes for better performance
ALTER TABLE settings ADD INDEX idx_key (key);
ALTER TABLE settings ADD INDEX idx_group (group);
ALTER TABLE news_articles ADD INDEX idx_published (is_published);
```

## 📊 Monitoring & Maintenance

### Logs
- Application logs: `storage/logs/laravel.log`
- Web server logs: `/var/log/nginx/` or `/var/log/apache2/`

### Regular Maintenance
```bash
# Clear caches when updating
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

# Then rebuild
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

### Backups
Set up automated database backups:
```bash
# Example backup script
#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
mysqldump -u username -p database_name > /backups/db_backup_$DATE.sql
```

## 🆘 Troubleshooting

### Issue: 500 Error
```bash
# Check logs
tail -f storage/logs/laravel.log

# Clear and rebuild caches
php artisan optimize:clear
php artisan optimize
```

### Issue: Email not sending
1. Check `.env` SMTP settings
2. Test connection: `php artisan tinker` then `Mail::raw('Test', function($msg) { $msg->to('test@example.com'); });`
3. Check Laravel logs

### Issue: Slow performance
1. Enable Redis caching
2. Enable OPcache in PHP
3. Optimize images
4. Use CDN for static assets

## 📞 Support

For issues, check:
- Laravel documentation: https://laravel.com/docs
- Application logs: `storage/logs/`
- Web server error logs

---

**Deployment Date:** _________________
**Deployed By:** _________________
**Server:** _________________
