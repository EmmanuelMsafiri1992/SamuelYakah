<script setup>
import { Head, Link, useForm } from '@inertiajs/vue3';
import Header from '@/Components/Public/Header.vue';
import Footer from '@/Components/Public/Footer.vue';
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

const selectedJob = ref(null);
const showApplicationModal = ref(false);

const jobListings = [
    {
        id: 1,
        title: 'Live-in Care Professional',
        location: 'London & Surrounding Areas',
        type: 'Full-time',
        salary: '£750 - £950 per week',
        description: 'Join our team as a live-in care professional. Provide compassionate, personalized care to clients in their own homes.',
        requirements: [
            'Experience in care (preferred but not essential)',
            'Compassionate and patient nature',
            'Good communication skills',
            'Right to work in the UK'
        ]
    },
    {
        id: 2,
        title: 'Senior Care Professional',
        location: 'London',
        type: 'Full-time',
        salary: '£850 - £1000 per week',
        description: 'Experienced care professional needed to provide specialized care for clients with complex needs.',
        requirements: [
            'Minimum 2 years care experience',
            'NVQ Level 2 or equivalent',
            'Experience with complex care needs',
            'Excellent references'
        ]
    },
    {
        id: 3,
        title: 'Weekend Care Professional',
        location: 'London & Surrounding Areas',
        type: 'Part-time',
        salary: '£150 - £180 per day',
        description: 'Weekend care professional needed to provide respite care and support to our existing clients.',
        requirements: [
            'Flexible and reliable',
            'Care experience preferred',
            'Available for weekend shifts',
            'Own transport preferred'
        ]
    }
];

const applicationForm = useForm({
    job_id: '',
    job_title: '',
    full_name: '',
    email: '',
    phone: '',
    experience: '',
    cover_letter: '',
    cv_file: null
});

const openApplicationModal = (job) => {
    selectedJob.value = job;
    applicationForm.job_id = job.id;
    applicationForm.job_title = job.title;
    showApplicationModal.value = true;
};

const closeApplicationModal = () => {
    showApplicationModal.value = false;
    selectedJob.value = null;
    applicationForm.reset();
};

const submitApplication = () => {
    // This will be handled by backend later
    alert(`Thank you for your application for ${selectedJob.value.title}! We will review your application and contact you soon.`);
    closeApplicationModal();
};
</script>

