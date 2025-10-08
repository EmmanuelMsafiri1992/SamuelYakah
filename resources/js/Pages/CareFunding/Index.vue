<script setup>
import { Head } from '@inertiajs/vue3';
import PublicLayout from '@/Layouts/PublicLayout.vue';

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

// Helper function to get setting value based on current locale
const getSetting = (key, defaultValue = '') => {
    if (!props.settings || !props.settings[key]) {
        return defaultValue;
    }

    const valueKey = `value_${props.currentLocale}`;
    return props.settings[key][valueKey] || props.settings[key].value_en || defaultValue;
};
</script>

<template>
    <Head title="Care Funding Options - Sunrise & Sunset Home Care" />

    <PublicLayout :settings="settings" :currentLocale="currentLocale">
        <!-- Hero Section -->
        <section class="relative py-20 overflow-hidden">
            <!-- Background Image -->
            <div class="absolute inset-0">
                <img
                    src="/images/home-care.jpg"
                    alt="Care Funding"
                    class="w-full h-full object-cover"
                />
                <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
            </div>

            <!-- Content -->
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 text-white">
                        {{ getSetting('carefunding_hero_title', 'Care Funding Options') }}
                    </h1>
                    <p class="text-xl text-white/95 mb-8">
                        {{ getSetting('carefunding_hero_subtitle', 'Understanding how to fund your care - we\'re here to help you navigate the options') }}
                    </p>
                </div>
            </div>
        </section>

        <!-- Introduction Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">{{ getSetting('carefunding_intro_title', 'How to Fund Your Care') }}</h2>
                    <p class="text-lg text-gray-700 mb-6">
                        {{ getSetting('carefunding_intro_desc1', 'Funding care can seem complex, but we\'re here to guide you through the various options available. Whether you\'re considering self-funding, local authority support, or NHS Continuing Healthcare, we\'ll help you understand what\'s available to you.') }}
                    </p>
                    <p class="text-lg text-gray-700">
                        {{ getSetting('carefunding_intro_desc2', 'Our team can provide guidance on the most suitable funding routes based on your individual circumstances and care needs.') }}
                    </p>
                </div>
            </div>
        </section>

        <!-- Funding Options Section -->
        <section class="py-16 bg-gray-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-5xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-12 text-gray-900 text-center">{{ getSetting('carefunding_options_title', 'Funding Options Available') }}</h2>

                    <div class="space-y-8">
                        <!-- Self Funding -->
                        <div class="bg-white p-8 rounded-xl shadow-md">
                            <div class="flex items-start space-x-4">
                                <div class="flex-shrink-0">
                                    <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1">
                                    <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ getSetting('carefunding_self_title', 'Self-Funding') }}</h3>
                                    <p class="text-gray-700 mb-4">
                                        {{ getSetting('carefunding_self_desc1', 'Many people choose to pay for their own care privately. This gives you complete control over your care choices and the flexibility to arrange services that perfectly match your needs and preferences.') }}
                                    </p>
                                    <p class="text-gray-700">
                                        {{ getSetting('carefunding_self_desc2', 'If you have assets over £23,250, you\'ll likely need to self-fund your care initially. We offer transparent pricing and can provide detailed cost breakdowns to help you plan.') }}
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- Local Authority Funding -->
                        <div class="bg-white p-8 rounded-xl shadow-md">
                            <div class="flex items-start space-x-4">
                                <div class="flex-shrink-0">
                                    <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1">
                                    <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ getSetting('carefunding_local_title', 'Local Authority Support') }}</h3>
                                    <p class="text-gray-700 mb-4">
                                        {{ getSetting('carefunding_local_desc1', 'If your assets are below £23,250, you may be eligible for financial support from your local council. The amount of support depends on your financial assessment and care needs.') }}
                                    </p>
                                    <p class="text-gray-700">
                                        {{ getSetting('carefunding_local_desc2', 'We can guide you through the assessment process and work with your local authority to arrange suitable care packages.') }}
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- NHS Continuing Healthcare -->
                        <div class="bg-white p-8 rounded-xl shadow-md">
                            <div class="flex items-start space-x-4">
                                <div class="flex-shrink-0">
                                    <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1">
                                    <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ getSetting('carefunding_nhs_title', 'NHS Continuing Healthcare') }}</h3>
                                    <p class="text-gray-700 mb-4">
                                        {{ getSetting('carefunding_nhs_desc1', 'If you have complex medical needs, you may qualify for NHS Continuing Healthcare (CHC). This is a package of care arranged and funded solely by the NHS for individuals who have ongoing healthcare needs.') }}
                                    </p>
                                    <p class="text-gray-700">
                                        {{ getSetting('carefunding_nhs_desc2', 'We can support you through the CHC assessment process and provide the necessary documentation to support your application.') }}
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- Other Funding Options -->
                        <div class="bg-white p-8 rounded-xl shadow-md">
                            <div class="flex items-start space-x-4">
                                <div class="flex-shrink-0">
                                    <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1">
                                    <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ getSetting('carefunding_other_title', 'Other Funding Sources') }}</h3>
                                    <p class="text-gray-700 mb-4">
                                        {{ getSetting('carefunding_other_intro', 'Additional funding options may include:') }}
                                    </p>
                                    <ul class="space-y-2 text-gray-700">
                                        <li class="flex items-start">
                                            <svg class="w-5 h-5 text-[#2563eb] mr-2 mt-0.5 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                                            </svg>
                                            {{ getSetting('carefunding_other_deferred', 'Deferred payment agreements') }}
                                        </li>
                                        <li class="flex items-start">
                                            <svg class="w-5 h-5 text-[#2563eb] mr-2 mt-0.5 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                                            </svg>
                                            {{ getSetting('carefunding_other_veterans', 'Veterans\' benefits and support') }}
                                        </li>
                                        <li class="flex items-start">
                                            <svg class="w-5 h-5 text-[#2563eb] mr-2 mt-0.5 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                                            </svg>
                                            {{ getSetting('carefunding_other_attendance', 'Attendance Allowance or Personal Independence Payment') }}
                                        </li>
                                        <li class="flex items-start">
                                            <svg class="w-5 h-5 text-[#2563eb] mr-2 mt-0.5 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                                            </svg>
                                            {{ getSetting('carefunding_other_charity', 'Charity grants and support funds') }}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- How We Can Help Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">{{ getSetting('carefunding_help_title', 'How We Can Help') }}</h2>
                    <div class="space-y-6">
                        <p class="text-lg text-gray-700">
                            {{ getSetting('carefunding_help_intro', 'Our experienced team understands that navigating care funding can be overwhelming. We\'re here to support you every step of the way:') }}
                        </p>
                        <ul class="space-y-4">
                            <li class="flex items-start space-x-3">
                                <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                </svg>
                                <span class="text-lg text-gray-700">{{ getSetting('carefunding_help_pricing', 'Provide clear, transparent pricing information') }}</span>
                            </li>
                            <li class="flex items-start space-x-3">
                                <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                </svg>
                                <span class="text-lg text-gray-700">{{ getSetting('carefunding_help_assessment', 'Guide you through financial assessments') }}</span>
                            </li>
                            <li class="flex items-start space-x-3">
                                <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                </svg>
                                <span class="text-lg text-gray-700">{{ getSetting('carefunding_help_nhs', 'Help with NHS Continuing Healthcare applications') }}</span>
                            </li>
                            <li class="flex items-start space-x-3">
                                <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                </svg>
                                <span class="text-lg text-gray-700">{{ getSetting('carefunding_help_authority', 'Work with local authorities on your behalf') }}</span>
                            </li>
                            <li class="flex items-start space-x-3">
                                <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                </svg>
                                <span class="text-lg text-gray-700">{{ getSetting('carefunding_help_benefits', 'Identify additional funding sources and benefits you may be entitled to') }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6]">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-3xl mx-auto text-center">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-6 text-white">
                        {{ getSetting('carefunding_cta_title', 'Need Help Understanding Your Funding Options?') }}
                    </h2>
                    <p class="text-xl text-white/90 mb-8">
                        {{ getSetting('carefunding_cta_subtitle', 'Contact us for a free consultation to discuss your care funding options') }}
                    </p>
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <a :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')" class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl">
                            Call {{ getSetting('contact_phone', '+44 20 3239 1227') }}
                        </a>
                        <a href="/#contact" class="px-8 py-4 bg-transparent border-2 border-white text-white font-semibold rounded-full hover:bg-white hover:text-[#2563eb] transition-all duration-200">
                            Contact Us Online
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </PublicLayout>
</template>
