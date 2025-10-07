<script setup>
import { ref, computed, onMounted, onBeforeUnmount } from 'vue';
import { router } from '@inertiajs/vue3';

const props = defineProps({
    currentLocale: {
        type: String,
        default: 'pl'
    }
});

const isOpen = ref(false);
const dropdownRef = ref(null);

const languages = [
    { code: 'en', name: 'English', flag: '🇬🇧' },
    { code: 'pl', name: 'Polski', flag: '🇵🇱' }
];

const currentLanguage = computed(() =>
    languages.find(lang => lang.code === props.currentLocale) || languages[1]
);

const switchLanguage = (locale) => {
    if (locale === props.currentLocale) {
        isOpen.value = false;
        return;
    }

    router.post(route('language.switch'), { locale }, {
        preserveState: false,
        preserveScroll: false,
        onSuccess: () => {
            isOpen.value = false;
        }
    });
};

const toggleDropdown = () => {
    isOpen.value = !isOpen.value;
};

const closeDropdown = () => {
    isOpen.value = false;
};

const handleClickOutside = (event) => {
    if (dropdownRef.value && !dropdownRef.value.contains(event.target)) {
        closeDropdown();
    }
};

onMounted(() => {
    document.addEventListener('click', handleClickOutside);
});

onBeforeUnmount(() => {
    document.removeEventListener('click', handleClickOutside);
});
</script>

<template>
    <div class="relative" ref="dropdownRef">
        <!-- Main Button -->
        <button
            @click="toggleDropdown"
            class="flex items-center space-x-2 px-4 py-2.5 rounded-xl border-2 border-gray-200 hover:border-teal-400 focus:border-teal-500 focus:ring-2 focus:ring-teal-200 transition-all duration-300 bg-white shadow-sm hover:shadow-md group"
            type="button"
            aria-label="Language Switcher"
            aria-haspopup="true"
            :aria-expanded="isOpen"
        >
            <span class="text-2xl leading-none transform group-hover:scale-110 transition-transform duration-200">
                {{ currentLanguage.flag }}
            </span>
            <span class="text-sm font-semibold text-gray-700 group-hover:text-teal-600 transition-colors duration-200">
                {{ currentLanguage.code.toUpperCase() }}
            </span>
            <svg
                class="w-4 h-4 text-gray-500 group-hover:text-teal-600 transition-all duration-300"
                :class="{ 'rotate-180': isOpen }"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
            >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M19 9l-7 7-7-7" />
            </svg>
        </button>

        <!-- Dropdown Menu -->
        <Transition
            enter-active-class="transition ease-out duration-200"
            enter-from-class="transform opacity-0 scale-95 -translate-y-2"
            enter-to-class="transform opacity-100 scale-100 translate-y-0"
            leave-active-class="transition ease-in duration-150"
            leave-from-class="transform opacity-100 scale-100 translate-y-0"
            leave-to-class="transform opacity-0 scale-95 -translate-y-2"
        >
            <div
                v-show="isOpen"
                class="absolute right-0 mt-3 w-56 bg-white rounded-xl shadow-xl border-2 border-gray-100 overflow-hidden z-50 backdrop-blur-sm"
            >
                <div class="py-2">
                    <button
                        v-for="language in languages"
                        :key="language.code"
                        @click="switchLanguage(language.code)"
                        class="w-full flex items-center space-x-3 px-4 py-3.5 text-sm text-gray-700 hover:bg-gradient-to-r hover:from-teal-50 hover:to-blue-50 transition-all duration-200 group relative"
                        :class="{
                            'bg-gradient-to-r from-teal-50 to-blue-50 border-l-4 border-teal-500': language.code === currentLocale,
                            'hover:pl-5': language.code !== currentLocale
                        }"
                    >
                        <!-- Flag Icon -->
                        <span
                            class="text-2xl leading-none transform group-hover:scale-110 transition-transform duration-200"
                            :class="{ 'scale-110': language.code === currentLocale }"
                        >
                            {{ language.flag }}
                        </span>

                        <!-- Language Name -->
                        <span
                            class="font-medium group-hover:text-teal-700 transition-colors duration-200"
                            :class="{ 'text-teal-700 font-semibold': language.code === currentLocale }"
                        >
                            {{ language.name }}
                        </span>

                        <!-- Current Language Indicator -->
                        <span
                            v-if="language.code === currentLocale"
                            class="ml-auto flex items-center space-x-1"
                        >
                            <span class="text-xs font-semibold text-teal-600 uppercase tracking-wide">Active</span>
                            <svg
                                class="w-5 h-5 text-teal-500 animate-pulse"
                                fill="currentColor"
                                viewBox="0 0 20 20"
                            >
                                <path
                                    fill-rule="evenodd"
                                    d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                    clip-rule="evenodd"
                                />
                            </svg>
                        </span>
                    </button>
                </div>
            </div>
        </Transition>
    </div>
</template>

<style scoped>
/* Ensure smooth animations */
button {
    -webkit-tap-highlight-color: transparent;
}

/* Enhanced hover effects */
button:active {
    transform: scale(0.98);
}

/* Smooth rotation animation */
svg {
    transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1);
}
</style>
