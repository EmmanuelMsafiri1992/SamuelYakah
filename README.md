# Sunrise & Sunset Home Care - Website

A professional, multilingual home care website built with Laravel 12, Inertia.js, and Vue 3.

## 🌟 Features

### Public Website
- **Modern, Professional Design** - Blue/teal color scheme (#4FE1D6, #2563eb)
- **Bilingual Support** - Full English and Polish language support
- **Responsive Design** - Mobile-first approach, works on all devices
- **Comprehensive Sections**:
  - Hero section with compelling CTAs
  - Job search functionality
  - Why Choose Violetta Home Care Limited (Benefits)
  - Role & Responsibilities
  - Training & Development programs
  - Success Stories/Testimonials
  - FAQ Accordion
  - Application Process timeline
  - Latest News/Resources
  - Application form with CV upload

### Admin Dashboard
- **Full CMS Functionality** - Manage all website content
- **CRUD Operations** for:
  - Sections (with translations)
  - FAQs
  - Benefits
  - Training Modules
  - Job Applications (with search/filter)
  - Settings
- **Dashboard** with statistics and recent applications
- **Secure Authentication** - Laravel Breeze with Inertia.js

### Technical Features
- Laravel 12 backend
- Vue.js 3 with Composition API
- Inertia.js for SPA functionality
- Tailwind CSS for styling
- File upload support for CVs
- Language switching middleware
- Database migrations and seeders
- Form validation
- Responsive admin panel

## 📋 Requirements

- PHP 8.2 or higher
- Composer
- Node.js 18+ and NPM
- MySQL 8.0 or higher (or compatible database)
- Laragon/XAMPP/WAMP or similar local server

## 🚀 Installation

### 1. Navigate to Project
```bash
cd C:\laragon\www\Samuel\live-in-care-jobs
```

### 2. Configure Environment
```bash
# Copy the example environment file (if needed)
copy .env.example .env

# Generate application key (if needed)
php artisan key:generate
```

### 3. Configure Database
Edit `.env` file and update database credentials:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=helping_hands
DB_USERNAME=root
DB_PASSWORD=
```

Create the database in MySQL:
```sql
CREATE DATABASE helping_hands CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 4. Run Migrations and Seeders
```bash
php artisan migrate:fresh --seed
```

This will create all tables and populate them with sample data including admin user, sections, FAQs, benefits, training modules, and settings.

### 5. Create Storage Link
```bash
php artisan storage:link
```

### 6. Start Development Server
```bash
php artisan serve
```

Visit: http://localhost:8000

## 👤 Default Admin Credentials

- **Email**: admin@example.com
- **Password**: password

**⚠️ Important**: Change these credentials after first login!

## 🎨 Design & Branding

### Color Scheme
- **Primary Teal**: #4FE1D6
- **Primary Blue**: #2563eb
- **Dark Background**: #111827, #1f2937
- **White/Light**: #ffffff, #f9fafb

### Logo
- Violetta Home Care Limited icon (two hands together)
- Gradient effect (blue to teal)
- Tagline: "Compassionate Care, Rewarding Careers"

## 🌐 Language Support

The website supports English (EN) and Polish (PL):
- Use the language switcher in the header
- Language preference stored in session
- URL parameter: `?lang=en` or `?lang=pl`

## 🎯 Key Routes

### Public Routes
- `/` - Home page
- `/apply` - Job application form
- `/language/switch` - Language switcher (POST)

### Admin Routes (requires auth)
- `/admin/dashboard` - Dashboard
- `/admin/sections` - Sections management
- `/admin/faqs` - FAQs management
- `/admin/benefits` - Benefits management
- `/admin/training-modules` - Training management
- `/admin/job-applications` - Applications management
- `/admin/settings` - Settings management

## 🛠️ Development

### Running Dev Server
```bash
# Terminal 1 - Laravel
php artisan serve

# Terminal 2 - Vite (Hot reload)
npm run dev
```

### Building for Production
```bash
npm run build
php artisan optimize
```

## 📄 License

This project is proprietary software for Violetta Home Care Limited.

---

**Built with ❤️ for Violetta Home Care Limited - Compassionate Care, Rewarding Careers**
