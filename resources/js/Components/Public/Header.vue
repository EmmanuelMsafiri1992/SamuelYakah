<script setup>
import { ref, onMounted, onUnmounted } from 'vue';
import { Link } from '@inertiajs/vue3';
import LanguageSwitcher from '@/Components/LanguageSwitcher.vue';

const props = defineProps({
    settings: {
        type: Object,
        default: () => ({})
    },
    currentLocale: {
        type: String,
        default: 'en'
    }
});

const mobileMenuOpen = ref(false);
const isScrolled = ref(false);

const toggleMobileMenu = () => {
    mobileMenuOpen.value = !mobileMenuOpen.value;
};

const handleScroll = () => {
    isScrolled.value = window.scrollY > 10;
};

onMounted(() => {
    window.addEventListener('scroll', handleScroll);
});

onUnmounted(() => {
    window.removeEventListener('scroll', handleScroll);
});

const navigationItems = [
    { name: 'Home', href: '#home' },
    { name: 'Why Us', href: '#why-us' },
    { name: 'Duties', href: '#duties' },
    { name: 'Training', href: '#training' },
    { name: 'FAQs', href: '#faqs' },
    { name: 'Contact', href: '#contact' }
];
</script>

<template>
    <header
        class="bg-white sticky top-0 z-50 transition-shadow duration-300"
        :class="{ 'shadow-lg': isScrolled, 'shadow-md': !isScrolled }"
    >
        <div class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-4">
                <!-- Logo -->
                <div class="flex items-center">
                    <Link href="/" class="flex items-center space-x-3">
                        <!-- Helping Hands Icon -->
                        <div class="relative w-12 h-12">
                            <div class="absolute inset-0 bg-gradient-to-br from-[#4FE1D6] to-[#2563eb] rounded-lg flex items-center justify-center shadow-md">
                                <svg class="w-7 h-7 text-white" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 2C10.35 2 9 3.35 9 5C9 5.37 9.07 5.72 9.18 6.05C7.95 6.3 7 7.35 7 8.61V11.44C6.4 11.81 6 12.44 6 13.16V19C6 20.66 7.34 22 9 22H15C16.66 22 18 20.66 18 19V13.16C18 12.44 17.6 11.81 17 11.44V8.61C17 7.35 16.05 6.3 14.82 6.05C14.93 5.72 15 5.37 15 5C15 3.35 13.65 2 12 2M12 4C12.55 4 13 4.45 13 5C13 5.55 12.55 6 12 6C11.45 6 11 5.55 11 5C11 4.45 11.45 4 12 4M9 8C9 7.45 9.45 7 10 7H14C14.55 7 15 7.45 15 8V11H9V8M8 13H16V19C16 19.55 15.55 20 15 20H9C8.45 20 8 19.55 8 19V13Z"/>
                                    <path d="M4 7C3.45 7 3 7.45 3 8V12C3 12.55 3.45 13 4 13C4.55 13 5 12.55 5 12V8C5 7.45 4.55 7 4 7M20 7C19.45 7 19 7.45 19 8V12C19 12.55 19.45 13 20 13C20.55 13 21 12.55 21 12V8C21 7.45 20.55 7 20 7Z"/>
                                </svg>
                            </div>
                        </div>
                        <div class="hidden sm:block">
                            <h1 class="text-xl font-bold bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] bg-clip-text text-transparent">Helping Hands</h1>
                            <p class="text-xs text-gray-600">Care with Compassion</p>
                        </div>
                    </Link>
                </div>

                <!-- Desktop Navigation -->
                <nav class="hidden lg:flex items-center space-x-6">
                    <a
                        v-for="item in navigationItems"
                        :key="item.name"
                        :href="item.href"
                        class="text-gray-700 hover:text-[#2563eb] font-medium transition-colors duration-200 relative group"
                    >
                        {{ item.name }}
                        <span class="absolute bottom-0 left-0 w-0 h-0.5 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] group-hover:w-full transition-all duration-300"></span>
                    </a>
                </nav>

                <!-- Right Side - Phone, Language Switcher & CTA -->
                <div class="flex items-center space-x-4">
                    <!-- Phone Number (Desktop) -->
                    <a
                        href="tel:+442032391227"
                        class="hidden xl:flex items-center space-x-2 text-gray-700 hover:text-[#2563eb] transition-colors duration-200"
                    >
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                        </svg>
                        <span class="font-semibold">+44 20 3239 1227</span>
                    </a>

                    <!-- Language Switcher -->
                    <LanguageSwitcher :currentLocale="currentLocale" />

                    <!-- Apply Now Button -->
                    <Link
                        :href="route('job-applications.create')"
                        class="hidden md:inline-flex items-center px-6 py-2.5 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] hover:from-[#1e40af] hover:to-[#3dccc1] text-white font-semibold rounded-lg transition-all duration-200 shadow-md hover:shadow-lg transform hover:-translate-y-0.5"
                    >
                        Apply Now
                    </Link>

                    <!-- Mobile Menu Button -->
                    <button
                        @click="toggleMobileMenu"
                        class="lg:hidden p-2 rounded-lg hover:bg-gray-100 transition-colors"
                        aria-label="Toggle mobile menu"
                    >
                        <svg
                            class="w-6 h-6 text-gray-700"
                            fill="none"
                            stroke="currentColor"
                            viewBox="0 0 24 24"
                        >
                            <path
                                v-if="!mobileMenuOpen"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M4 6h16M4 12h16M4 18h16"
                            />
                            <path
                                v-else
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M6 18L18 6M6 6l12 12"
                            />
                        </svg>
                    </button>
                </div>
            </div>

            <!-- Mobile Menu -->
            <div
                v-show="mobileMenuOpen"
                class="lg:hidden border-t border-gray-200 py-4 animate-fade-in"
            >
                <nav class="flex flex-col space-y-2">
                    <a
                        v-for="item in navigationItems"
                        :key="item.name"
                        :href="item.href"
                        @click="mobileMenuOpen = false"
                        class="text-gray-700 hover:text-[#2563eb] hover:bg-gradient-to-r hover:from-[#4FE1D6]/10 hover:to-[#2563eb]/10 font-medium transition-all duration-200 px-4 py-3 rounded-lg"
                    >
                        {{ item.name }}
                    </a>

                    <!-- Phone Number (Mobile) -->
                    <a
                        href="tel:+442032391227"
                        class="flex items-center space-x-2 text-gray-700 hover:text-[#2563eb] font-medium px-4 py-3 rounded-lg hover:bg-gradient-to-r hover:from-[#4FE1D6]/10 hover:to-[#2563eb]/10 transition-all duration-200"
                        @click="mobileMenuOpen = false"
                    >
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                        </svg>
                        <span>+44 20 3239 1227</span>
                    </a>

                    <Link
                        :href="route('job-applications.create')"
                        class="mx-4 text-center px-6 py-3 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] hover:from-[#1e40af] hover:to-[#3dccc1] text-white font-semibold rounded-lg transition-all duration-200 shadow-md"
                        @click="mobileMenuOpen = false"
                    >
                        Apply Now
                    </Link>
                </nav>
            </div>
        </div>
    </header>
</template>
