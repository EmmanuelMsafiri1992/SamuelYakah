<script setup>
import { ref } from 'vue';
import { Head, router } from '@inertiajs/vue3';
import AdminLayout from '@/Layouts/AdminLayout.vue';

const props = defineProps({
    settings: {
        type: Array,
        default: () => []
    }
});

const logoFile = ref(null);
const faviconFile = ref(null);
const logoPreview = ref(null);
const faviconPreview = ref(null);

const siteLogo = props.settings.find(s => s.key === 'site_logo');
const siteFavicon = props.settings.find(s => s.key === 'site_favicon');

if (siteLogo) {
    logoPreview.value = siteLogo.value_en;
}

if (siteFavicon) {
    faviconPreview.value = siteFavicon.value_en;
}

const handleLogoChange = (event) => {
    const file = event.target.files[0];
    if (file) {
        logoFile.value = file;
        const reader = new FileReader();
        reader.onload = (e) => {
            logoPreview.value = e.target.result;
        };
        reader.readAsDataURL(file);
    }
};

const handleFaviconChange = (event) => {
    const file = event.target.files[0];
    if (file) {
        faviconFile.value = file;
        const reader = new FileReader();
        reader.onload = (e) => {
            faviconPreview.value = e.target.result;
        };
        reader.readAsDataURL(file);
    }
};

const updateBranding = () => {
    const formData = new FormData();

    if (logoFile.value) {
        formData.append('site_logo', logoFile.value);
    }

    if (faviconFile.value) {
        formData.append('site_favicon', faviconFile.value);
    }

    router.post('/admin/branding', formData, {
        preserveScroll: true,
        onSuccess: () => {
            logoFile.value = null;
            faviconFile.value = null;
        }
    });
};
</script>

<template>
    <Head title="Branding Settings - Admin" />

    <AdminLayout>
        <div class="py-6">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <!-- Header -->
                <div class="mb-6">
                    <h1 class="text-3xl font-bold text-gray-900">Branding Settings</h1>
                    <p class="mt-2 text-sm text-gray-600">Manage your site logo and favicon</p>
                </div>

                <!-- Branding Form -->
                <div class="bg-white rounded-lg shadow-sm border border-gray-200">
                    <div class="p-6 space-y-8">
                        <!-- Site Logo -->
                        <div>
                            <label class="block text-sm font-semibold text-gray-900 mb-4">
                                Site Logo
                            </label>

                            <div class="flex items-start space-x-6">
                                <!-- Preview -->
                                <div class="flex-shrink-0">
                                    <div v-if="logoPreview" class="w-48 h-48 border-2 border-gray-300 rounded-lg p-4 bg-gray-50 flex items-center justify-center">
                                        <img :src="logoPreview" alt="Logo Preview" class="max-w-full max-h-full object-contain">
                                    </div>
                                    <div v-else class="w-48 h-48 border-2 border-dashed border-gray-300 rounded-lg flex items-center justify-center bg-gray-50">
                                        <span class="text-gray-400">No logo uploaded</span>
                                    </div>
                                </div>

                                <!-- Upload -->
                                <div class="flex-1">
                                    <div class="border-2 border-dashed border-gray-300 rounded-lg p-6">
                                        <input
                                            type="file"
                                            @change="handleLogoChange"
                                            accept="image/png,image/jpeg,image/jpg,image/svg+xml"
                                            class="hidden"
                                            id="logo-upload"
                                        />
                                        <label
                                            for="logo-upload"
                                            class="cursor-pointer flex flex-col items-center space-y-2"
                                        >
                                            <svg class="w-12 h-12 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                            </svg>
                                            <span class="text-sm text-gray-600">Click to upload logo</span>
                                            <span class="text-xs text-gray-500">PNG, JPG, JPEG, SVG up to 2MB</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Divider -->
                        <div class="border-t border-gray-200"></div>

                        <!-- Site Favicon -->
                        <div>
                            <label class="block text-sm font-semibold text-gray-900 mb-4">
                                Site Favicon
                            </label>

                            <div class="flex items-start space-x-6">
                                <!-- Preview -->
                                <div class="flex-shrink-0">
                                    <div v-if="faviconPreview" class="w-32 h-32 border-2 border-gray-300 rounded-lg p-4 bg-gray-50 flex items-center justify-center">
                                        <img :src="faviconPreview" alt="Favicon Preview" class="max-w-full max-h-full object-contain">
                                    </div>
                                    <div v-else class="w-32 h-32 border-2 border-dashed border-gray-300 rounded-lg flex items-center justify-center bg-gray-50">
                                        <span class="text-gray-400 text-xs">No favicon</span>
                                    </div>
                                </div>

                                <!-- Upload -->
                                <div class="flex-1">
                                    <div class="border-2 border-dashed border-gray-300 rounded-lg p-6">
                                        <input
                                            type="file"
                                            @change="handleFaviconChange"
                                            accept="image/png,image/jpeg,image/jpg,image/x-icon"
                                            class="hidden"
                                            id="favicon-upload"
                                        />
                                        <label
                                            for="favicon-upload"
                                            class="cursor-pointer flex flex-col items-center space-y-2"
                                        >
                                            <svg class="w-12 h-12 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                            </svg>
                                            <span class="text-sm text-gray-600">Click to upload favicon</span>
                                            <span class="text-xs text-gray-500">PNG, JPG, ICO up to 1MB</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="flex justify-end pt-4">
                            <button
                                @click="updateBranding"
                                :disabled="!logoFile && !faviconFile"
                                class="px-6 py-3 bg-gradient-to-r from-blue-600 to-blue-500 text-white font-semibold rounded-lg hover:from-blue-700 hover:to-blue-600 transition-all duration-200 disabled:opacity-50 disabled:cursor-not-allowed shadow-lg hover:shadow-xl"
                            >
                                Update Branding
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </AdminLayout>
</template>
