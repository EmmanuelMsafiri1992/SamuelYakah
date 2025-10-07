<script setup>
import { Head, Link, usePage } from '@inertiajs/vue3';
import { ref, computed } from 'vue';
import Header from '@/Components/Public/Header.vue';
import Footer from '@/Components/Public/Footer.vue';

const props = defineProps({
    sections: {
        type: Object,
        default: () => ({})
    },
    faqs: {
        type: Array,
        default: () => []
    },
    benefits: {
        type: Array,
        default: () => []
    },
    trainingModules: {
        type: Array,
        default: () => []
    },
    jobs: {
        type: Array,
        default: () => []
    },
    testimonials: {
        type: Array,
        default: () => []
    },
    blogPosts: {
        type: Array,
        default: () => []
    },
    settings: {
        type: Object,
        default: () => ({})
    },
    currentLocale: {
        type: String,
        default: 'en'
    }
});

const openFaqIndex = ref(null);
const searchLocation = ref('');
const currentTestimonial = ref(0);
const jobsExpanded = ref(false);

const toggleFaq = (index) => {
    openFaqIndex.value = openFaqIndex.value === index ? null : index;
};

const searchJobs = () => {
    // Implement job search functionality
    console.log('Searching jobs in:', searchLocation.value);
};

const nextTestimonial = () => {
    currentTestimonial.value = (currentTestimonial.value + 1) % defaultTestimonials.length;
};

const prevTestimonial = () => {
    currentTestimonial.value = (currentTestimonial.value - 1 + defaultTestimonials.length) % defaultTestimonials.length;
};

const applicationSteps = [
    {
        number: 1,
        title: 'Submit Application',
        description: 'Complete our simple online form and upload your CV in minutes.',
        icon: 'M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z'
    },
    {
        number: 2,
        title: 'Initial Review',
        description: 'Our team reviews your application and contacts you within 48 hours.',
        icon: 'M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4'
    },
    {
        number: 3,
        title: 'Interview & Assessment',
        description: 'Meet our team to discuss your experience and career aspirations.',
        icon: 'M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z'
    },
    {
        number: 4,
        title: 'Training Program',
        description: 'Complete our comprehensive CQC-approved training course.',
        icon: 'M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253'
    },
    {
        number: 5,
        title: 'Start Your Career',
        description: 'Get matched with a client and begin your rewarding journey.',
        icon: 'M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z'
    }
];

const defaultBenefits = [
    {
        title: 'Competitive Salary',
        description: 'Earn between £600-£950 per week with guaranteed hours and regular pay increases.',
        icon: 'M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z'
    },
    {
        title: 'Accommodation Included',
        description: 'Live rent-free in comfortable accommodation with your own private space.',
        icon: 'M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6'
    },
    {
        title: 'Work-Life Balance',
        description: 'Enjoy 2 days off per week and regular breaks to maintain your wellbeing.',
        icon: 'M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z'
    },
    {
        title: 'Full Training Provided',
        description: 'CQC-approved training and continuous professional development opportunities.',
        icon: 'M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z'
    },
    {
        title: 'Career Progression',
        description: 'Clear pathways to senior carer roles, team leader positions, and management.',
        icon: 'M13 7h8m0 0v8m0-8l-8 8-4-4-6 6'
    },
    {
        title: 'Support Network',
        description: '24/7 support from our dedicated team and regular supervision sessions.',
        icon: 'M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z'
    }
];

const dutyCategories = computed(() => {
    const t = usePage().props?.translations?.home || {};
    return [
        {
            category: t.personal_care || 'Personal Care',
            icon: 'M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z',
            duties: [
                t.personal_care_bathing || 'Assisting with bathing, dressing, and grooming',
                t.personal_care_mobility || 'Supporting mobility and transfers',
                t.personal_care_continence || 'Continence care with dignity and respect',
                t.personal_care_hygiene || 'Maintaining personal hygiene standards'
            ]
        },
        {
            category: t.health_medication || 'Health & Medication',
            icon: 'M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01',
            duties: [
                t.health_administering || 'Administering medication as prescribed',
                t.health_monitoring || 'Monitoring health conditions',
                t.health_recording || 'Recording vital signs and observations',
                t.health_liaising || 'Liaising with healthcare professionals'
            ]
        },
        {
            category: t.daily_living || 'Daily Living Support',
            icon: 'M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6',
            duties: [
                t.daily_meals || 'Preparing nutritious meals and snacks',
                t.daily_housekeeping || 'Light housekeeping and laundry',
                t.daily_shopping || 'Shopping and errands',
                t.daily_environment || 'Maintaining a safe, clean environment'
            ]
        },
        {
            category: t.companionship || 'Companionship & Activities',
            icon: 'M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z',
            duties: [
                t.companionship_emotional || 'Providing emotional support and conversation',
                t.companionship_appointments || 'Accompanying to appointments and outings',
                t.companionship_hobbies || 'Facilitating hobbies and interests',
                t.companionship_social || 'Encouraging social interaction'
            ]
        }
    ];
});

const defaultTrainingModules = [
    {
        title: 'Induction Training',
        description: 'Introduction to care principles, policies, and procedures.',
        duration: 'Week 1',
        icon: 'M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253'
    },
    {
        title: 'Health & Safety',
        description: 'Essential health and safety practices, manual handling, and infection control.',
        duration: 'Week 1-2',
        icon: 'M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z'
    },
    {
        title: 'Care Certificate',
        description: 'CQC-approved Care Certificate covering all fundamental standards.',
        duration: 'Week 2-4',
        icon: 'M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z'
    },
    {
        title: 'Specialized Care',
        description: 'Training in dementia care, palliative care, and condition-specific support.',
        duration: 'Week 4-6',
        icon: 'M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z'
    },
    {
        title: 'Medication Management',
        description: 'Safe administration, storage, and recording of medications.',
        duration: 'Week 5-6',
        icon: 'M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10'
    },
    {
        title: 'Communication Skills',
        description: 'Effective communication, active listening, and person-centered care.',
        duration: 'Ongoing',
        icon: 'M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z'
    },
    {
        title: 'Professional Development',
        description: 'Continuous learning opportunities and career advancement pathways.',
        duration: 'Ongoing',
        icon: 'M13 10V3L4 14h7v7l9-11h-7z'
    },
    {
        title: 'Safeguarding & Ethics',
        description: 'Protecting vulnerable adults, confidentiality, and professional boundaries.',
        duration: 'Week 3-4',
        icon: 'M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z'
    }
];

