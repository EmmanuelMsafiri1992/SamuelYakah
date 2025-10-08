#!/bin/bash

# Sunrise & Sunset Home Care - Production Deployment Script

echo "🚀 Starting deployment..."

# Enable maintenance mode
php artisan down

echo "📦 Installing dependencies..."
composer install --optimize-autoloader --no-dev
npm install
npm run build

echo "🔄 Running migrations..."
php artisan migrate --force

echo "⚡ Optimizing application..."
php artisan config:cache
php artisan route:cache
php artisan view:cache
php artisan optimize

echo "🔗 Creating storage link..."
php artisan storage:link

echo "🧹 Clearing old caches..."
php artisan cache:clear

echo "✅ Deployment complete!"

# Disable maintenance mode
php artisan up

echo "🎉 Application is now live!"
