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
    <Head title="24-Hour Live-In Care - Sunrise & Sunset Home Care" />

    <PublicLayout :settings="settings" :currentLocale="currentLocale">
        <!-- Hero Section -->
        <section class="relative py-20 overflow-hidden">
            <!-- Background Image -->
            <div class="absolute inset-0">
                <img
                    src="/images/care-team.jpg"
                    alt="Live-in Care"
                    class="w-full h-full object-cover"
                />
                <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
            </div>

            <!-- Content -->
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 text-white">
                        {{ getSetting('liveincare_hero_title', 'Trusted Nurse-led 24-Hour Live-In Care') }}
                    </h1>
                    <p class="text-xl text-white/95 mb-8">
                        {{ getSetting('liveincare_hero_subtitle', 'Providing dedicated, compassionate care in the comfort of your own home') }}
                    </p>
                    <a :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')" class="inline-flex items-center px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl">
                        {{ getSetting('liveincare_hero_cta', 'Call Us:') }} {{ getSetting('contact_phone', '+44 20 3239 1227') }}
                    </a>
                </div>
            </div>
        </section>

        <!-- What is Live-in Care Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">{{ getSetting('liveincare_what_title', 'What is Live-in Care?') }}</h2>
                    <p class="text-lg text-gray-700 mb-6">
                        {{ getSetting('liveincare_what_description_1', 'Live-in care involves a dedicated care professional residing with you in your home, providing 24/7 support and companionship. This comprehensive care approach helps reduce risks like falls and hospital admissions while maintaining your independence and comfort in familiar surroundings.') }}
                    </p>
                    <p class="text-lg text-gray-700">
                        {{ getSetting('liveincare_what_description_2', 'Our nurse-led service ensures the highest quality of care, tailored to your individual needs and preferences.') }}
                    </p>
                </div>
            </div>
        </section>

        <!-- Who We Care For Section -->
        <section class="py-16 bg-gray-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">{{ getSetting('liveincare_who_title', 'Who We Care For') }}</h2>
                    <p class="text-lg text-gray-700 mb-8">
                        {{ getSetting('liveincare_who_description', 'We provide specialized care for elderly individuals and younger people with advanced needs, including:') }}
                    </p>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="flex items-start space-x-3">
                            <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-lg text-gray-700">{{ getSetting('liveincare_condition_spinal', 'Spinal Injuries') }}</span>
                        </div>
                        <div class="flex items-start space-x-3">
                            <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-lg text-gray-700">{{ getSetting('liveincare_condition_ms', 'Multiple Sclerosis') }}</span>
                        </div>
                        <div class="flex items-start space-x-3">
                            <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-lg text-gray-700">{{ getSetting('liveincare_condition_brain', 'Brain Injury') }}</span>
                        </div>
                        <div class="flex items-start space-x-3">
                            <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-lg text-gray-700">{{ getSetting('liveincare_condition_cerebral', 'Cerebral Palsy') }}</span>
                        </div>
                        <div class="flex items-start space-x-3">
                            <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-lg text-gray-700">{{ getSetting('liveincare_condition_frailty', 'Age-related Frailty') }}</span>
                        </div>
                        <div class="flex items-start space-x-3">
                            <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-lg text-gray-700">{{ getSetting('liveincare_condition_dementia', 'Dementia Care') }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Live-in Carer Tasks Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">{{ getSetting('liveincare_tasks_title', 'Live-in Carer Tasks') }}</h2>
                    <p class="text-lg text-gray-700 mb-8">
                        {{ getSetting('liveincare_tasks_description', 'Our dedicated carers provide comprehensive support with:') }}
                    </p>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_personal', 'Personal Care') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_medication', 'Medication Management') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_cleaning', 'Home Cleaning') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_meals', 'Meal Preparation') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_errands', 'Errands & Shopping') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_trips', 'Trip Arrangements') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_pets', 'Pet Care') }}</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-gradient-to-r from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">{{ getSetting('liveincare_task_healthcare', 'Healthcare Tasks') }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Benefits Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">{{ getSetting('liveincare_benefits_title', 'Benefits of Live-in Care') }}</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ getSetting('liveincare_benefit_flexibility_title', 'Flexibility & Freedom') }}</h3>
                            <p class="text-gray-700">{{ getSetting('liveincare_benefit_flexibility_desc', 'Maintain your independence and daily routines in the comfort of your own home') }}</p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ getSetting('liveincare_benefit_familiar_title', 'Familiar Environment') }}</h3>
                            <p class="text-gray-700">{{ getSetting('liveincare_benefit_familiar_desc', 'Stay in your cherished home surrounded by memories and belongings') }}</p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ getSetting('liveincare_benefit_personalized_title', 'Personalized Care') }}</h3>
                            <p class="text-gray-700">{{ getSetting('liveincare_benefit_personalized_desc', 'Receive one-on-one attention tailored to your unique needs and preferences') }}</p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ getSetting('liveincare_benefit_consistent_title', 'Consistent Caregiver') }}</h3>
                            <p class="text-gray-700">{{ getSetting('liveincare_benefit_consistent_desc', 'Build meaningful relationships with your dedicated care professional') }}</p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ getSetting('liveincare_benefit_health_title', 'Improved Health') }}</h3>
                            <p class="text-gray-700">{{ getSetting('liveincare_benefit_health_desc', 'Better health outcomes through personalized, attentive care') }}</p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ getSetting('liveincare_benefit_pets_title', 'Pet Care Support') }}</h3>
                            <p class="text-gray-700">{{ getSetting('liveincare_benefit_pets_desc', 'Keep your beloved pets with you while receiving proper care') }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Pricing Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto text-center">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-6 text-gray-900">{{ getSetting('liveincare_pricing_title', 'Transparent Pricing') }}</h2>
                    <div class="text-xl text-gray-700 mb-4" v-html="getSetting('liveincare_pricing_description', 'Fully managed live-in care starts from <span class=\'font-bold text-[#2563eb]\'>£1,350 per week</span>')"></div>
                    <p class="text-lg text-gray-600">
                        {{ getSetting('liveincare_pricing_contact', 'Contact us for a free care assessment and personalized quote') }}
                    </p>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6]">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-3xl mx-auto text-center">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-6 text-white">
                        {{ getSetting('liveincare_cta_title', 'Ready to Learn More About Our Live-in Care Services?') }}
                    </h2>
                    <p class="text-xl text-white/90 mb-8">
                        {{ getSetting('liveincare_cta_subtitle', 'Contact us 24 hours a day for a free care assessment and quote') }}
                    </p>
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <a :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')" class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl">
                            {{ getSetting('liveincare_cta_button_call', 'Call') }} {{ getSetting('contact_phone', '+44 20 3239 1227') }}
                        </a>
                        <a href="/#contact" class="px-8 py-4 bg-transparent border-2 border-white text-white font-semibold rounded-full hover:bg-white hover:text-[#2563eb] transition-all duration-200">
                            {{ getSetting('liveincare_cta_button_contact', 'Contact Us Online') }}
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </PublicLayout>
</template>