const defaultTestimonials = [
    {
        name: 'Sarah Johnson',
        role: 'Live-in Carer, 3 years experience',
        image: 'https://randomuser.me/api/portraits/women/44.jpg',
        quote: 'Joining Helping Hands was the best career decision I ever made. The training was excellent, and I feel truly valued. Every day I make a real difference in my client\'s life, and that\'s incredibly rewarding.',
        rating: 5
    },
    {
        name: 'Michael Peters',
        role: 'Senior Carer, 5 years experience',
        image: 'https://randomuser.me/api/portraits/men/32.jpg',
        quote: 'The support and professional development opportunities are outstanding. I started as a carer and have progressed to a senior role. The work-life balance and competitive salary make this a career worth pursuing.',
        rating: 5
    },
    {
        name: 'Emma Thompson',
        role: 'Live-in Carer, 2 years experience',
        image: 'https://randomuser.me/api/portraits/women/68.jpg',
        quote: 'I love the personal connection I build with my clients. The accommodation is comfortable, and having two days off each week means I can maintain my own life while doing meaningful work.',
        rating: 5
    },
    {
        name: 'David Martinez',
        role: 'Live-in Carer, 4 years experience',
        image: 'https://randomuser.me/api/portraits/men/46.jpg',
        quote: 'The 24/7 support from the team gives me confidence in my role. I never feel alone, and the training prepared me exceptionally well for the challenges of live-in care.',
        rating: 5
    }
];

const defaultFAQs = [
    {
        question: 'What qualifications do I need to become a live-in carer?',
        answer: 'No formal qualifications are required to start. We provide comprehensive training including the CQC-approved Care Certificate. However, a caring nature, good communication skills, and a genuine desire to help others are essential. Experience in care is beneficial but not mandatory.'
    },
    {
        question: 'How much can I earn as a live-in carer?',
        answer: 'Live-in carers typically earn between £600-£950 per week, depending on experience and the complexity of care required. This includes accommodation, so you save significantly on living costs. Many carers find they can save more than in other professions.'
    },
    {
        question: 'What are the working hours and time off?',
        answer: 'Live-in carers work Monday to Friday or can choose other 5-day schedules with 2 days off per week. You will have regular breaks during the day and overnight (typically 8 hours). Your schedule is agreed in advance to ensure work-life balance.'
    },
    {
        question: 'What kind of accommodation is provided?',
        answer: 'You will have your own private bedroom in your client\'s home. The accommodation varies but always includes a comfortable bed, storage space, and access to bathroom facilities. Many placements offer en-suite rooms.'
    },
    {
        question: 'Do I need a driver\'s license or car?',
        answer: 'While not always essential, having a driver\'s license and access to a car significantly increases your placement opportunities. Many clients need support with shopping, appointments, and social activities. We do have some placements that don\'t require driving.'
    },
    {
        question: 'What training and support will I receive?',
        answer: 'All new carers complete a comprehensive induction and the Care Certificate. You will receive ongoing training in specialized areas like dementia care, medication management, and health & safety. You will also have regular supervision sessions and 24/7 support from our team.'
    },
    {
        question: 'Can I choose my clients and locations?',
        answer: 'Yes, we work with you to find placements that match your skills, preferences, and location requirements. We never force placements, and you will always meet clients before accepting a role. Your compatibility and comfort are priorities.'
    },
    {
        question: 'What are the career progression opportunities?',
        answer: 'Many carers progress to senior carer roles, specialist positions (dementia care, palliative care), team leaders, or even care management. We actively support professional development and offer training for career advancement.'
    },
    {
        question: 'Is this job suitable for someone changing careers?',
        answer: 'Absolutely! Many successful live-in carers come from completely different backgrounds. If you are compassionate, patient, and want meaningful work, we provide all the training you need. Your life experience is valuable in building relationships with clients.'
    },
    {
        question: 'What happens if a placement doesn\'t work out?',
        answer: 'Sometimes placements don\'t work for various reasons, and that\'s okay. We will work quickly to find you a new placement that is a better fit. We support you throughout the process and learn from each experience to improve future matches.'
    }
];

const defaultJobs = [
    {
        id: 1,
        title: 'Live-in Carer - London',
        location: 'London, Greater London',
        salary: '£800-£900/week',
        type: 'Full-time',
        description: 'Seeking an experienced carer for elderly gentleman with mobility issues.',
        posted: '2 days ago'
    },
    {
        id: 2,
        title: 'Live-in Carer - Manchester',
        location: 'Manchester, Greater Manchester',
        salary: '£700-£800/week',
        type: 'Full-time',
        description: 'Care for lady with dementia in comfortable family home.',
        posted: '5 days ago'
    },
    {
        id: 3,
        title: 'Live-in Carer - Birmingham',
        location: 'Birmingham, West Midlands',
        salary: '£750-£850/week',
        type: 'Full-time',
        description: 'Supporting couple with personal care and daily activities.',
        posted: '1 week ago'
    }
];

const defaultBlogPosts = [
    {
        id: 1,
        title: 'Understanding Dementia Care: A Beginner\'s Guide',
        excerpt: 'Learn the fundamentals of providing compassionate care for people living with dementia.',
        image: 'https://images.unsplash.com/photo-1584515979956-d9f6e5d09982?w=800&h=500&fit=crop',
        category: 'Education',
        date: '2025-09-15',
        readTime: '5 min read'
    },
    {
        id: 2,
        title: 'Top 10 Tips for New Live-in Carers',
        excerpt: 'Essential advice to help you succeed in your first weeks as a live-in carer.',
        image: 'https://images.unsplash.com/photo-1559757175-5700dde675bc?w=800&h=500&fit=crop',
        category: 'Career Advice',
        date: '2025-09-10',
        readTime: '7 min read'
    },
    {
        id: 3,
        title: 'Self-Care for Carers: Maintaining Your Wellbeing',
        excerpt: 'Practical strategies to ensure you stay healthy and balanced while caring for others.',
        image: 'https://images.unsplash.com/photo-1544027993-37dbfe43562a?w=800&h=500&fit=crop',
        category: 'Wellbeing',
        date: '2025-09-05',
        readTime: '6 min read'
    }
];

