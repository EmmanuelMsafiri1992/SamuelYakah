<script setup>
import Header from '@/Components/Public/Header.vue';
import Footer from '@/Components/Public/Footer.vue';
import { usePage } from '@inertiajs/vue3';
import { computed } from 'vue';

const props = defineProps({
    settings: {
        type: Object,
        default: () => ({})
    }
});

const page = usePage();
const currentLocale = computed(() => page.props.currentLocale || 'en');
</script>

<template>
    <div class="min-h-screen flex flex-col bg-gray-50">
        <Header :settings="settings" :currentLocale="currentLocale" />

        <main class="flex-grow">
            <slot />
        </main>

        <Footer :settings="settings" :currentLocale="currentLocale" />
    </div>
</template>
