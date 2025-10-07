<script setup>
import { Head, Link } from '@inertiajs/vue3';
import PublicLayout from '@/Layouts/PublicLayout.vue';

defineProps({
    settings: {
        type: Object,
        default: () => ({})
    }
});
</script>

<template>
    <Head title="Join Our Care Team - Violetta Home Care Limited" />

    <PublicLayout :settings="settings">
        <!-- Hero Section -->
        <section class="relative py-20 overflow-hidden">
            <!-- Background Image -->
            <div class="absolute inset-0">
                <img
                    src="/images/careers.jpg"
                    alt="Careers"
                    class="w-full h-full object-cover"
                />
                <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
            </div>

            <!-- Content -->
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 text-white">
                        Apply for Live-In Care Jobs
                    </h1>
                    <p class="text-xl text-white/95 mb-8">
                        Make a positive difference in people's lives with a rewarding career in care
                    </p>
                    <Link
                        :href="route('job-applications.create')"
                        class="inline-flex items-center px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl"
                    >
                        Apply Now
                    </Link>
                </div>
            </div>
        </section>

        <!-- Benefits Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-5xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-12 text-gray-900 text-center">Job Benefits</h2>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <!-- Financial Benefits -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h3 class="text-xl font-bold text-gray-900 mb-4">Financial Benefits</h3>
                            <ul class="space-y-3">
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">£750-£950 per week</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Market-leading pay rates</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Employer pension (3% contribution)</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Up to double pay for bank holidays</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Refer-a-Friend bonus up to £1000</span>
                                </li>
                            </ul>
                        </div>

                        <!-- Additional Benefits -->
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h3 class="text-xl font-bold text-gray-900 mb-4">Additional Benefits</h3>
                            <ul class="space-y-3">
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Paid annual leave (28-34 days)</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">BUPA Healthcare cash plan</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Free DBS check</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">24/7 support from our team</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Travel expenses paid</span>
                                </li>
                                <li class="flex items-start space-x-3">
                                    <svg class="w-5 h-5 text-[#2563eb] flex-shrink-0 mt-0.5" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                    </svg>
                                    <span class="text-gray-700">Employee Assistance Programme</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Job Responsibilities Section -->
        <section class="py-16 bg-gray-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">Job Responsibilities</h2>
                    <p class="text-lg text-gray-700 mb-8">
                        As a live-in carer, you'll provide compassionate, personalized care including:
                    </p>

                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="flex items-center space-x-3 p-4 bg-white rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">Personal care</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-white rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">Medication management</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-white rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">Home maintenance</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-white rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">Meal preparation</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-white rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">Errands & shopping</span>
                        </div>
                        <div class="flex items-center space-x-3 p-4 bg-white rounded-lg">
                            <svg class="w-5 h-5 text-[#2563eb]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                            </svg>
                            <span class="text-gray-700">Companion support</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Training Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-8 text-gray-900">Comprehensive Training</h2>
                    <p class="text-lg text-gray-700 mb-8">
                        We provide full induction and ongoing training to ensure you're confident and well-prepared for your role:
                    </p>

                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h4 class="font-bold text-gray-900 mb-2">Role Understanding</h4>
                            <p class="text-gray-700">Complete overview of your responsibilities</p>
                        </div>
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h4 class="font-bold text-gray-900 mb-2">Medication Management</h4>
                            <p class="text-gray-700">Safe administration and record-keeping</p>
                        </div>
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h4 class="font-bold text-gray-900 mb-2">Health & Safety</h4>
                            <p class="text-gray-700">Essential safety protocols and procedures</p>
                        </div>
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h4 class="font-bold text-gray-900 mb-2">First Aid</h4>
                            <p class="text-gray-700">Emergency response and first aid skills</p>
                        </div>
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h4 class="font-bold text-gray-900 mb-2">Manual Handling</h4>
                            <p class="text-gray-700">Safe moving and handling techniques</p>
                        </div>
                        <div class="bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5 p-6 rounded-xl">
                            <h4 class="font-bold text-gray-900 mb-2">Infection Control</h4>
                            <p class="text-gray-700">Prevention and control measures</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Application Process Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-5xl mx-auto">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-12 text-gray-900 text-center">6-Step Application Process</h2>

                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4 text-white font-bold text-xl">
                                1
                            </div>
                            <h3 class="text-lg font-bold text-gray-900 mb-2">Initial Contact</h3>
                            <p class="text-gray-700">Submit your online application or call us</p>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4 text-white font-bold text-xl">
                                2
                            </div>
                            <h3 class="text-lg font-bold text-gray-900 mb-2">Team Follow-up</h3>
                            <p class="text-gray-700">We'll contact you within 24 hours</p>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4 text-white font-bold text-xl">
                                3
                            </div>
                            <h3 class="text-lg font-bold text-gray-900 mb-2">Online Interview</h3>
                            <p class="text-gray-700">Convenient virtual interview process</p>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4 text-white font-bold text-xl">
                                4
                            </div>
                            <h3 class="text-lg font-bold text-gray-900 mb-2">Background Checks</h3>
                            <p class="text-gray-700">DBS and reference verification</p>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4 text-white font-bold text-xl">
                                5
                            </div>
                            <h3 class="text-lg font-bold text-gray-900 mb-2">In-Person Induction</h3>
                            <p class="text-gray-700">Two-day comprehensive training</p>
                        </div>

                        <div class="bg-white p-6 rounded-xl shadow-md">
                            <div class="w-12 h-12 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6] rounded-full flex items-center justify-center mb-4 text-white font-bold text-xl">
                                6
                            </div>
                            <h3 class="text-lg font-bold text-gray-900 mb-2">First Placement</h3>
                            <p class="text-gray-700">Start your rewarding care journey</p>
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
                        Ready to Start Your Care Career?
                    </h2>
                    <p class="text-xl text-white/90 mb-8">
                        Join our dedicated team and make a real difference in people's lives
                    </p>
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <Link
                            :href="route('job-applications.create')"
                            class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl"
                        >
                            Apply Online Now
                        </Link>
                        <a href="tel:+442032391227" class="px-8 py-4 bg-transparent border-2 border-white text-white font-semibold rounded-full hover:bg-white hover:text-[#2563eb] transition-all duration-200">
                            Call +44 20 3239 1227
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </PublicLayout>
</template>
