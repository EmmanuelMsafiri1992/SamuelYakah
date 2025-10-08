<script setup>
import { Head } from '@inertiajs/vue3';
import PublicLayout from '@/Layouts/PublicLayout.vue';
import { computed } from 'vue';

const props = defineProps({
    settings: {
        type: Object,
        default: () => ({})
    },
    currentLocale: {
        type: String,
        default: 'en'
    },
    articles: {
        type: Array,
        default: () => []
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

// Helper function to get localized article field
const getArticleField = (article, field) => {
    const localizedField = `${field}_${props.currentLocale}`;
    return article[localizedField] || article[`${field}_en`] || '';
};

const newsArticles = computed(() => {
    return props.articles.map(article => ({
        title: getArticleField(article, 'title'),
        excerpt: getArticleField(article, 'excerpt'),
        category: getArticleField(article, 'category'),
        date: article.date,
        slug: article.slug
    }));
});
</script>

<template>
    <Head title="Latest News - Sunrise & Sunset Home Care" />

    <PublicLayout :settings="settings" :currentLocale="currentLocale">
        <!-- Hero Section -->
        <section class="relative py-20 overflow-hidden">
            <!-- Background Image -->
            <div class="absolute inset-0">
                <img
                    src="/images/home-care.jpg"
                    alt="News"
                    class="w-full h-full object-cover"
                />
                <div class="absolute inset-0 bg-gradient-to-r from-[#2563eb]/90 to-[#4FE1D6]/80"></div>
            </div>

            <!-- Content -->
            <div class="container mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
                <div class="max-w-4xl mx-auto text-center">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 text-white">
                        {{ getSetting('news_hero_title', 'Latest News') }}
                    </h1>
                    <p class="text-xl text-white/95 mb-8">
                        {{ getSetting('news_hero_subtitle', 'Read the latest care industry news, interesting articles, and important announcements') }}
                    </p>
                </div>
            </div>
        </section>

        <!-- News Articles Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-5xl mx-auto">
                    <div class="space-y-8">
                        <div
                            v-for="(article, index) in newsArticles"
                            :key="index"
                            class="bg-white border border-gray-200 rounded-xl p-8 hover:shadow-xl transition-all duration-200"
                        >
                            <div class="flex items-center space-x-3 mb-4">
                                <span class="px-3 py-1 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] text-white text-sm font-semibold rounded-full">
                                    {{ article.category }}
                                </span>
                                <span class="text-gray-500 text-sm">{{ article.date }}</span>
                            </div>

                            <h2 class="text-2xl sm:text-3xl font-bold text-gray-900 mb-4">
                                {{ article.title }}
                            </h2>

                            <p class="text-lg text-gray-700 mb-6">
                                {{ article.excerpt }}
                            </p>

                            <a href="/#contact" class="inline-flex items-center text-[#2563eb] hover:text-[#1e40af] font-semibold">
                                {{ getSetting('news_read_more', 'Read More') }}
                                <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb]/5 to-[#4FE1D6]/5">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-3xl mx-auto text-center">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-6 text-gray-900">
                        {{ getSetting('news_newsletter_title', 'Stay Updated') }}
                    </h2>
                    <p class="text-xl text-gray-700 mb-8">
                        {{ getSetting('news_newsletter_subtitle', 'Get the latest news and updates delivered straight to your inbox') }}
                    </p>
                    <a href="/#contact" class="inline-flex items-center px-8 py-4 bg-gradient-to-r from-[#2563eb] to-[#4FE1D6] text-white font-semibold rounded-full hover:from-[#1e40af] hover:to-[#3dccc1] transition-all duration-200 shadow-lg hover:shadow-xl">
                        {{ getSetting('news_contact_button', 'Contact Us') }}
                    </a>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-16 bg-gradient-to-br from-[#2563eb] to-[#4FE1D6]">
            <div class="container mx-auto px-4 sm:px-6 lg:px-8">
                <div class="max-w-3xl mx-auto text-center">
                    <h2 class="text-3xl sm:text-4xl font-bold mb-6 text-white">
                        {{ getSetting('news_cta_title', 'Learn More About Our Services') }}
                    </h2>
                    <p class="text-xl text-white/90 mb-8">
                        {{ getSetting('news_cta_subtitle', 'Contact us today to discuss your care needs') }}
                    </p>
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <a :href="`tel:${getSetting('contact_phone', '+442032391227')}`" class="px-8 py-4 bg-white text-[#2563eb] font-semibold rounded-full hover:bg-gray-100 transition-all duration-200 shadow-lg hover:shadow-xl">
                            {{ getSetting('common_call', 'Call') }} {{ getSetting('contact_phone', '+442032391227') }}
                        </a>
                        <a href="/#contact" class="px-8 py-4 bg-transparent border-2 border-white text-white font-semibold rounded-full hover:bg-white hover:text-[#2563eb] transition-all duration-200">
                            {{ getSetting('news_cta_online', 'Contact Us Online') }}
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </PublicLayout>
</template>
