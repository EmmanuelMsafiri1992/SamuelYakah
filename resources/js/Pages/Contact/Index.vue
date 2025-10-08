<script setup>
import { Head, useForm } from '@inertiajs/vue3';
import PublicLayout from '@/Layouts/PublicLayout.vue';
import { ref } from 'vue';

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

const form = useForm({
    inquiry_type: '',
    name: '',
    email: '',
    phone: '',
    preferred_time: '',
    message: ''
});

const submit = () => {
    // This will be handled by backend later
    alert('Thank you for your message. We will contact you soon!');
};
</script>

<template>
    <Head title="Contact Us - Sunrise & Sunset Home Care" />

    <PublicLayout :settings="settings" :currentLocale="currentLocale">
        <!-- Hero Section -->
        <section class="relative py-20 overflow-hidden">
            <!-- Background Image -->
            <div class="absolute inset-0">
                <img
                    src="/images/care-team.jpg"
                    alt="Contact Us"
                    class="w-full h-full object-cover"
                />
                <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
            </div>

            <!-- Content -->
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 text-white">
                        {{ getSetting('contact_hero_title', 'Get in Touch') }}
                    </h1>
                    <p class="text-xl text-white/95 mb-8">
                        {{ getSetting('contact_hero_subtitle', 'We\'re here to answer your questions and discuss how we can support you') }}
                    </p>
                </div>
            </div>
        </section>

        <!-- Contact Info & Form Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-6xl mx-auto">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
                        <!-- Contact Information -->
                        <div>
                            <h2 class="text-3xl font-bold text-gray-900 mb-8">{{ getSetting('contact_info_title', 'Contact Information') }}</h2>

                            <div class="space-y-6">
                                <!-- Phone -->
                                <div class="flex items-start space-x-4">
                                    <div class="flex-shrink-0 w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                        </svg>
                                    </div>
                                    <div>
                                        <h3 class="text-lg font-bold text-gray-900 mb-1">{{ getSetting('contact_phone_label', 'Phone') }}</h3>
                                        <a :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')" class="text-[#2563eb] hover:text-[#1e40af] font-semibold text-lg">
                                            {{ getSetting('contact_phone', '+44 20 3239 1227') }}
                                        </a>
                                        <p class="text-gray-600 text-sm mt-1">{{ getSetting('contact_availability', 'Available 24/7') }}</p>
                                    </div>
                                </div>

                                <!-- Email -->
                                <div class="flex items-start space-x-4">
                                    <div class="flex-shrink-0 w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                        </svg>
                                    </div>
                                    <div>
                                        <h3 class="text-lg font-bold text-gray-900 mb-1">{{ getSetting('contact_email_label', 'Email') }}</h3>
                                        <a :href="'mailto:' + getSetting('footer_contact_email', 'info@sunrisesunsetcare.co.uk')" class="text-[#2563eb] hover:text-[#1e40af] font-semibold">
                                            {{ getSetting('footer_contact_email', 'info@sunrisesunsetcare.co.uk') }}
                                        </a>
                                    </div>
                                </div>

                                <!-- Address -->
                                <div class="flex items-start space-x-4">
                                    <div class="flex-shrink-0 w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                        </svg>
                                    </div>
                                    <div>
                                        <h3 class="text-lg font-bold text-gray-900 mb-1">{{ getSetting('contact_address_label', 'Office Address') }}</h3>
                                        <p class="text-gray-700" v-html="getSetting('contact_address', 'Sunrise & Sunset Home Care<br>London, United Kingdom')"></p>
                                    </div>
                                </div>
                            </div>

                            <!-- Opening Hours -->
                            <div class="mt-8 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                                <h3 class="text-xl font-bold text-gray-900 mb-4">{{ getSetting('contact_hours_title', 'Opening Hours') }}</h3>
                                <div class="space-y-2 text-gray-700">
                                    <div class="flex justify-between">
                                        <span>{{ getSetting('contact_hours_emergency', 'Emergency Support:') }}</span>
                                        <span class="font-semibold">{{ getSetting('contact_hours_24_7', '24/7') }}</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span>{{ getSetting('contact_hours_office', 'Office Hours:') }}</span>
                                        <span class="font-semibold">{{ getSetting('contact_hours_times', 'Mon-Fri 9am-6pm') }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Contact Form -->
                        <div>
                            <h2 class="text-3xl font-bold text-gray-900 mb-8">{{ getSetting('contact_form_title', 'Send Us a Message') }}</h2>

                            <form @submit.prevent="submit" class="space-y-6">
                                <!-- Inquiry Type -->
                                <div>
                                    <label for="inquiry_type" class="block text-sm font-semibold text-gray-700 mb-2">
                                        {{ getSetting('contact_form_inquiry', 'I\'m inquiring about *') }}
                                    </label>
                                    <select
                                        id="inquiry_type"
                                        v-model="form.inquiry_type"
                                        required
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                    >
                                        <option value="">{{ getSetting('contact_form_select', 'Please select...') }}</option>
                                        <option value="myself">{{ getSetting('contact_form_myself', 'Care for myself') }}</option>
                                        <option value="loved_one">{{ getSetting('contact_form_loved', 'Care for a loved one') }}</option>
                                        <option value="professional">{{ getSetting('contact_form_professional', 'Professional referral') }}</option>
                                        <option value="job">{{ getSetting('contact_form_job', 'Care job opportunities') }}</option>
                                        <option value="other">{{ getSetting('contact_form_other', 'Other inquiry') }}</option>
                                    </select>
                                </div>

                                <!-- Name -->
                                <div>
                                    <label for="name" class="block text-sm font-semibold text-gray-700 mb-2">
                                        {{ getSetting('contact_form_name', 'Full Name *') }}
                                    </label>
                                    <input
                                        type="text"
                                        id="name"
                                        v-model="form.name"
                                        required
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                        :placeholder="getSetting('contact_form_name_placeholder', 'Your full name')"
                                    />
                                </div>

                                <!-- Email -->
                                <div>
                                    <label for="email" class="block text-sm font-semibold text-gray-700 mb-2">
                                        {{ getSetting('contact_form_email', 'Email Address *') }}
                                    </label>
                                    <input
                                        type="email"
                                        id="email"
                                        v-model="form.email"
                                        required
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                        :placeholder="getSetting('contact_form_email_placeholder', 'your@email.com')"
                                    />
                                </div>

                                <!-- Phone -->
                                <div>
                                    <label for="phone" class="block text-sm font-semibold text-gray-700 mb-2">
                                        {{ getSetting('contact_form_phone', 'Phone Number *') }}
                                    </label>
                                    <input
                                        type="tel"
                                        id="phone"
                                        v-model="form.phone"
                                        required
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                        :placeholder="getSetting('contact_form_phone_placeholder', '+44 20 xxxx xxxx')"
                                    />
                                </div>

                                <!-- Preferred Contact Time -->
                                <div>
                                    <label for="preferred_time" class="block text-sm font-semibold text-gray-700 mb-2">
                                        {{ getSetting('contact_form_preferred_time', 'Preferred Contact Time') }}
                                    </label>
                                    <select
                                        id="preferred_time"
                                        v-model="form.preferred_time"
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                    >
                                        <option value="">{{ getSetting('contact_form_anytime', 'Any time') }}</option>
                                        <option value="7am-9am">7 am - 9 am</option>
                                        <option value="9am-12pm">9 am - 12 noon</option>
                                        <option value="12pm-2pm">12 noon - 2 pm</option>
                                        <option value="2pm-5pm">2 pm - 5 pm</option>
                                        <option value="5pm-7pm">5 pm - 7 pm</option>
                                        <option value="7pm-9pm">7 pm - 9 pm</option>
                                    </select>
                                </div>

                                <!-- Message -->
                                <div>
                                    <label for="message" class="block text-sm font-semibold text-gray-700 mb-2">
                                        {{ getSetting('contact_form_message', 'Your Message') }}
                                    </label>
                                    <textarea
                                        id="message"
                                        v-model="form.message"
                                        rows="5"
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                        :placeholder="getSetting('contact_form_message_placeholder', 'Tell us more about your care needs or inquiry...')"
                                    ></textarea>
                                </div>

                                <!-- Submit Button -->
                                <button
                                    type="submit"
                                    class="w-full px-8 py-4 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] text-white font-semibold rounded-full hover:from-[#1e40af] hover:to-[#3dccc1] transition-all duration-200 shadow-lg hover:shadow-xl"
                                >
                                    {{ getSetting('contact_form_submit', 'Send Message') }}
                                </button>

                                <p class="text-sm text-gray-600 text-center">
                                    {{ getSetting('contact_form_privacy', 'By submitting this form, you consent to us processing your data in accordance with our Privacy Policy.') }}
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6]">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-3xl mx-auto text-center">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-6 text-white">
                        {{ getSetting('contact_cta_title', 'Prefer to Speak Directly?') }}
                    </h2>
                    <p class="text-xl text-white/90 mb-8">
                        {{ getSetting('contact_cta_subtitle', 'Our friendly team is available 24 hours a day to answer your questions') }}
                    </p>
                    <a :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')" class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl inline-block">
                        Call {{ getSetting('contact_phone', '+44 20 3239 1227') }}
                    </a>
                </div>
            </div>
        </section>
    </PublicLayout>
</template>
