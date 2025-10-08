<script setup>
import { ref, onMounted, onUnmounted, watch, computed } from 'vue';
import { Link } from '@inertiajs/vue3';
import LanguageSwitcher from '@/Components/LanguageSwitcher.vue';

const props = defineProps({
    settings: {
        type: Object,
        default: () => ({})
    },
    currentLocale: {
        type: String,
        default: 'pl'
    }
});

// Helper function to get setting value based on current locale
const getSetting = (key, defaultValue = '') => {
    if (!props.settings || !props.settings[key]) {
        return defaultValue;
    }

    const valueKey = `value_${props.currentLocale}`;
    return props.settings[key][valueKey] || props.settings[key].value_en || defaultValue;
};

const mobileMenuOpen = ref(false);
const isScrolled = ref(false);

const toggleMobileMenu = () => {
    mobileMenuOpen.value = !mobileMenuOpen.value;
};

const handleScroll = () => {
    isScrolled.value = window.scrollY > 10;
};

// Prevent body scroll when menu is open
watch(mobileMenuOpen, (isOpen) => {
    if (isOpen) {
        document.body.style.overflow = 'hidden';
    } else {
        document.body.style.overflow = '';
    }
});

onMounted(() => {
    window.addEventListener('scroll', handleScroll);
});

onUnmounted(() => {
    window.removeEventListener('scroll', handleScroll);
    document.body.style.overflow = '';
});

const navigationItems = computed(() => [
    { name: getSetting('menu_home', 'Home'), href: '/' },
    { name: getSetting('menu_live_in_care', 'Live-in Care'), href: '/live-in-care' },
    { name: getSetting('menu_care_funding', 'Care Funding'), href: '/care-funding' },
    { name: getSetting('menu_resources', 'Resources'), href: '/resources' },
    { name: getSetting('menu_careers', 'Careers'), href: '/careers' },
    { name: getSetting('menu_news', 'News'), href: '/news' },
    { name: getSetting('menu_contact', 'Contact'), href: '/contact' }
]);
</script>

