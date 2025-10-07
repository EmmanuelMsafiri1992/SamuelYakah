<script setup>
import { Head } from '@inertiajs/vue3';
import PublicLayout from '@/Layouts/PublicLayout.vue';

defineProps({
    settings: {
        type: Object,
        default: () => ({})
    }
});
</script>

<template>
    <Head title="Care Resources & Information - Violetta Home Care Limited" />

    <PublicLayout :settings="settings">
        <!-- Hero Section -->
        <section class="relative py-20 overflow-hidden">
            <!-- Background Image -->
            <div class="absolute inset-0">
                <img
                    src="/images/care-team.jpg"
                    alt="Resources"
                    class="w-full h-full object-cover"
                />
                <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
            </div>

            <!-- Content -->
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 text-white">
                        Care Resources & Information
                    </h1>
                    <p class="text-xl text-white/95 mb-8">
                        Helpful resources and information to support you in making informed care decisions
                    </p>
                </div>
            </div>
        </section>

        <!-- Resources Grid Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-6xl mx-auto">
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                        <!-- Resource Card 1 -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl shadow-md hover:shadow-xl transition-all duration-200">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4">
                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
                                </svg>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 mb-3">Care Guides</h3>
                            <p class="text-gray-700 mb-4">
                                Comprehensive guides on various aspects of live-in care, from getting started to managing complex conditions.
                            </p>
                        </div>

                        <!-- Resource Card 2 -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl shadow-md hover:shadow-xl transition-all duration-200">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4">
                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                                </svg>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 mb-3">Useful Forms</h3>
                            <p class="text-gray-700 mb-4">
                                Download important forms and documents for care assessments, funding applications, and service agreements.
                            </p>
                        </div>

                        <!-- Resource Card 3 -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl shadow-md hover:shadow-xl transition-all duration-200">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4">
                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 mb-3">FAQs</h3>
                            <p class="text-gray-700 mb-4">
                                Find answers to commonly asked questions about our services, care options, and the care process.
                            </p>
                        </div>

                        <!-- Resource Card 4 -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl shadow-md hover:shadow-xl transition-all duration-200">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4">
                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 mb-3">Condition-Specific Information</h3>
                            <p class="text-gray-700 mb-4">
                                Detailed information about caring for specific conditions including dementia, Parkinson's, and more.
                            </p>
                        </div>

                        <!-- Resource Card 5 -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl shadow-md hover:shadow-xl transition-all duration-200">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4">
                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                                </svg>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 mb-3">Family Support</h3>
                            <p class="text-gray-700 mb-4">
                                Resources and guidance for family members supporting a loved one receiving care at home.
                            </p>
                        </div>

                        <!-- Resource Card 6 -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl shadow-md hover:shadow-xl transition-all duration-200">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4">
                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1" />
                                </svg>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 mb-3">External Resources</h3>
                            <p class="text-gray-700 mb-4">
                                Links to trusted external organizations, charities, and support services for additional help.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Key Resources Section -->
        <section class="py-16 bg-gray-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">Key Resources</h2>

                    <div class="space-y-6">
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">Getting Started with Live-in Care</h3>
                            <p class="text-gray-700 mb-4">
                                A comprehensive guide to help you understand what live-in care involves, how to prepare your home, and what to expect from your care professional.
                            </p>
                            <a href="/#contact" class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold">
                                Learn More
                                <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </a>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">Understanding Care Costs</h3>
                            <p class="text-gray-700 mb-4">
                                Transparent information about care costs, what's included in our pricing, and how to plan your care budget effectively.
                            </p>
                            <a href="/care-funding" class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold">
                                View Funding Options
                                <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </a>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">Care Quality & Standards</h3>
                            <p class="text-gray-700 mb-4">
                                Information about our quality standards, CQC registration, and our commitment to excellence in care delivery.
                            </p>
                            <a href="/#about" class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold">
                                Read More
                                <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Support Organizations Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">Helpful Organizations</h2>
                    <p class="text-lg text-gray-700 mb-8">
                        These trusted organizations provide additional support and information for people needing care and their families:
                    </p>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="border-l-4 border-[#2563eb] pl-4">
                            <h4 class="font-bold text-gray-900 mb-2">Age UK</h4>
                            <p class="text-gray-700">Support and advice for older people and their families</p>
                        </div>
                        <div class="border-l-4 border-[#2563eb] pl-4">
                            <h4 class="font-bold text-gray-900 mb-2">Alzheimer's Society</h4>
                            <p class="text-gray-700">Information and support for people with dementia</p>
                        </div>
                        <div class="border-l-4 border-[#2563eb] pl-4">
                            <h4 class="font-bold text-gray-900 mb-2">Parkinson's UK</h4>
                            <p class="text-gray-700">Support for people affected by Parkinson's disease</p>
                        </div>
                        <div class="border-l-4 border-[#2563eb] pl-4">
                            <h4 class="font-bold text-gray-900 mb-2">Carers UK</h4>
                            <p class="text-gray-700">Support and advice for family carers</p>
                        </div>
                        <div class="border-l-4 border-[#2563eb] pl-4">
                            <h4 class="font-bold text-gray-900 mb-2">NHS Information</h4>
                            <p class="text-gray-700">Healthcare information and NHS services</p>
                        </div>
                        <div class="border-l-4 border-[#2563eb] pl-4">
                            <h4 class="font-bold text-gray-900 mb-2">Citizens Advice</h4>
                            <p class="text-gray-700">Free, confidential advice on legal and financial matters</p>
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
                        Need More Information?
                    </h2>
                    <p class="text-xl text-white/90 mb-8">
                        Our team is here to answer your questions and provide personalized guidance
                    </p>
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <a href="tel:+442032391227" class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl">
                            Call +44 20 3239 1227
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