<template>
    <Head title="Violetta Home Care Limited - Compassionate Live-in Care Services" />

    <div class="min-h-screen flex flex-col bg-white">
        <Header :settings="settings" :currentLocale="currentLocale" />

        <main class="flex-grow">
            <!-- Hero Section -->
            <section class="relative py-20 lg:py-32 overflow-hidden">
                <!-- Background Image -->
                <div class="absolute inset-0">
                    <img
                        src="/images/home-care.jpg"
                        alt="Violetta Home Care"
                        class="w-full h-full object-cover"
                    />
                    <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
                </div>

                <!-- Content -->
                <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                    <div class="max-w-4xl mx-auto text-center">
                        <h1 class="text-4xl sm:text-5xl lg:text-6xl xl:text-7xl font-bold mb-6 text-white leading-tight">
                            Live-in care, your way.
                        </h1>
                        <p class="text-xl sm:text-2xl text-white/95 mb-4">
                            Violetta Home Care provides a trusted, nurse-led live-in care service
                        </p>
                        <p class="text-lg sm:text-xl text-white/90 mb-8">
                            Serving London and surrounding areas with compassionate, personalized care
                        </p>
                        <Link
                            href="/live-in-care"
                            class="inline-flex items-center px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl text-lg"
                        >
                            Find out more
                        </Link>
                    </div>
                </div>
            </section>

            <!-- Why Choose Us Section - Image Left, Text Right -->
            <section class="py-16 lg:py-24 bg-white">
                <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center max-w-7xl mx-auto">
                        <!-- Image -->
                        <div class="order-2 lg:order-1">
                            <div class="relative h-[400px] lg:h-[500px] rounded-2xl overflow-hidden shadow-xl">
                                <img
                                    src="/images/care-team.jpg"
                                    alt="Compassionate care professional with elderly client"
                                    class="w-full h-full object-cover"
                                />
                            </div>
                        </div>

                        <!-- Text Content -->
                        <div class="order-1 lg:order-2">
                            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold mb-6 text-gray-900">
                                Why choose us?
                            </h2>
                            <p class="text-lg text-gray-700 mb-4 leading-relaxed">
                                At Violetta Home Care, we understand that choosing care is a deeply personal decision. That's why we focus on carefully matching our dedicated care professionals with each client's unique needs and personality.
                            </p>
                            <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                                Our nurse-led approach ensures the highest quality of care, while our commitment to personalized service means you or your loved one will receive attention that truly makes a difference.
                            </p>
                            <div class="flex items-center space-x-3 mb-6">
                                <svg class="w-6 h-6 text-[#2563eb]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                </svg>
                                <a href="tel:+442032391227" class="text-xl font-bold text-[#2563eb] hover:text-[#1e40af]">
                                    +44 20 3239 1227
                                </a>
                            </div>
                            <Link
                                href="/live-in-care"
                                class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold text-lg group"
                            >
                                Learn about our services
                                <svg class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </Link>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Career Opportunity Section - Text Left, Image Right -->
            <section class="py-16 lg:py-24 bg-gray-50">
                <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center max-w-7xl mx-auto">
                        <!-- Text Content -->
                        <div>
                            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold mb-6 text-gray-900">
                                A care career like no other
                            </h2>
                            <p class="text-lg text-gray-700 mb-4 leading-relaxed">
                                Join our team of dedicated care professionals and embark on a rewarding career that truly makes a difference in people's lives.
                            </p>
                            <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                                We offer competitive pay, comprehensive training, and ongoing support. Whether you're experienced in care or looking to start a new career path, we provide everything you need to succeed.
                            </p>
                            <div class="mb-6">
                                <div class="flex items-start space-x-3 mb-3">
                                    <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">£750-£950 per week with excellent benefits</span>
                                </div>
                                <div class="flex items-start space-x-3 mb-3">
                                    <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Comprehensive training and development</span>
                                </div>
                                <div class="flex items-start space-x-3">
                                    <svg class="w-6 h-6 text-[#2563eb] flex-shrink-0 mt-1" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">24/7 support from our dedicated team</span>
                                </div>
                            </div>
                            <Link
                                href="/careers"
                                class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold text-lg group"
                            >
                                Explore a care career with us
                                <svg class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </Link>
                        </div>

                        <!-- Image -->
                        <div>
                            <div class="relative h-[400px] lg:h-[500px] rounded-2xl overflow-hidden shadow-xl">
                                <img
                                    src="/images/careers.jpg"
                                    alt="Care professional providing compassionate support"
                                    class="w-full h-full object-cover"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Service Area Section - Image Left, Text Right -->
            <section class="py-16 lg:py-24 bg-white">
                <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center max-w-7xl mx-auto">
                        <!-- Image -->
                        <div class="order-2 lg:order-1">
                            <div class="relative h-[400px] lg:h-[500px] rounded-2xl overflow-hidden shadow-xl">
                                <img
                                    src="/images/home-care.jpg"
                                    alt="Comfortable home environment for live-in care"
                                    class="w-full h-full object-cover"
                                />
                            </div>
                        </div>

                        <!-- Text Content -->
                        <div class="order-1 lg:order-2">
                            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold mb-6 text-gray-900">
                                Live-in care in London and beyond
                            </h2>
                            <p class="text-lg text-gray-700 mb-4 leading-relaxed">
                                We've been providing exceptional live-in care services across London and the surrounding areas, helping people maintain their independence and quality of life in the comfort of their own homes.
                            </p>
                            <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                                Our focus is on ensuring safety, contentment, and autonomy for every client. We understand that home is where the heart is, and we're committed to helping you or your loved one stay there with the support you need.
                            </p>
                            <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 mb-6">
                                <div class="text-center p-4 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                                    <div class="text-3xl font-bold text-[#2563eb] mb-1">24/7</div>
                                    <div class="text-sm text-gray-600">Support Available</div>
                                </div>
                                <div class="text-center p-4 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                                    <div class="text-3xl font-bold text-[#2563eb] mb-1">100%</div>
                                    <div class="text-sm text-gray-600">Personalized Care</div>
                                </div>
                                <div class="text-center p-4 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 rounded-lg">
                                    <div class="text-3xl font-bold text-[#2563eb] mb-1">CQC</div>
                                    <div class="text-sm text-gray-600">Registered</div>
                                </div>
                            </div>
                            <Link
                                href="/live-in-care"
                                class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold text-lg group"
                            >
                                Read more about our services
                                <svg class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </Link>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Services Overview Section -->
            <section class="py-16 lg:py-24 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5">
                <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="max-w-6xl mx-auto">
                        <div class="text-center mb-12">
                            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold mb-4 text-gray-900">
                                Our Services
                            </h2>
                            <p class="text-xl text-gray-700">
                                Comprehensive care solutions tailored to your needs
                            </p>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                            <!-- Live-in Care Card -->
                            <Link href="/live-in-care" class="group">
                                <div class="bg-white p-8 rounded-xl shadow-md hover:shadow-xl transition-all duration-200 h-full">
                                    <div class="w-16 h-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-6">
                                        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                                        </svg>
                                    </div>
                                    <h3 class="text-2xl font-bold text-gray-900 mb-4 group-hover:text-[#2563eb] transition-colors">
                                        Live-in Care
                                    </h3>
                                    <p class="text-gray-700 mb-4">
                                        24/7 dedicated care in the comfort of your own home with a professional caregiver
                                    </p>
                                    <span class="inline-flex items-center text-[#2563eb] font-semibold group-hover:translate-x-1 transition-transform">
                                        Learn more
                                        <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                        </svg>
                                    </span>
                                </div>
                            </Link>

                            <!-- Care Funding Card -->
                            <Link href="/care-funding" class="group">
                                <div class="bg-white p-8 rounded-xl shadow-md hover:shadow-xl transition-all duration-200 h-full">
                                    <div class="w-16 h-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-6">
                                        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
                                    </div>
                                    <h3 class="text-2xl font-bold text-gray-900 mb-4 group-hover:text-[#2563eb] transition-colors">
                                        Care Funding
                                    </h3>
                                    <p class="text-gray-700 mb-4">
                                        Guidance on funding options including self-funding, local authority support, and NHS CHC
                                    </p>
                                    <span class="inline-flex items-center text-[#2563eb] font-semibold group-hover:translate-x-1 transition-transform">
                                        Learn more
                                        <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                        </svg>
                                    </span>
                                </div>
                            </Link>

                            <!-- Career Opportunities Card -->
                            <Link href="/careers" class="group">
                                <div class="bg-white p-8 rounded-xl shadow-md hover:shadow-xl transition-all duration-200 h-full">
                                    <div class="w-16 h-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-6">
                                        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                        </svg>
                                    </div>
                                    <h3 class="text-2xl font-bold text-gray-900 mb-4 group-hover:text-[#2563eb] transition-colors">
                                        Career Opportunities
                                    </h3>
                                    <p class="text-gray-700 mb-4">
                                        Join our team of dedicated professionals and make a real difference in people's lives
                                    </p>
                                    <span class="inline-flex items-center text-[#2563eb] font-semibold group-hover:translate-x-1 transition-transform">
                                        Learn more
                                        <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                        </svg>
                                    </span>
                                </div>
                            </Link>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Job Opportunities Section -->
            <section class="py-16 lg:py-24 bg-white">
                <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="max-w-6xl mx-auto">
                        <div class="text-center mb-12">
                            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold mb-4 text-gray-900">
                                Current Job Opportunities
                            </h2>
                            <p class="text-xl text-gray-700">
                                Join our team and make a real difference in people's lives
                            </p>
                        </div>

                        <div class="space-y-6">
                            <div
                                v-for="job in jobListings"
                                :key="job.id"
                                class="bg-white border-2 border-gray-200 rounded-xl p-6 lg:p-8 hover:border-[#2563eb] hover:shadow-xl transition-all duration-200"
                            >
                                <div class="flex flex-col lg:flex-row lg:items-start lg:justify-between gap-4 mb-4">
                                    <div class="flex-grow">
                                        <h3 class="text-2xl font-bold text-gray-900 mb-2">
                                            {{ job.title }}
                                        </h3>
                                        <div class="flex flex-wrap gap-3 mb-4">
                                            <span class="inline-flex items-center px-3 py-1 bg-gradient-to-r from-[#2563eb]/10 to-[#4FE1D6]/10 text-[#2563eb] text-sm font-semibold rounded-full">
                                                <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                                </svg>
                                                {{ job.location }}
                                            </span>
                                            <span class="inline-flex items-center px-3 py-1 bg-gradient-to-r from-[#2563eb]/10 to-[#4FE1D6]/10 text-[#2563eb] text-sm font-semibold rounded-full">
                                                <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                                </svg>
                                                {{ job.type }}
                                            </span>
                                            <span class="inline-flex items-center px-3 py-1 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] text-white text-sm font-semibold rounded-full">
                                                <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                                </svg>
                                                {{ job.salary }}
                                            </span>
                                        </div>
                                    </div>
                                    <button
                                        @click="openApplicationModal(job)"
                                        class="px-6 py-3 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] text-white font-semibold rounded-full hover:from-[#1e40af] hover:to-[#3dccc1] transition-all duration-200 shadow-lg hover:shadow-xl whitespace-nowrap"
                                    >
                                        Apply Now
                                    </button>
                                </div>

                                <p class="text-gray-700 mb-4">
                                    {{ job.description }}
                                </p>

                                <div>
                                    <h4 class="font-semibold text-gray-900 mb-2">Requirements:</h4>
                                    <ul class="space-y-1">
                                        <li
                                            v-for="(requirement, index) in job.requirements"
                                            :key="index"
                                            class="flex items-start text-gray-700"
                                        >
                                            <svg class="w-5 h-5 text-[#2563eb] mr-2 flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                            </svg>
                                            {{ requirement }}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="mt-8 text-center">
                            <p class="text-gray-600 mb-4">
                                Can't find the right role? We're always looking for talented care professionals.
                            </p>
                            <Link
                                href="/careers"
                                class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold text-lg"
                            >
                                View all career opportunities
                                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </Link>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Application Modal -->
            <div
                v-if="showApplicationModal"
                class="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4"
                @click.self="closeApplicationModal"
            >
                <div class="bg-white rounded-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
                    <div class="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between">
                        <h3 class="text-2xl font-bold text-gray-900">Apply for {{ selectedJob?.title }}</h3>
                        <button
                            @click="closeApplicationModal"
                            class="text-gray-400 hover:text-gray-600 transition-colors"
                        >
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </button>
                    </div>

                    <form @submit.prevent="submitApplication" class="p-6 space-y-6">
                        <!-- Full Name -->
                        <div>
                            <label for="full_name" class="block text-sm font-semibold text-gray-700 mb-2">
                                Full Name *
                            </label>
                            <input
                                type="text"
                                id="full_name"
                                v-model="applicationForm.full_name"
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                placeholder="Your full name"
                            />
                        </div>

                        <!-- Email -->
                        <div>
                            <label for="app_email" class="block text-sm font-semibold text-gray-700 mb-2">
                                Email Address *
                            </label>
                            <input
                                type="email"
                                id="app_email"
                                v-model="applicationForm.email"
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                placeholder="your@email.com"
                            />
                        </div>

                        <!-- Phone -->
                        <div>
                            <label for="app_phone" class="block text-sm font-semibold text-gray-700 mb-2">
                                Phone Number *
                            </label>
                            <input
                                type="tel"
                                id="app_phone"
                                v-model="applicationForm.phone"
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                placeholder="+44 20 xxxx xxxx"
                            />
                        </div>

                        <!-- Years of Experience -->
                        <div>
                            <label for="experience" class="block text-sm font-semibold text-gray-700 mb-2">
                                Years of Care Experience *
                            </label>
                            <select
                                id="experience"
                                v-model="applicationForm.experience"
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                            >
                                <option value="">Please select...</option>
                                <option value="no_experience">No experience</option>
                                <option value="less_than_1">Less than 1 year</option>
                                <option value="1_2">1-2 years</option>
                                <option value="3_5">3-5 years</option>
                                <option value="5_plus">5+ years</option>
                            </select>
                        </div>

                        <!-- Cover Letter -->
                        <div>
                            <label for="cover_letter" class="block text-sm font-semibold text-gray-700 mb-2">
                                Cover Letter / Why do you want to join us? *
                            </label>
                            <textarea
                                id="cover_letter"
                                v-model="applicationForm.cover_letter"
                                required
                                rows="5"
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#2563eb] focus:border-transparent"
                                placeholder="Tell us about yourself and why you'd be a great fit for this role..."
                            ></textarea>
                        </div>

                        <!-- CV Upload Note -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-4 rounded-lg">
                            <p class="text-sm text-gray-700">
                                <strong>Note:</strong> After submitting this form, please email your CV to
                                <a href="mailto:careers@violettahomecare.com" class="text-[#2563eb] hover:text-[#1e40af] font-semibold">
                                    careers@violettahomecare.com
                                </a>
                                with the subject line "Application for {{ selectedJob?.title }}"
                            </p>
                        </div>

                        <!-- Submit Button -->
                        <div class="flex gap-3">
                            <button
                                type="button"
                                @click="closeApplicationModal"
                                class="flex-1 px-6 py-3 border-2 border-gray-300 text-gray-700 font-semibold rounded-full hover:bg-gray-50 transition-all duration-200"
                            >
                                Cancel
                            </button>
                            <button
                                type="submit"
                                class="flex-1 px-6 py-3 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] text-white font-semibold rounded-full hover:from-[#1e40af] hover:to-[#3dccc1] transition-all duration-200 shadow-lg hover:shadow-xl"
                            >
                                Submit Application
                            </button>
                        </div>

                        <p class="text-xs text-gray-600 text-center">
                            By submitting this application, you consent to us processing your data in accordance with our Privacy Policy.
                        </p>
                    </form>
                </div>
            </div>

            <!-- Final CTA Section -->
            <section class="py-16 lg:py-24 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6]">
                <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="max-w-4xl mx-auto text-center">
                        <h2 class="text-3xl sm:text-4xl lg:text-5xl font-bold mb-6 text-white">
                            Ready to learn more about our care services?
                        </h2>
                        <p class="text-xl text-white/90 mb-8">
                            Contact our friendly team today for a free, no-obligation consultation
                        </p>
                        <div class="flex flex-col sm:flex-row gap-4 justify-center">
                            <a
                                href="tel:+442032391227"
                                class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl text-lg"
                            >
                                Call +44 20 3239 1227
                            </a>
                            <Link
                                href="/contact"
                                class="px-8 py-4 bg-transparent border-2 border-white text-white font-semibold rounded-full hover:bg-white hover:text-[#2563eb] transition-all duration-200 text-lg"
                            >
                                Contact Us Online
                            </Link>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <Footer :settings="settings" />
    </div>
</template>
