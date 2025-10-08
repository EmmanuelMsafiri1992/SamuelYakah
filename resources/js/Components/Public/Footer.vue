<script setup>
import { Link } from '@inertiajs/vue3';
import { computed } from 'vue';

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

const currentYear = new Date().getFullYear();

// Helper function to get setting value based on current locale
const getSetting = (key, defaultValue = '') => {
    if (!props.settings || !props.settings[key]) {
        return defaultValue;
    }

    const valueKey = `value_${props.currentLocale}`;
    return props.settings[key][valueKey] || props.settings[key].value_en || defaultValue;
};

const footerLinks = computed(() => ({
    quickLinks: [
        { name: getSetting('footer_link_browse_jobs', 'Browse Jobs'), href: '#jobs' },
        { name: getSetting('footer_link_apply_now', 'Apply Now'), href: route('job-applications.create') },
        { name: getSetting('footer_link_training', 'Training'), href: '#training' },
        { name: getSetting('footer_link_faqs', 'FAQs'), href: '#faqs' },
        { name: getSetting('footer_link_contact', 'Contact'), href: '#contact' }
    ]
}));

const socialLinks = computed(() => [
    {
        name: 'Facebook',
        icon: 'facebook',
        href: getSetting('footer_social_facebook', 'https://facebook.com'),
        color: 'hover:bg-[#1877F2]'
    },
    {
        name: 'Twitter',
        icon: 'twitter',
        href: getSetting('footer_social_twitter', 'https://twitter.com'),
        color: 'hover:bg-[#1DA1F2]'
    },
    {
        name: 'LinkedIn',
        icon: 'linkedin',
        href: getSetting('footer_social_linkedin', 'https://linkedin.com'),
        color: 'hover:bg-[#0A66C2]'
    },
    {
        name: 'Instagram',
        icon: 'instagram',
        href: getSetting('footer_social_instagram', 'https://instagram.com'),
        color: 'hover:bg-gradient-to-br hover:from-[#833AB4] hover:via-[#FD1D1D] hover:to-[#FCB045]'
    }
]);
</script>

