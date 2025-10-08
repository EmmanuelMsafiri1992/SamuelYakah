<script setup>
import { Head, useForm } from '@inertiajs/vue3';
import { ref } from 'vue';
import Header from '@/Components/Public/Header.vue';
import Footer from '@/Components/Public/Footer.vue';
import InputLabel from '@/Components/InputLabel.vue';
import TextInput from '@/Components/TextInput.vue';
import InputError from '@/Components/InputError.vue';

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
    first_name: '',
    last_name: '',
    email: '',
    phone: '',
    address: '',
    nationality: '',
    date_of_birth: '',
    experience: '',
    qualifications: '',
    has_right_to_work: false,
    has_driving_license: false,
    cv: null,
});

const cvFileName = ref('');
const fileInput = ref(null);

const handleFileChange = (event) => {
    const file = event.target.files[0];
    if (file) {
        form.cv = file;
        cvFileName.value = file.name;
    }
};

const removeFile = () => {
    form.cv = null;
    cvFileName.value = '';
    if (fileInput.value) {
        fileInput.value.value = '';
    }
};

const submit = () => {
    form.post(route('job-applications.store'), {
        onSuccess: () => {
            form.reset();
            cvFileName.value = '';
        },
    });
};
</script>

<template>
    <Head title="Apply Now - Job Application" />

    <div class="min-h-screen bg-gray-50">
        <Header :settings="settings" :currentLocale="currentLocale" />

        <div class="py-12 lg:py-16">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <!-- Header -->
                <div class="max-w-3xl mx-auto text-center mb-10">
                    <h1 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                        {{ getSetting('jobapp_header_title', 'Apply for Live-In Care Position') }}
                    </h1>
                    <p class="text-lg text-gray-600">
                        {{ getSetting('jobapp_header_desc', 'Fill out the form below to start your journey with us. All fields marked with * are required.') }}
                    </p>
                </div>

                <!-- Application Form -->
                <div class="max-w-4xl mx-auto bg-white rounded-xl shadow-lg p-8 lg:p-12">
                    <form @submit.prevent="submit" class="space-y-8">
                        <!-- Personal Information -->
                        <div>
                            <h2 class="text-2xl font-bold text-gray-900 mb-6 pb-3 border-b-2 border-orange-500">
                                {{ getSetting('jobapp_personal_title', 'Personal Information') }}
                            </h2>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div>
                                    <InputLabel for="first_name" value="First Name *" />
                                    <TextInput
                                        id="first_name"
                                        type="text"
                                        class="mt-1 block w-full"
                                        v-model="form.first_name"
                                        required
                                        autofocus
                                    />
                                    <InputError class="mt-2" :message="form.errors.first_name" />
                                </div>

                                <div>
                                    <InputLabel for="last_name" value="Last Name *" />
                                    <TextInput
                                        id="last_name"
                                        type="text"
                                        class="mt-1 block w-full"
                                        v-model="form.last_name"
                                        required
                                    />
                                    <InputError class="mt-2" :message="form.errors.last_name" />
                                </div>

                                <div>
                                    <InputLabel for="email" value="Email Address *" />
                                    <TextInput
                                        id="email"
                                        type="email"
                                        class="mt-1 block w-full"
                                        v-model="form.email"
                                        required
                                    />
                                    <InputError class="mt-2" :message="form.errors.email" />
                                </div>

                                <div>
                                    <InputLabel for="phone" value="Phone Number *" />
                                    <TextInput
                                        id="phone"
                                        type="tel"
                                        class="mt-1 block w-full"
                                        v-model="form.phone"
                                        required
                                    />
                                    <InputError class="mt-2" :message="form.errors.phone" />
                                </div>

                                <div class="md:col-span-2">
                                    <InputLabel for="address" value="Address *" />
                                    <TextInput
                                        id="address"
                                        type="text"
                                        class="mt-1 block w-full"
                                        v-model="form.address"
                                        required
                                    />
                                    <InputError class="mt-2" :message="form.errors.address" />
                                </div>

                                <div>
                                    <InputLabel for="nationality" value="Nationality *" />
                                    <TextInput
                                        id="nationality"
                                        type="text"
                                        class="mt-1 block w-full"
                                        v-model="form.nationality"
                                        required
                                    />
                                    <InputError class="mt-2" :message="form.errors.nationality" />
                                </div>

                                <div>
                                    <InputLabel for="date_of_birth" value="Date of Birth *" />
                                    <TextInput
                                        id="date_of_birth"
                                        type="date"
                                        class="mt-1 block w-full"
                                        v-model="form.date_of_birth"
                                        required
                                    />
                                    <InputError class="mt-2" :message="form.errors.date_of_birth" />
                                </div>
                            </div>
                        </div>

                        <!-- Professional Information -->
                        <div>
                            <h2 class="text-2xl font-bold text-gray-900 mb-6 pb-3 border-b-2 border-orange-500">
                                {{ getSetting('jobapp_professional_title', 'Professional Information') }}
                            </h2>
                            <div class="space-y-6">
                                <div>
                                    <InputLabel for="experience" value="Previous Care Experience *" />
                                    <textarea
                                        id="experience"
                                        v-model="form.experience"
                                        rows="4"
                                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-orange-500 focus:ring-orange-500"
                                        placeholder="Please describe your previous experience in care work, including roles, responsibilities, and duration..."
                                        required
                                    ></textarea>
                                    <InputError class="mt-2" :message="form.errors.experience" />
                                </div>

                                <div>
                                    <InputLabel for="qualifications" value="Qualifications & Certifications *" />
                                    <textarea
                                        id="qualifications"
                                        v-model="form.qualifications"
                                        rows="4"
                                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-orange-500 focus:ring-orange-500"
                                        placeholder="Please list your relevant qualifications, certifications, and training (e.g., NVQ, First Aid, etc.)..."
                                        required
                                    ></textarea>
                                    <InputError class="mt-2" :message="form.errors.qualifications" />
                                </div>
                            </div>
                        </div>

                        <!-- Additional Information -->
                        <div>
                            <h2 class="text-2xl font-bold text-gray-900 mb-6 pb-3 border-b-2 border-orange-500">
                                {{ getSetting('jobapp_additional_title', 'Additional Information') }}
                            </h2>
                            <div class="space-y-4">
                                <div class="flex items-start">
                                    <div class="flex items-center h-5">
                                        <input
                                            id="has_right_to_work"
                                            type="checkbox"
                                            v-model="form.has_right_to_work"
                                            class="w-5 h-5 text-orange-600 bg-gray-100 border-gray-300 rounded focus:ring-orange-500 focus:ring-2"
                                        />
                                    </div>
                                    <div class="ml-3">
                                        <label for="has_right_to_work" class="font-medium text-gray-900">
                                            {{ getSetting('jobapp_right_to_work', 'I have the right to work in the UK *') }}
                                        </label>
                                        <p class="text-sm text-gray-600">{{ getSetting('jobapp_right_to_work_desc', 'You must have valid work authorization to apply for this position.') }}</p>
                                    </div>
                                </div>
                                <InputError class="mt-2" :message="form.errors.has_right_to_work" />

                                <div class="flex items-start">
                                    <div class="flex items-center h-5">
                                        <input
                                            id="has_driving_license"
                                            type="checkbox"
                                            v-model="form.has_driving_license"
                                            class="w-5 h-5 text-orange-600 bg-gray-100 border-gray-300 rounded focus:ring-orange-500 focus:ring-2"
                                        />
                                    </div>
                                    <div class="ml-3">
                                        <label for="has_driving_license" class="font-medium text-gray-900">
                                            {{ getSetting('jobapp_driving_license', 'I have a valid driving license') }}
                                        </label>
                                        <p class="text-sm text-gray-600">{{ getSetting('jobapp_driving_license_desc', 'A driving license is preferred but not required.') }}</p>
                                    </div>
                                </div>
                                <InputError class="mt-2" :message="form.errors.has_driving_license" />
                            </div>
                        </div>

                        <!-- CV Upload -->
                        <div>
                            <h2 class="text-2xl font-bold text-gray-900 mb-6 pb-3 border-b-2 border-orange-500">
                                {{ getSetting('jobapp_cv_title', 'CV Upload') }}
                            </h2>
                            <div>
                                <InputLabel for="cv" value="Upload Your CV *" />
                                <div class="mt-2">
                                    <div v-if="!cvFileName" class="flex justify-center px-6 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-lg hover:border-orange-500 transition-colors">
                                        <div class="space-y-2 text-center">
                                            <svg class="mx-auto h-12 w-12 text-gray-400" stroke="currentColor" fill="none" viewBox="0 0 48 48">
                                                <path d="M28 8H12a4 4 0 00-4 4v20m32-12v8m0 0v8a4 4 0 01-4 4H12a4 4 0 01-4-4v-4m32-4l-3.172-3.172a4 4 0 00-5.656 0L28 28M8 32l9.172-9.172a4 4 0 015.656 0L28 28m0 0l4 4m4-24h8m-4-4v8m-12 4h.02" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                            </svg>
                                            <div class="flex text-sm text-gray-600">
                                                <label for="cv" class="relative cursor-pointer bg-white rounded-md font-medium text-orange-600 hover:text-orange-500 focus-within:outline-none focus-within:ring-2 focus-within:ring-orange-500">
                                                    <span>Upload a file</span>
                                                    <input
                                                        id="cv"
                                                        ref="fileInput"
                                                        type="file"
                                                        class="sr-only"
                                                        @change="handleFileChange"
                                                        accept=".pdf,.doc,.docx"
                                                        required
                                                    />
                                                </label>
                                                <p class="pl-1">or drag and drop</p>
                                            </div>
                                            <p class="text-xs text-gray-500">PDF, DOC, DOCX up to 10MB</p>
                                        </div>
                                    </div>

                                    <div v-else class="flex items-center justify-between p-4 bg-orange-50 border border-orange-200 rounded-lg">
                                        <div class="flex items-center space-x-3">
                                            <svg class="w-8 h-8 text-orange-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                                            </svg>
                                            <div>
                                                <p class="text-sm font-medium text-gray-900">{{ cvFileName }}</p>
                                                <p class="text-xs text-gray-500">File uploaded successfully</p>
                                            </div>
                                        </div>
                                        <button
                                            type="button"
                                            @click="removeFile"
                                            class="text-red-600 hover:text-red-800 transition-colors"
                                        >
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <InputError class="mt-2" :message="form.errors.cv" />
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="flex items-center justify-between pt-6 border-t border-gray-200">
                            <p class="text-sm text-gray-600">
                                {{ getSetting('jobapp_required', '* Required fields') }}
                            </p>
                            <button
                                type="submit"
                                :disabled="form.processing"
                                class="inline-flex items-center px-8 py-3 bg-orange-500 hover:bg-orange-600 disabled:bg-gray-400 text-white font-bold rounded-lg transition-all duration-200 shadow-md hover:shadow-lg transform hover:-translate-y-0.5 disabled:transform-none disabled:cursor-not-allowed"
                            >
                                <svg v-if="form.processing" class="animate-spin -ml-1 mr-3 h-5 w-5 text-white" fill="none" viewBox="0 0 24 24">
                                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                    <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                                </svg>
                                {{ form.processing ? getSetting('jobapp_submitting', 'Submitting...') : getSetting('jobapp_submit', 'Submit Application') }}
                                <svg v-if="!form.processing" class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Help Section -->
                <div class="max-w-4xl mx-auto mt-8 bg-orange-50 border border-orange-200 rounded-lg p-6">
                    <div class="flex items-start space-x-4">
                        <svg class="w-6 h-6 text-orange-500 flex-shrink-0 mt-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                        <div>
                            <h3 class="text-lg font-semibold text-gray-900 mb-2">{{ getSetting('jobapp_help_title', 'Need Help?') }}</h3>
                            <p class="text-gray-700 mb-2">
                                {{ getSetting('jobapp_help_desc', 'If you have any questions about the application process or need assistance, please don\'t hesitate to contact us.') }}
                            </p>
                            <p class="text-gray-700">
                                Email: <a :href="'mailto:' + getSetting('footer_contact_email', 'info@sunrisesunsetcare.co.uk')" class="text-orange-600 hover:text-orange-700 font-medium">{{ getSetting('footer_contact_email', 'info@sunrisesunsetcare.co.uk') }}</a> |
                                Phone: <a :href="'tel:' + getSetting('contact_phone', '+442032391227').replace(/\s/g, '')" class="text-orange-600 hover:text-orange-700 font-medium">{{ getSetting('contact_phone', '+44 20 3239 1227') }}</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <Footer :settings="settings" :currentLocale="currentLocale" />
    </div>
</template>