<template>
    <header
        class="bg-white sticky top-0 z-50 transition-shadow duration-300"
        :class="{ 'shadow-lg': isScrolled, 'shadow-md': !isScrolled }"
    >
        <div class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-3 sm:py-4 gap-2 sm:gap-4">
                <!-- Logo -->
                <div class="flex items-center flex-shrink-0">
                    <Link href="/" class="flex items-center space-x-2 sm:space-x-3">
                        <!-- Sunrise & Sunset Home Care Icon -->
                        <div class="relative w-10 h-10 sm:w-12 sm:h-12 flex-shrink-0">
                            <div class="absolute inset-0 bg-gradient-to-br from-[#4FE1D6] to-[#2563eb] rounded-lg flex items-center justify-center shadow-md">
                                <svg class="w-6 h-6 sm:w-7 sm:h-7 text-white" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 2C10.35 2 9 3.35 9 5C9 5.37 9.07 5.72 9.18 6.05C7.95 6.3 7 7.35 7 8.61V11.44C6.4 11.81 6 12.44 6 13.16V19C6 20.66 7.34 22 9 22H15C16.66 22 18 20.66 18 19V13.16C18 12.44 17.6 11.81 17 11.44V8.61C17 7.35 16.05 6.3 14.82 6.05C14.93 5.72 15 5.37 15 5C15 3.35 13.65 2 12 2M12 4C12.55 4 13 4.45 13 5C13 5.55 12.55 6 12 6C11.45 6 11 5.55 11 5C11 4.45 11.45 4 12 4M9 8C9 7.45 9.45 7 10 7H14C14.55 7 15 7.45 15 8V11H9V8M8 13H16V19C16 19.55 15.55 20 15 20H9C8.45 20 8 19.55 8 19V13Z"/>
                                    <path d="M4 7C3.45 7 3 7.45 3 8V12C3 12.55 3.45 13 4 13C4.55 13 5 12.55 5 12V8C5 7.45 4.55 7 4 7M20 7C19.45 7 19 7.45 19 8V12C19 12.55 19.45 13 20 13C20.55 13 21 12.55 21 12V8C21 7.45 20.55 7 20 7Z"/>
                                </svg>
                            </div>
                        </div>
                        <div class="hidden sm:block">
                            <h1 class="text-xl font-bold bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] bg-clip-text text-transparent">{{ getSetting('site_name', 'Sunrise & Sunset Home Care') }}</h1>
                            <p class="text-xs text-gray-600">{{ getSetting('site_tagline', 'Care with Compassion') }}</p>
                        </div>
                    </Link>
                </div>

                <!-- Right Side - Phone, Company Name (mobile), Language & Menu Button -->
                <div class="flex items-center gap-2 sm:gap-4">
                    <!-- Phone Number (desktop) -->
                    <div class="hidden lg:block text-right">
                        <p class="text-xs text-gray-600 mb-0.5">{{ getSetting('header_phone_text', 'Call our friendly team today on') }}</p>
                        <a
                            :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')"
                            class="text-2xl font-bold text-[#2563eb] hover:text-[#1e40af] transition-colors duration-200 tracking-tight"
                        >
                            {{ getSetting('contact_phone', '+44 20 3239 1227') }}
                        </a>
                    </div>

                    <!-- Admin Login Button -->
                    <Link
                        href="/login"
                        class="hidden xl:flex items-center space-x-2 px-4 py-2 border-2 border-[#2563eb] text-[#2563eb] hover:bg-[#2563eb] hover:text-white font-semibold rounded-full transition-all duration-200"
                    >
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1" />
                        </svg>
                        <span>{{ getSetting('header_login_text', 'Login') }}</span>
                    </Link>

                    <!-- Company Name (mobile - before menu) -->
                    <div class="sm:hidden flex-1 min-w-0 px-1">
                        <h1 class="text-[10px] leading-tight font-bold bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] bg-clip-text text-transparent">
                            <span class="inline-block">Sunrise & Sunset</span>
                            <span class="inline-block whitespace-nowrap">Home Care</span>
                        </h1>
                    </div>

                    <!-- Language Switcher -->
                    <LanguageSwitcher :currentLocale="currentLocale" class="flex-shrink-0" />

                    <!-- Menu Button -->
                    <button
                        @click="toggleMobileMenu"
                        class="flex items-center space-x-1.5 sm:space-x-2 px-3 py-2 sm:px-6 sm:py-3 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] hover:from-[#1e40af] hover:to-[#3dccc1] text-white font-semibold rounded-full transition-all duration-200 shadow-lg hover:shadow-xl flex-shrink-0"
                        aria-label="Toggle menu"
                    >
                        <span class="text-xs sm:text-base">{{ getSetting('menu_button_text', 'Menu') }}</span>
                        <svg
                            class="w-4 h-4 sm:w-5 sm:h-5"
                            fill="none"
                            stroke="currentColor"
                            viewBox="0 0 24 24"
                        >
                            <path
                                v-if="!mobileMenuOpen"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2.5"
                                d="M4 6h16M4 12h16M4 18h16"
                            />
                            <path
                                v-else
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2.5"
                                d="M6 18L18 6M6 6l12 12"
                            />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- Full Screen Menu Overlay -->
    <Transition
        enter-active-class="transition-opacity duration-300"
        enter-from-class="opacity-0"
        enter-to-class="opacity-100"
        leave-active-class="transition-opacity duration-300"
        leave-from-class="opacity-100"
        leave-to-class="opacity-0"
    >
        <div
            v-if="mobileMenuOpen"
            class="fixed inset-0 z-[60] bg-[#F5F0EB] overflow-y-auto"
        >
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <!-- Header in Menu -->
                <div class="flex justify-between items-center py-3 sm:py-4 gap-2">
                    <!-- Logo -->
                    <Link href="/" @click="mobileMenuOpen = false" class="flex items-center space-x-2 sm:space-x-3 flex-shrink-0">
                        <div class="relative w-10 h-10 sm:w-12 sm:h-12 flex-shrink-0">
                            <div class="absolute inset-0 bg-gradient-to-br from-[#4FE1D6] to-[#2563eb] rounded-lg flex items-center justify-center shadow-md">
                                <svg class="w-6 h-6 sm:w-7 sm:h-7 text-white" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 2C10.35 2 9 3.35 9 5C9 5.37 9.07 5.72 9.18 6.05C7.95 6.3 7 7.35 7 8.61V11.44C6.4 11.81 6 12.44 6 13.16V19C6 20.66 7.34 22 9 22H15C16.66 22 18 20.66 18 19V13.16C18 12.44 17.6 11.81 17 11.44V8.61C17 7.35 16.05 6.3 14.82 6.05C14.93 5.72 15 5.37 15 5C15 3.35 13.65 2 12 2M12 4C12.55 4 13 4.45 13 5C13 5.55 12.55 6 12 6C11.45 6 11 5.55 11 5C11 4.45 11.45 4 12 4M9 8C9 7.45 9.45 7 10 7H14C14.55 7 15 7.45 15 8V11H9V8M8 13H16V19C16 19.55 15.55 20 15 20H9C8.45 20 8 19.55 8 19V13Z"/>
                                    <path d="M4 7C3.45 7 3 7.45 3 8V12C3 12.55 3.45 13 4 13C4.55 13 5 12.55 5 12V8C5 7.45 4.55 7 4 7M20 7C19.45 7 19 7.45 19 8V12C19 12.55 19.45 13 20 13C20.55 13 21 12.55 21 12V8C21 7.45 20.55 7 20 7Z"/>
                                </svg>
                            </div>
                        </div>
                        <div class="min-w-0 flex-1 px-1">
                            <h1 class="text-[10px] leading-tight sm:text-lg font-bold bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] bg-clip-text text-transparent">
                                <span class="inline-block">Sunrise & Sunset</span>
                                <span class="inline-block whitespace-nowrap">Home Care</span>
                            </h1>
                        </div>
                    </Link>

                    <!-- Close Button -->
                    <button
                        @click="toggleMobileMenu"
                        class="flex items-center space-x-1.5 sm:space-x-2 px-3 py-2 sm:px-6 sm:py-3 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] hover:from-[#1e40af] hover:to-[#3dccc1] text-white font-semibold rounded-full transition-all duration-200 shadow-lg flex-shrink-0"
                        aria-label="Close menu"
                    >
                        <svg class="w-4 h-4 sm:w-5 sm:h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                    </button>
                </div>

                <!-- Menu Items -->
                <nav class="flex flex-col items-start justify-center min-h-[60vh] space-y-2 py-8">
                    <Link
                        v-for="item in navigationItems"
                        :key="item.name"
                        :href="item.href"
                        @click="mobileMenuOpen = false"
                        class="text-5xl sm:text-6xl lg:text-7xl font-bold bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] bg-clip-text text-transparent hover:from-[#1e40af] hover:to-[#3dccc1] transition-all duration-200 py-2"
                    >
                        {{ item.name }}
                    </Link>
                </nav>
            </div>
        </div>
    </Transition>
</template>