<template>
    <footer class="bg-gradient-to-b from-gray-900 to-gray-950 text-white">
        <!-- Main Footer Content -->
        <div class="container mx-auto px-4 sm:px-6 lg:px-8 py-12 lg:py-16">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 lg:gap-12">
                <!-- About Us Section -->
                <div class="space-y-4">
                    <div class="flex items-center space-x-3 mb-6">
                        <div class="relative w-10 h-10">
                            <div class="absolute inset-0 bg-gradient-to-br from-[#4FE1D6] to-[#2563eb] rounded-lg flex items-center justify-center shadow-lg">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 2C10.35 2 9 3.35 9 5C9 5.37 9.07 5.72 9.18 6.05C7.95 6.3 7 7.35 7 8.61V11.44C6.4 11.81 6 12.44 6 13.16V19C6 20.66 7.34 22 9 22H15C16.66 22 18 20.66 18 19V13.16C18 12.44 17.6 11.81 17 11.44V8.61C17 7.35 16.05 6.3 14.82 6.05C14.93 5.72 15 5.37 15 5C15 3.35 13.65 2 12 2M12 4C12.55 4 13 4.45 13 5C13 5.55 12.55 6 12 6C11.45 6 11 5.55 11 5C11 4.45 11.45 4 12 4M9 8C9 7.45 9.45 7 10 7H14C14.55 7 15 7.45 15 8V11H9V8M8 13H16V19C16 19.55 15.55 20 15 20H9C8.45 20 8 19.55 8 19V13Z"/>
                                    <path d="M4 7C3.45 7 3 7.45 3 8V12C3 12.55 3.45 13 4 13C4.55 13 5 12.55 5 12V8C5 7.45 4.55 7 4 7M20 7C19.45 7 19 7.45 19 8V12C19 12.55 19.45 13 20 13C20.55 13 21 12.55 21 12V8C21 7.45 20.55 7 20 7Z"/>
                                </svg>
                            </div>
                        </div>
                        <h3 class="text-lg font-bold bg-gradient-to-r from-[#4FE1D6] to-[#2563eb] bg-clip-text text-transparent">Sunrise & Sunset Home Care</h3>
                    </div>
                    <h4 class="text-white font-semibold text-lg">{{ getSetting('footer_about_heading', 'About Us') }}</h4>
                    <p class="text-gray-400 text-sm leading-relaxed">
                        {{ getSetting('footer_about_description', 'Sunrise & Sunset Home Care is dedicated to connecting compassionate caregivers with families who need quality live-in care. We\'re committed to building rewarding careers while providing exceptional care services.') }}
                    </p>
                    <!-- CQC Registered Badge -->
                    <div class="flex items-center space-x-2 pt-2">
                        <div class="bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] rounded-lg px-3 py-2 flex items-center space-x-2">
                            <svg class="w-5 h-5 text-white" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M12 1L3 5v6c0 5.55 3.84 10.74 9 12 5.16-1.26 9-6.45 9-12V5l-9-4zm0 10.99h7c-.53 4.12-3.28 7.79-7 8.94V12H5V6.3l7-3.11v8.8z"/>
                            </svg>
                            <span class="text-white text-xs font-semibold">{{ getSetting('footer_cqc_badge', 'CQC Registered') }}</span>
                        </div>
                    </div>
                </div>

                <!-- Quick Links Section -->
                <div>
                    <h4 class="text-white font-semibold text-lg mb-6">{{ getSetting('footer_links_heading', 'Quick Links') }}</h4>
                    <ul class="space-y-3">
                        <li v-for="link in footerLinks.quickLinks" :key="link.name">
                            <a
                                :href="link.href"
                                class="text-gray-400 hover:text-[#4FE1D6] transition-colors text-sm flex items-center group"
                            >
                                <svg class="w-4 h-4 mr-2 transform group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/>
                                </svg>
                                {{ link.name }}
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Contact Info Section -->
                <div>
                    <h4 class="text-white font-semibold text-lg mb-6">{{ getSetting('footer_contact_heading', 'Contact Info') }}</h4>
                    <ul class="space-y-4 text-sm">
                        <!-- Address -->
                        <li class="flex items-start space-x-3 text-gray-400">
                            <svg class="w-5 h-5 text-[#4FE1D6] mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                            </svg>
                            <span>{{ getSetting('footer_contact_address', '123 Care Street, London, UK, SW1A 1AA') }}</span>
                        </li>
                        <!-- Phone -->
                        <li class="flex items-start space-x-3">
                            <svg class="w-5 h-5 text-[#4FE1D6] mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                            </svg>
                            <a :href="'tel:' + getSetting('footer_contact_phone', '+442032391227').replace(/\s/g, '')" class="text-gray-400 hover:text-[#4FE1D6] transition-colors">
                                {{ getSetting('footer_contact_phone', '+44 20 3239 1227') }}
                            </a>
                        </li>
                        <!-- Email -->
                        <li class="flex items-start space-x-3">
                            <svg class="w-5 h-5 text-[#4FE1D6] mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                            </svg>
                            <a :href="'mailto:' + getSetting('footer_contact_email', 'info@helpinghandscare.co.uk')" class="text-gray-400 hover:text-[#4FE1D6] transition-colors break-all">
                                {{ getSetting('footer_contact_email', 'info@helpinghandscare.co.uk') }}
                            </a>
                        </li>
                        <!-- WhatsApp -->
                        <li class="flex items-start space-x-3">
                            <svg class="w-5 h-5 text-[#4FE1D6] mt-0.5 flex-shrink-0" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.890-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/>
                            </svg>
                            <a :href="'https://wa.me/' + getSetting('footer_contact_whatsapp', '442032391227').replace(/\s/g, '')" target="_blank" class="text-gray-400 hover:text-[#4FE1D6] transition-colors">
                                {{ getSetting('footer_contact_whatsapp_label', 'WhatsApp') }}: {{ getSetting('footer_contact_whatsapp', '+44 20 3239 1227') }}
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Follow Us Section -->
                <div>
                    <h4 class="text-white font-semibold text-lg mb-6">{{ getSetting('footer_social_heading', 'Follow Us') }}</h4>
                    <p class="text-gray-400 text-sm mb-4">{{ getSetting('footer_social_description', 'Connect with us on social media for updates and opportunities') }}</p>
                    <div class="flex flex-wrap gap-3">
                        <a
                            v-for="social in socialLinks"
                            :key="social.name"
                            :href="social.href"
                            target="_blank"
                            rel="noopener noreferrer"
                            :aria-label="social.name"
                            :class="social.color"
                            class="w-11 h-11 bg-gray-800 rounded-lg flex items-center justify-center transition-all duration-300 transform hover:scale-110 hover:shadow-lg"
                        >
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                                <path v-if="social.icon === 'facebook'" d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                                <path v-else-if="social.icon === 'twitter'" d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/>
                                <path v-else-if="social.icon === 'linkedin'" d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                                <path v-else-if="social.icon === 'instagram'" d="M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717 1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335 1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.319 1.347 20.651.935 19.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074 4.85c-.061 1.17-.256 1.805-.421 2.227-.224.562-.479.96-.899 1.382-.419.419-.824.679-1.38.896-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211 0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421-.569-.224-.96-.479-1.379-.899-.421-.419-.69-.824-.9-1.38-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421 1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678c-3.405 0-6.162 2.76-6.162 6.162 0 3.405 2.76 6.162 6.162 6.162 3.405 0 6.162-2.76 6.162-6.162 0-3.405-2.76-6.162-6.162-6.162zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405c0 .795-.646 1.44-1.44 1.44-.795 0-1.44-.646-1.44-1.44 0-.794.646-1.439 1.44-1.439.793-.001 1.44.645 1.44 1.439z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Bar -->
        <div class="border-t border-gray-800">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 py-6">
                <div class="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
                    <div class="text-gray-400 text-sm text-center md:text-left">
                        <p>&copy; {{ currentYear }} {{ getSetting('footer_copyright', 'Sunrise & Sunset Home Care. All rights reserved.') }}</p>
                    </div>

                    <div class="flex flex-wrap justify-center gap-6 text-sm">
                        <a href="#terms" class="text-gray-400 hover:text-[#4FE1D6] transition-colors">
                            {{ getSetting('footer_legal_terms', 'Terms & Conditions') }}
                        </a>
                        <span class="text-gray-600">|</span>
                        <a href="#privacy" class="text-gray-400 hover:text-[#4FE1D6] transition-colors">
                            {{ getSetting('footer_legal_privacy', 'Privacy Policy') }}
                        </a>
                        <span class="text-gray-600">|</span>
                        <a href="#cookies" class="text-gray-400 hover:text-[#4FE1D6] transition-colors">
                            {{ getSetting('footer_legal_cookies', 'Cookie Policy') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>