const displayedBenefits = props.benefits.length > 0 ? props.benefits : defaultBenefits;
const displayedTrainingModules = props.trainingModules.length > 0 ? props.trainingModules : defaultTrainingModules;
const displayedTestimonials = props.testimonials.length > 0 ? props.testimonials : defaultTestimonials;
const displayedFAQs = props.faqs.length > 0 ? props.faqs : defaultFAQs;
const displayedJobs = props.jobs.length > 0 ? props.jobs : defaultJobs;
const displayedBlogPosts = props.blogPosts.length > 0 ? props.blogPosts : defaultBlogPosts;
</script>

<template>
    <Head :title="settings.site_name || 'Helping Hands - Compassionate Care Careers'" />

    <div class="min-h-screen bg-white">
        <Header :settings="settings" :currentLocale="currentLocale" />

        <!-- Hero Section -->
        <section id="home" class="relative bg-gradient-to-br from-blue-600 via-blue-700 to-teal-600 text-white overflow-hidden">
            <!-- Background Pattern -->
            <div class="absolute inset-0 opacity-10">
                <div class="absolute inset-0" style="background-image: url('data:image/svg+xml,%3Csvg width=&quot;60&quot; height=&quot;60&quot; viewBox=&quot;0 0 60 60&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot;%3E%3Cg fill=&quot;none&quot; fill-rule=&quot;evenodd&quot;%3E%3Cg fill=&quot;%23ffffff&quot; fill-opacity=&quot;1&quot;%3E%3Cpath d=&quot;M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z&quot;/%3E%3C/g%3E%3C/g%3E%3C/svg%3E');"></div>
            </div>

            <div class="container mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-32 relative z-10">
                <div class="max-w-5xl mx-auto">
                    <div class="text-center mb-8">
                        <!-- Logo with Hands Icon -->
                        <div class="inline-flex items-center justify-center mb-6">
                            <div class="bg-white bg-opacity-20 backdrop-blur-sm rounded-full p-4 mr-4">
                                <svg class="w-12 h-12 text-teal-300" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm-5-9h2v6H7zm4-3h2v9h-2zm4 3h2v6h-2z"/>
                                </svg>
                            </div>
                            <h1 class="text-5xl md:text-6xl lg:text-7xl font-bold">
                                Helping <span class="text-teal-300">Hands</span>
                            </h1>
                        </div>

                        <p class="text-xl md:text-2xl font-medium text-teal-100 mb-3">
                            {{ $page.props.translations.home.hero_title }}
                        </p>
                    </div>

                    <div class="text-center mb-12">
                        <h2 class="text-3xl md:text-4xl lg:text-5xl font-bold mb-6 leading-tight">
                            {{ sections.hero_title || $page.props.translations.home.hero_subtitle }}
                        </h2>
                        <p class="text-lg md:text-xl text-blue-100 max-w-3xl mx-auto mb-8">
                            {{ sections.hero_subtitle || $page.props.translations.home.hero_description }}
                        </p>

                        <div class="flex flex-col sm:flex-row justify-center gap-4">
                            <Link
                                :href="route('job-applications.create')"
                                class="inline-flex items-center justify-center px-8 py-4 bg-teal-400 text-blue-900 font-bold rounded-lg hover:bg-teal-300 transition-all duration-200 shadow-lg hover:shadow-xl transform hover:-translate-y-1"
                            >
                                {{ $page.props.translations.home.apply_now }}
                                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                            </Link>
                            <a
                                href="#jobs"
                                class="inline-flex items-center justify-center px-8 py-4 bg-white bg-opacity-20 backdrop-blur-sm text-white font-bold rounded-lg hover:bg-opacity-30 transition-all duration-200 shadow-lg border-2 border-white border-opacity-30"
                            >
                                {{ $page.props.translations.home.browse_jobs }}
                                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                                </svg>
                            </a>
                        </div>
                    </div>

                    <!-- Quick Stats -->
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-6 mt-12">
                        <div class="text-center bg-white bg-opacity-10 backdrop-blur-sm rounded-lg p-4">
                            <div class="text-3xl md:text-4xl font-bold text-teal-300 mb-1">£600-£950</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.weekly_salary }}</div>
                        </div>
                        <div class="text-center bg-white bg-opacity-10 backdrop-blur-sm rounded-lg p-4">
                            <div class="text-3xl md:text-4xl font-bold text-teal-300 mb-1">100%</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.free_training }}</div>
                        </div>
                        <div class="text-center bg-white bg-opacity-10 backdrop-blur-sm rounded-lg p-4">
                            <div class="text-3xl md:text-4xl font-bold text-teal-300 mb-1">2 Days</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.off_per_week }}</div>
                        </div>
                        <div class="text-center bg-white bg-opacity-10 backdrop-blur-sm rounded-lg p-4">
                            <div class="text-3xl md:text-4xl font-bold text-teal-300 mb-1">24/7</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.support }}</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Wave Divider -->
            <div class="absolute bottom-0 left-0 right-0">
                <svg viewBox="0 0 1440 120" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 120L60 110C120 100 240 80 360 70C480 60 600 60 720 65C840 70 960 80 1080 85C1200 90 1320 90 1380 90L1440 90V120H1380C1320 120 1200 120 1080 120C960 120 840 120 720 120C600 120 480 120 360 120C240 120 120 120 60 120H0Z" fill="white"/>
                </svg>
            </div>
        </section>

        <!-- Job Search Section with Toggle -->
        <section id="jobs" class="py-16 lg:py-20 bg-gradient-to-br from-blue-50 via-white to-teal-50 relative overflow-hidden">
            <!-- Background Decorative Elements -->
            <div class="absolute top-0 right-0 w-96 h-96 bg-gradient-to-br from-blue-200/20 to-teal-200/20 rounded-full blur-3xl"></div>
            <div class="absolute bottom-0 left-0 w-96 h-96 bg-gradient-to-tr from-teal-200/20 to-blue-200/20 rounded-full blur-3xl"></div>

            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-6xl mx-auto">
                    <!-- Attractive Header with Toggle Button -->
                    <div class="text-center mb-12">
                        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                            {{ $page.props.translations.home.jobs_title }}
                        </h2>
                        <p class="text-xl text-gray-600 mb-8">
                            {{ $page.props.translations.home.jobs_subtitle }}
                        </p>

                        <!-- Toggle Button with Image Preview -->
                        <button
                            @click="jobsExpanded = !jobsExpanded"
                            class="group relative inline-flex items-center gap-4 px-8 py-4 bg-gradient-to-r from-blue-600 to-teal-500 hover:from-blue-700 hover:to-teal-600 text-white font-bold rounded-xl transition-all duration-300 shadow-lg hover:shadow-2xl transform hover:-translate-y-1"
                        >
                            <svg
                                class="w-6 h-6 transition-transform duration-300"
                                :class="{ 'rotate-180': jobsExpanded }"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                            >
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                            </svg>
                            <span class="text-lg">
                                {{ jobsExpanded ? 'Hide Job Search & Positions' : 'Explore Available Positions' }}
                            </span>
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                            </svg>
                        </button>
                    </div>

                    <!-- Preview Images when Collapsed -->
                    <div v-if="!jobsExpanded" class="mb-8">
                        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-4xl mx-auto">
                            <div class="relative group overflow-hidden rounded-xl shadow-lg">
                                <img
                                    src="https://images.unsplash.com/photo-1576765608535-5f04d1e3f289?w=400&h=300&fit=crop"
                                    alt="Caring professional"
                                    class="w-full h-48 object-cover transition-transform duration-300 group-hover:scale-110"
                                />
                                <div class="absolute inset-0 bg-gradient-to-t from-blue-900/70 to-transparent flex items-end p-4">
                                    <p class="text-white font-semibold text-sm">Professional Care</p>
                                </div>
                            </div>
                            <div class="relative group overflow-hidden rounded-xl shadow-lg">
                                <img
                                    src="https://images.unsplash.com/photo-1559839734-2b71ea197ec2?w=400&h=300&fit=crop"
                                    alt="Team support"
                                    class="w-full h-48 object-cover transition-transform duration-300 group-hover:scale-110"
                                />
                                <div class="absolute inset-0 bg-gradient-to-t from-teal-900/70 to-transparent flex items-end p-4">
                                    <p class="text-white font-semibold text-sm">Team Support</p>
                                </div>
                            </div>
                            <div class="relative group overflow-hidden rounded-xl shadow-lg">
                                <img
                                    src="https://images.unsplash.com/photo-1516574187841-cb9cc2ca948b?w=400&h=300&fit=crop"
                                    alt="Career growth"
                                    class="w-full h-48 object-cover transition-transform duration-300 group-hover:scale-110"
                                />
                                <div class="absolute inset-0 bg-gradient-to-t from-blue-900/70 to-transparent flex items-end p-4">
                                    <p class="text-white font-semibold text-sm">Career Growth</p>
                                </div>
                            </div>
                            <div class="relative group overflow-hidden rounded-xl shadow-lg">
                                <img
                                    src="https://images.unsplash.com/photo-1582213782179-e0d53f98f2ca?w=400&h=300&fit=crop"
                                    alt="Rewarding work"
                                    class="w-full h-48 object-cover transition-transform duration-300 group-hover:scale-110"
                                />
                                <div class="absolute inset-0 bg-gradient-to-t from-teal-900/70 to-transparent flex items-end p-4">
                                    <p class="text-white font-semibold text-sm">Rewarding Work</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Collapsible Content -->
                    <transition
                        enter-active-class="transition-all duration-500 ease-out"
                        enter-from-class="opacity-0 transform scale-95 -translate-y-8"
                        enter-to-class="opacity-100 transform scale-100 translate-y-0"
                        leave-active-class="transition-all duration-300 ease-in"
                        leave-from-class="opacity-100 transform scale-100 translate-y-0"
                        leave-to-class="opacity-0 transform scale-95 -translate-y-8"
                    >
                        <div v-if="jobsExpanded" class="space-y-12">
                            <!-- Search Bar -->
                            <div class="max-w-3xl mx-auto">
                                <div class="bg-white rounded-2xl shadow-xl p-8 border border-gray-200">
                                    <form @submit.prevent="searchJobs" class="flex flex-col md:flex-row gap-4">
                                        <div class="flex-1">
                                            <div class="relative">
                                                <svg class="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                                </svg>
                                                <input
                                                    v-model="searchLocation"
                                                    type="text"
                                                    :placeholder="$page.props.translations.home.enter_location"
                                                    class="w-full pl-12 pr-4 py-4 border-2 border-gray-200 rounded-xl focus:border-blue-500 focus:ring-4 focus:ring-blue-200 transition-all text-lg"
                                                />
                                            </div>
                                        </div>
                                        <button
                                            type="submit"
                                            class="px-8 py-4 bg-gradient-to-r from-blue-600 to-teal-500 hover:from-blue-700 hover:to-teal-600 text-white font-bold rounded-xl transition-all duration-200 shadow-lg hover:shadow-xl flex items-center justify-center"
                                        >
                                            <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                                            </svg>
                                            {{ $page.props.translations.home.search_jobs }}
                                        </button>
                                    </form>
                                </div>
                            </div>

                            <!-- Featured Jobs -->
                            <div>
                                <h3 class="text-2xl font-bold text-gray-900 mb-8 text-center">{{ $page.props.translations.home.featured_positions }}</h3>
                                <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                                    <div
                                        v-for="job in displayedJobs"
                                        :key="job.id"
                                        class="bg-white rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 p-6 border border-gray-100 hover:border-blue-300 group hover:-translate-y-2"
                                    >
                                        <div class="flex items-start justify-between mb-4">
                                            <div class="flex-1">
                                                <h4 class="text-lg font-bold text-gray-900 mb-2 group-hover:text-blue-600 transition-colors">{{ job.title }}</h4>
                                                <div class="flex items-center text-gray-600 text-sm mb-1">
                                                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                                    </svg>
                                                    {{ job.location }}
                                                </div>
                                            </div>
                                            <span class="px-3 py-1 bg-gradient-to-r from-teal-100 to-blue-100 text-teal-700 text-xs font-semibold rounded-full">
                                                {{ job.type === 'Full-time' ? $page.props.translations.home.full_time : job.type }}
                                            </span>
                                        </div>

                                        <p class="text-gray-600 text-sm mb-4">{{ job.description }}</p>

                                        <div class="flex items-center justify-between pt-4 border-t border-gray-200">
                                            <div class="flex items-center text-blue-600 font-bold">
                                                <svg class="w-5 h-5 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                                </svg>
                                                {{ job.salary }}
                                            </div>
                                            <span class="text-sm text-gray-500">{{ job.posted }}</span>
                                        </div>

                                        <Link
                                            :href="route('job-applications.create')"
                                            class="mt-4 w-full inline-flex items-center justify-center px-4 py-2 bg-gradient-to-r from-blue-600 to-teal-500 hover:from-blue-700 hover:to-teal-600 text-white font-semibold rounded-lg transition-all duration-200 shadow-md hover:shadow-lg"
                                        >
                                            {{ $page.props.translations.home.apply_now }}
                                            <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                            </svg>
                                        </Link>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </transition>
                </div>
            </div>
        </section>

        <!-- Benefits Section - Why Choose Helping Hands -->
        <section id="benefits" class="py-16 lg:py-24 bg-gradient-to-br from-gray-50 to-blue-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-12">
                    <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                        {{ sections.benefits_title || $page.props.translations.home.benefits_title }}
                    </h2>
                    <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                        {{ sections.benefits_subtitle || $page.props.translations.home.benefits_subtitle }}
                    </p>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 max-w-7xl mx-auto">
                    <div
                        v-for="(benefit, index) in displayedBenefits"
                        :key="index"
                        class="bg-white rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 p-8 border border-gray-100 group hover:-translate-y-2 relative overflow-hidden"
                    >
                        <!-- Animated Background Gradient -->
                        <div class="absolute top-0 left-0 w-full h-1 bg-gradient-to-r from-blue-600 via-teal-400 to-blue-600 group-hover:h-2 transition-all duration-300"></div>

                        <!-- Icon Container with stronger contrast -->
                        <div class="relative w-20 h-20 bg-gradient-to-br from-blue-600 to-teal-500 rounded-2xl flex items-center justify-center mb-6 group-hover:scale-110 group-hover:rotate-3 transition-all duration-300 shadow-lg">
                            <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" stroke-width="2.5" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" :d="benefit.icon" />
                            </svg>
                            <!-- Decorative dots -->
                            <div class="absolute -top-1 -right-1 w-3 h-3 bg-teal-400 rounded-full animate-pulse"></div>
                        </div>

                        <h3 class="text-xl font-bold text-gray-900 mb-3 group-hover:text-blue-600 transition-colors duration-300">{{ benefit.title }}</h3>
                        <p class="text-gray-600 leading-relaxed">{{ benefit.description }}</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Your Role & Responsibilities Section -->
        <section id="duties" class="py-16 lg:py-24 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-6xl mx-auto">
                    <div class="text-center mb-12">
                        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                            {{ sections.duties_title || $page.props.translations.home.duties_title }}
                        </h2>
                        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                            {{ sections.duties_subtitle || $page.props.translations.home.duties_subtitle }}
                        </p>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div
                            v-for="(category, index) in dutyCategories"
                            :key="index"
                            class="bg-gradient-to-br from-blue-50 to-teal-50 rounded-xl p-8 border-l-4 border-blue-600"
                        >
                            <div class="flex items-center mb-6">
                                <div class="w-12 h-12 bg-blue-600 rounded-lg flex items-center justify-center mr-4">
                                    <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                                        <path :d="category.icon" />
                                    </svg>
                                </div>
                                <h3 class="text-2xl font-bold text-gray-900">{{ category.category }}</h3>
                            </div>

                            <ul class="space-y-3">
                                <li
                                    v-for="(duty, dutyIndex) in category.duties"
                                    :key="dutyIndex"
                                    class="flex items-start"
                                >
                                    <div class="flex-shrink-0 w-6 h-6 bg-teal-400 rounded-full flex items-center justify-center mt-0.5 mr-3">
                                        <svg class="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                                        </svg>
                                    </div>
                                    <p class="text-gray-700">{{ duty }}</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Training & Development Section -->
        <section id="training" class="py-16 lg:py-24 bg-gradient-to-br from-blue-900 to-teal-800 text-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-12">
                    <div class="inline-flex items-center justify-center bg-teal-400 text-blue-900 px-4 py-2 rounded-full font-semibold text-sm mb-4">
                        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
                        </svg>
                        {{ $page.props.translations.home.training_title }}
                    </div>
                    <h2 class="text-3xl md:text-4xl font-bold mb-4">
                        {{ sections.training_title || $page.props.translations.home.training_subtitle }}
                    </h2>
                    <p class="text-xl text-blue-100 max-w-3xl mx-auto">
                        {{ sections.training_subtitle || $page.props.translations.home.training_description }}
                    </p>
                </div>

                <div class="max-w-7xl mx-auto">
                    <!-- Timeline View -->
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                        <div
                            v-for="(module, index) in displayedTrainingModules"
                            :key="index"
                            class="relative"
                        >
                            <div class="bg-white bg-opacity-10 backdrop-blur-sm rounded-xl p-6 hover:bg-opacity-20 transition-all duration-300 h-full border border-white border-opacity-20">
                                <div class="flex items-center mb-4">
                                    <div class="w-12 h-12 bg-teal-400 text-blue-900 rounded-lg flex items-center justify-center font-bold text-lg mr-3">
                                        {{ index + 1 }}
                                    </div>
                                    <div class="text-sm font-semibold text-teal-300">{{ module.duration }}</div>
                                </div>

                                <h3 class="text-lg font-bold mb-3">{{ module.title }}</h3>
                                <p class="text-blue-100 text-sm mb-4">{{ module.description }}</p>

                                <div class="flex items-center text-teal-300">
                                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" :d="module.icon" />
                                    </svg>
                                </div>
                            </div>

                            <!-- Connection Line -->
                            <div
                                v-if="index < 7"
                                class="hidden lg:block absolute top-1/2 -right-3 w-6 h-0.5 bg-teal-400 opacity-30"
                            ></div>
                        </div>
                    </div>

                    <div class="mt-12 text-center">
                        <div class="bg-white bg-opacity-10 backdrop-blur-sm rounded-xl p-8 max-w-3xl mx-auto border border-white border-opacity-20">
                            <h3 class="text-2xl font-bold mb-4">{{ $page.props.translations.home.career_progression }}</h3>
                            <p class="text-blue-100 mb-6">
                                {{ $page.props.translations.home.career_progression_text }}
                            </p>
                            <div class="flex flex-wrap justify-center gap-3">
                                <span class="px-4 py-2 bg-teal-400 text-blue-900 rounded-full font-semibold text-sm">Live-in Carer</span>
                                <svg class="w-6 h-6 text-teal-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                                <span class="px-4 py-2 bg-white bg-opacity-20 text-white rounded-full font-semibold text-sm">Senior Carer</span>
                                <svg class="w-6 h-6 text-teal-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                                <span class="px-4 py-2 bg-white bg-opacity-20 text-white rounded-full font-semibold text-sm">Team Leader</span>
                                <svg class="w-6 h-6 text-teal-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                                <span class="px-4 py-2 bg-white bg-opacity-20 text-white rounded-full font-semibold text-sm">Care Manager</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Success Stories / Testimonials Section -->
        <section id="testimonials" class="py-16 lg:py-24 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-12">
                    <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                        {{ $page.props.translations.home.testimonials_title }}
                    </h2>
                    <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                        {{ $page.props.translations.home.testimonials_subtitle }}
                    </p>
                </div>

                <!-- Testimonials Grid -->
                <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-8 mb-8">
                    <div
                        v-for="(testimonial, index) in displayedTestimonials"
                        :key="index"
                        class="bg-gradient-to-br from-blue-50 to-teal-50 rounded-xl p-8 shadow-md hover:shadow-xl transition-all duration-300"
                    >
                        <div class="flex items-center mb-6">
                            <img
                                :src="testimonial.image"
                                :alt="testimonial.name"
                                class="w-16 h-16 rounded-full object-cover mr-4 border-4 border-white shadow-md"
                            />
                            <div>
                                <h4 class="font-bold text-gray-900">{{ testimonial.name }}</h4>
                                <p class="text-sm text-gray-600">{{ testimonial.role }}</p>
                                <div class="flex mt-1">
                                    <svg
                                        v-for="star in testimonial.rating"
                                        :key="star"
                                        class="w-4 h-4 text-yellow-400 fill-current"
                                        viewBox="0 0 24 24"
                                    >
                                        <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                                    </svg>
                                </div>
                            </div>
                        </div>

                        <div class="relative">
                            <svg class="absolute -top-2 -left-2 w-8 h-8 text-teal-300 opacity-50" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M14.017 21v-7.391c0-5.704 3.731-9.57 8.983-10.609l.995 2.151c-2.432.917-3.995 3.638-3.995 5.849h4v10h-9.983zm-14.017 0v-7.391c0-5.704 3.748-9.57 9-10.609l.996 2.151c-2.433.917-3.996 3.638-3.996 5.849h3.983v10h-9.983z"/>
                            </svg>
                            <p class="text-gray-700 italic leading-relaxed pl-6">
                                "{{ testimonial.quote }}"
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FAQ Section -->
        <section id="faqs" class="py-16 lg:py-24 bg-gray-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-4xl mx-auto">
                    <div class="text-center mb-12">
                        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                            {{ sections.faq_title || $page.props.translations.home.faq_title }}
                        </h2>
                        <p class="text-xl text-gray-600">
                            {{ sections.faq_subtitle || $page.props.translations.home.faq_subtitle }}
                        </p>
                    </div>

                    <div class="space-y-4">
                        <div
                            v-for="(faq, index) in displayedFAQs"
                            :key="index"
                            class="bg-white rounded-xl shadow-md overflow-hidden border-l-4 transition-all duration-300"
                            :class="openFaqIndex === index ? 'border-blue-600' : 'border-transparent'"
                        >
                            <button
                                @click="toggleFaq(index)"
                                class="w-full flex items-center justify-between p-6 text-left hover:bg-gray-50 transition-colors duration-200"
                            >
                                <span class="text-lg font-bold text-gray-900 pr-8">{{ faq.question }}</span>
                                <div class="flex-shrink-0">
                                    <div
                                        class="w-10 h-10 rounded-full flex items-center justify-center transition-all duration-300"
                                        :class="openFaqIndex === index ? 'bg-blue-600' : 'bg-gray-200'"
                                    >
                                        <svg
                                            class="w-6 h-6 transition-transform duration-300"
                                            :class="[
                                                openFaqIndex === index ? 'rotate-180 text-white' : 'text-gray-600'
                                            ]"
                                            fill="none"
                                            stroke="currentColor"
                                            viewBox="0 0 24 24"
                                        >
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                        </svg>
                                    </div>
                                </div>
                            </button>
                            <div
                                v-show="openFaqIndex === index"
                                class="px-6 pb-6 bg-gradient-to-br from-blue-50 to-teal-50"
                            >
                                <p class="text-gray-700 leading-relaxed">{{ faq.answer }}</p>
                            </div>
                        </div>
                    </div>

                    <div class="mt-12 text-center bg-white rounded-xl shadow-md p-8">
                        <h3 class="text-xl font-bold text-gray-900 mb-3">{{ $page.props.translations.home.still_questions }}</h3>
                        <p class="text-gray-600 mb-6">{{ $page.props.translations.home.recruitment_help }}</p>
                        <div class="flex flex-col sm:flex-row justify-center gap-4">
                            <a
                                href="tel:+441234567890"
                                class="inline-flex items-center justify-center px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg transition-all duration-200"
                            >
                                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                </svg>
                                {{ $page.props.translations.home.call_us }}
                            </a>
                            <a
                                href="mailto:info@helpinghands.com"
                                class="inline-flex items-center justify-center px-6 py-3 bg-teal-400 hover:bg-teal-500 text-blue-900 font-semibold rounded-lg transition-all duration-200"
                            >
                                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                </svg>
                                {{ $page.props.translations.home.email_us }}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Application Process Section -->
        <section id="apply" class="py-16 lg:py-24 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-12">
                    <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                        {{ sections.process_title || $page.props.translations.home.application_journey }}
                    </h2>
                    <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                        {{ sections.process_subtitle || $page.props.translations.home.application_steps }}
                    </p>
                </div>

                <div class="max-w-6xl mx-auto">
                    <div class="relative">
                        <!-- Desktop Timeline -->
                        <div class="hidden lg:block absolute top-24 left-0 right-0 h-1 bg-gradient-to-r from-blue-200 via-teal-200 to-blue-200"></div>

                        <div class="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-5 gap-8">
                            <div
                                v-for="step in applicationSteps"
                                :key="step.number"
                                class="relative"
                            >
                                <div class="bg-white rounded-xl p-6 shadow-lg hover:shadow-xl transition-all duration-300 border-2 border-gray-100 hover:border-blue-300 h-full">
                                    <!-- Step Number Circle -->
                                    <div class="flex justify-center mb-4">
                                        <div class="w-16 h-16 bg-gradient-to-br from-blue-600 to-teal-500 text-white rounded-full flex items-center justify-center text-2xl font-bold shadow-lg relative z-10">
                                            {{ step.number }}
                                        </div>
                                    </div>

                                    <!-- Icon -->
                                    <div class="flex justify-center mb-4">
                                        <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center">
                                            <svg class="w-6 h-6 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" :d="step.icon" />
                                            </svg>
                                        </div>
                                    </div>

                                    <h3 class="text-lg font-bold text-gray-900 mb-2 text-center">{{ step.title }}</h3>
                                    <p class="text-sm text-gray-600 text-center">{{ step.description }}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-center mt-12">
                        <div class="bg-gradient-to-br from-blue-50 to-teal-50 rounded-xl p-8 max-w-2xl mx-auto mb-8">
                            <h3 class="text-2xl font-bold text-gray-900 mb-4">{{ $page.props.translations.home.ready_started }}</h3>
                            <p class="text-gray-700 mb-6">
                                {{ $page.props.translations.home.join_carers }}
                            </p>
                            <Link
                                :href="route('job-applications.create')"
                                class="inline-flex items-center justify-center px-8 py-4 bg-gradient-to-r from-blue-600 to-teal-500 hover:from-blue-700 hover:to-teal-600 text-white font-bold rounded-lg transition-all duration-200 shadow-lg hover:shadow-xl transform hover:-translate-y-1"
                            >
                                {{ $page.props.translations.home.start_application }}
                                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                            </Link>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Latest News/Resources Section -->
        <section id="resources" class="py-16 lg:py-24 bg-gray-50">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-12">
                    <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
                        {{ $page.props.translations.home.resources_title }}
                    </h2>
                    <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                        {{ $page.props.translations.home.resources_subtitle }}
                    </p>
                </div>

                <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
                    <article
                        v-for="post in displayedBlogPosts"
                        :key="post.id"
                        class="bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 overflow-hidden group"
                    >
                        <div class="relative h-48 overflow-hidden">
                            <img
                                :src="post.image"
                                :alt="post.title"
                                class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-300"
                            />
                            <div class="absolute top-4 left-4">
                                <span class="px-3 py-1 bg-blue-600 text-white text-xs font-semibold rounded-full">
                                    {{ post.category }}
                                </span>
                            </div>
                        </div>

                        <div class="p-6">
                            <div class="flex items-center text-sm text-gray-500 mb-3">
                                <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                </svg>
                                {{ post.date }}
                                <span class="mx-2">•</span>
                                <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                                {{ post.readTime }}
                            </div>

                            <h3 class="text-xl font-bold text-gray-900 mb-3 group-hover:text-blue-600 transition-colors">
                                {{ post.title }}
                            </h3>

                            <p class="text-gray-600 mb-4">{{ post.excerpt }}</p>

                            <a
                                href="#"
                                class="inline-flex items-center text-blue-600 hover:text-blue-700 font-semibold"
                            >
                                {{ $page.props.translations.home.read_more }}
                                <svg class="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                </svg>
                            </a>
                        </div>
                    </article>
                </div>

                <div class="text-center mt-12">
                    <a
                        href="#"
                        class="inline-flex items-center justify-center px-6 py-3 bg-white hover:bg-gray-50 text-blue-600 font-semibold rounded-lg border-2 border-blue-600 transition-all duration-200"
                    >
                        {{ $page.props.translations.home.view_all_resources }}
                        <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                        </svg>
                    </a>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="py-16 lg:py-24 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-6xl mx-auto">
                    <div class="text-center mb-12">
                        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">{{ $page.props.translations.home.contact_title }}</h2>
                        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                            {{ $page.props.translations.home.contact_subtitle }}
                        </p>
                    </div>

                    <div class="grid md:grid-cols-2 gap-12">
                        <!-- Contact Information -->
                        <div class="space-y-8">
                            <div>
                                <h3 class="text-2xl font-bold text-gray-900 mb-6">{{ $page.props.translations.home.contact_information }}</h3>
                                <div class="space-y-6">
                                    <!-- Phone -->
                                    <div class="flex items-start space-x-4">
                                        <div class="flex-shrink-0">
                                            <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-teal-500 rounded-lg flex items-center justify-center">
                                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                                </svg>
                                            </div>
                                        </div>
                                        <div>
                                            <h4 class="text-lg font-semibold text-gray-900 mb-1">{{ $page.props.translations.home.phone }}</h4>
                                            <a href="tel:+442032391227" class="text-blue-600 hover:text-blue-700 font-medium">+44 20 3239 1227</a>
                                        </div>
                                    </div>

                                    <!-- Email -->
                                    <div class="flex items-start space-x-4">
                                        <div class="flex-shrink-0">
                                            <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-teal-500 rounded-lg flex items-center justify-center">
                                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                                </svg>
                                            </div>
                                        </div>
                                        <div>
                                            <h4 class="text-lg font-semibold text-gray-900 mb-1">{{ $page.props.translations.home.email }}</h4>
                                            <a href="mailto:info@helpinghands.com" class="text-blue-600 hover:text-blue-700 font-medium">info@helpinghands.com</a>
                                        </div>
                                    </div>

                                    <!-- Address -->
                                    <div class="flex items-start space-x-4">
                                        <div class="flex-shrink-0">
                                            <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-teal-500 rounded-lg flex items-center justify-center">
                                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                                </svg>
                                            </div>
                                        </div>
                                        <div>
                                            <h4 class="text-lg font-semibold text-gray-900 mb-1">{{ $page.props.translations.home.office_address }}</h4>
                                            <p class="text-gray-600">123 Care Street<br>London, UK<br>SW1A 1AA</p>
                                        </div>
                                    </div>

                                    <!-- Working Hours -->
                                    <div class="flex items-start space-x-4">
                                        <div class="flex-shrink-0">
                                            <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-teal-500 rounded-lg flex items-center justify-center">
                                                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                                </svg>
                                            </div>
                                        </div>
                                        <div>
                                            <h4 class="text-lg font-semibold text-gray-900 mb-1">{{ $page.props.translations.home.working_hours }}</h4>
                                            <p class="text-gray-600">Monday - Friday: 9:00 AM - 6:00 PM<br>Saturday: 10:00 AM - 4:00 PM<br>Sunday: Closed</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Quick Apply Card -->
                            <div class="bg-gradient-to-br from-blue-50 to-teal-50 rounded-xl p-6 border border-blue-100">
                                <h4 class="text-xl font-bold text-gray-900 mb-3">{{ $page.props.translations.home.ready_join }}</h4>
                                <p class="text-gray-600 mb-4">{{ $page.props.translations.home.skip_contact_form }}</p>
                                <Link
                                    :href="route('job-applications.create')"
                                    class="inline-flex items-center justify-center w-full px-6 py-3 bg-gradient-to-r from-blue-600 to-teal-500 hover:from-blue-700 hover:to-teal-600 text-white font-semibold rounded-lg transition-all duration-200 shadow-md hover:shadow-lg"
                                >
                                    {{ $page.props.translations.home.apply_now }}
                                    <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                    </svg>
                                </Link>
                            </div>
                        </div>

                        <!-- Contact Form -->
                        <div class="bg-gray-50 rounded-2xl p-8 shadow-lg">
                            <h3 class="text-2xl font-bold text-gray-900 mb-6">{{ $page.props.translations.home.send_message }}</h3>
                            <form class="space-y-6">
                                <div>
                                    <label for="contact-name" class="block text-sm font-semibold text-gray-700 mb-2">{{ $page.props.translations.home.your_name }}</label>
                                    <input
                                        type="text"
                                        id="contact-name"
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-200"
                                        placeholder="John Doe"
                                    />
                                </div>
                                <div>
                                    <label for="contact-email" class="block text-sm font-semibold text-gray-700 mb-2">{{ $page.props.translations.home.email_address }}</label>
                                    <input
                                        type="email"
                                        id="contact-email"
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-200"
                                        placeholder="john@example.com"
                                    />
                                </div>
                                <div>
                                    <label for="contact-phone" class="block text-sm font-semibold text-gray-700 mb-2">{{ $page.props.translations.home.phone_number }}</label>
                                    <input
                                        type="tel"
                                        id="contact-phone"
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-200"
                                        placeholder="+44 20 1234 5678"
                                    />
                                </div>
                                <div>
                                    <label for="contact-message" class="block text-sm font-semibold text-gray-700 mb-2">{{ $page.props.translations.home.message }}</label>
                                    <textarea
                                        id="contact-message"
                                        rows="4"
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-200"
                                        placeholder="Tell us how we can help you..."
                                    ></textarea>
                                </div>
                                <button
                                    type="submit"
                                    class="w-full px-6 py-3 bg-gradient-to-r from-blue-600 to-teal-500 hover:from-blue-700 hover:to-teal-600 text-white font-semibold rounded-lg transition-all duration-200 shadow-md hover:shadow-lg flex items-center justify-center"
                                >
                                    {{ $page.props.translations.home.send }}
                                    <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8" />
                                    </svg>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Final CTA Section -->
        <section class="py-20 lg:py-28 bg-gradient-to-br from-blue-600 via-blue-700 to-teal-600 text-white relative overflow-hidden">
            <!-- Background Pattern -->
            <div class="absolute inset-0 opacity-10">
                <div class="absolute inset-0" style="background-image: url('data:image/svg+xml,%3Csvg width=&quot;60&quot; height=&quot;60&quot; viewBox=&quot;0 0 60 60&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot;%3E%3Cg fill=&quot;none&quot; fill-rule=&quot;evenodd&quot;%3E%3Cg fill=&quot;%23ffffff&quot; fill-opacity=&quot;1&quot;%3E%3Cpath d=&quot;M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z&quot;/%3E%3C/g%3E%3C/g%3E%3C/svg%3E');"></div>
            </div>

            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <!-- Icon -->
                    <div class="inline-flex items-center justify-center bg-white bg-opacity-20 backdrop-blur-sm rounded-full p-6 mb-8">
                        <svg class="w-16 h-16 text-teal-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5" />
                        </svg>
                    </div>

                    <h2 class="text-4xl md:text-5xl font-bold mb-6">
                        {{ $page.props.translations.home.final_cta_title }}
                    </h2>

                    <p class="text-xl md:text-2xl text-blue-100 mb-8 leading-relaxed">
                        {{ $page.props.translations.home.final_cta_text }}
                    </p>

                    <div class="flex flex-col sm:flex-row justify-center gap-4 mb-12">
                        <Link
                            :href="route('job-applications.create')"
                            class="inline-flex items-center justify-center px-8 py-4 bg-teal-400 hover:bg-teal-300 text-blue-900 font-bold rounded-lg transition-all duration-200 shadow-lg hover:shadow-xl transform hover:-translate-y-1 text-lg"
                        >
                            {{ $page.props.translations.home.apply_now }}
                            <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                            </svg>
                        </Link>
                        <a
                            href="tel:+441234567890"
                            class="inline-flex items-center justify-center px-8 py-4 bg-white bg-opacity-20 backdrop-blur-sm hover:bg-opacity-30 text-white font-bold rounded-lg transition-all duration-200 shadow-lg border-2 border-white border-opacity-30 text-lg"
                        >
                            <svg class="w-6 h-6 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                            </svg>
                            {{ $page.props.translations.home.call }}: 01234 567890
                        </a>
                    </div>

                    <!-- Trust Indicators -->
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-6 pt-8 border-t border-white border-opacity-20">
                        <div class="text-center">
                            <div class="text-3xl font-bold text-teal-300 mb-1">1000+</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.happy_carers }}</div>
                        </div>
                        <div class="text-center">
                            <div class="text-3xl font-bold text-teal-300 mb-1">5000+</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.clients_supported }}</div>
                        </div>
                        <div class="text-center">
                            <div class="text-3xl font-bold text-teal-300 mb-1">15+</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.years_exp }}</div>
                        </div>
                        <div class="text-center">
                            <div class="text-3xl font-bold text-teal-300 mb-1">4.9/5</div>
                            <div class="text-sm text-blue-100">{{ $page.props.translations.home.average_rating }}</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <Footer :settings="settings" />
    </div>
</template>
