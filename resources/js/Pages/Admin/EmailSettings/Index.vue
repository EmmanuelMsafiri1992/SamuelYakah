<script setup>
import { ref } from 'vue';
import { Head, router } from '@inertiajs/vue3';
import AdminLayout from '@/Layouts/AdminLayout.vue';

const props = defineProps({
    emailSettings: {
        type: Object,
        default: () => ({})
    },
    envAdminEmail: {
        type: String,
        default: ''
    }
});

const form = ref({
    admin_email: props.emailSettings.admin_email?.value_en || props.envAdminEmail,
    contact_email: props.emailSettings.contact_email?.value_en || '',
    support_email: props.emailSettings.support_email?.value_en || '',
    notification_enabled: props.emailSettings.notification_enabled?.value_en === '1'
});

const updateSettings = () => {
    router.post('/admin/email-settings', form.value, {
        preserveScroll: true
    });
};
</script>

<template>
    <Head title="Email Settings - Admin" />

    <AdminLayout>
        <div class="py-6">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <!-- Header -->
                <div class="mb-6">
                    <h1 class="text-3xl font-bold text-gray-900">Email Settings</h1>
                    <p class="mt-2 text-sm text-gray-600">Configure email addresses for notifications and communications</p>
                </div>

                <!-- Email Configuration Form -->
                <div class="bg-white rounded-lg shadow-sm border border-gray-200">
                    <div class="p-6 space-y-6">
                        <!-- Admin Email -->
                        <div>
                            <label for="admin_email" class="block text-sm font-semibold text-gray-900 mb-2">
                                Admin Email Address
                                <span class="text-red-500">*</span>
                            </label>
                            <p class="text-sm text-gray-600 mb-3">
                                This email will receive job applications, contact form submissions, and system notifications.
                            </p>
                            <input
                                id="admin_email"
                                v-model="form.admin_email"
                                type="email"
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                placeholder="admin@sunrisesunset.com"
                            />
                        </div>

                        <!-- Divider -->
                        <div class="border-t border-gray-200"></div>

                        <!-- Contact Email -->
                        <div>
                            <label for="contact_email" class="block text-sm font-semibold text-gray-900 mb-2">
                                Contact Email Address
                            </label>
                            <p class="text-sm text-gray-600 mb-3">
                                Public-facing email address displayed on the website contact page.
                            </p>
                            <input
                                id="contact_email"
                                v-model="form.contact_email"
                                type="email"
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                placeholder="contact@sunrisesunset.com"
                            />
                        </div>

                        <!-- Support Email -->
                        <div>
                            <label for="support_email" class="block text-sm font-semibold text-gray-900 mb-2">
                                Support Email Address
                            </label>
                            <p class="text-sm text-gray-600 mb-3">
                                Email address for customer support inquiries.
                            </p>
                            <input
                                id="support_email"
                                v-model="form.support_email"
                                type="email"
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                placeholder="support@sunrisesunset.com"
                            />
                        </div>

                        <!-- Divider -->
                        <div class="border-t border-gray-200"></div>

                        <!-- Notification Settings -->
                        <div>
                            <label class="flex items-center space-x-3 cursor-pointer">
                                <input
                                    v-model="form.notification_enabled"
                                    type="checkbox"
                                    class="w-5 h-5 text-blue-600 border-gray-300 rounded focus:ring-2 focus:ring-blue-500"
                                />
                                <div>
                                    <span class="text-sm font-semibold text-gray-900">Enable Email Notifications</span>
                                    <p class="text-sm text-gray-600">Receive email notifications for new job applications and contact form submissions</p>
                                </div>
                            </label>
                        </div>

                        <!-- Email Configuration Guide -->
                        <div class="bg-blue-50 border border-blue-200 rounded-lg p-4">
                            <h3 class="text-sm font-semibold text-blue-900 mb-2">📧 Production Email Setup Guide</h3>
                            <p class="text-sm text-blue-800 mb-3">
                                To send emails in production, update your <code class="bg-blue-100 px-2 py-1 rounded">.env</code> file with SMTP settings:
                            </p>
                            <div class="bg-white rounded p-3 text-xs font-mono text-gray-800 space-y-1">
                                <div>MAIL_MAILER=smtp</div>
                                <div>MAIL_HOST=smtp.gmail.com</div>
                                <div>MAIL_PORT=587</div>
                                <div>MAIL_USERNAME=your-email@gmail.com</div>
                                <div>MAIL_PASSWORD=your-app-password</div>
                                <div>MAIL_ENCRYPTION=tls</div>
                                <div>MAIL_FROM_ADDRESS=noreply@yourdomain.com</div>
                            </div>
                            <p class="text-sm text-blue-800 mt-3">
                                <strong>Note:</strong> For Gmail, create an App Password in your Google Account settings.
                            </p>
                        </div>

                        <!-- Submit Button -->
                        <div class="flex justify-end pt-4">
                            <button
                                @click="updateSettings"
                                class="px-8 py-3 bg-gradient-to-r from-blue-600 to-blue-500 text-white font-semibold rounded-lg hover:from-blue-700 hover:to-blue-600 transition-all duration-200 shadow-lg hover:shadow-xl"
                            >
                                Save Email Settings
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </AdminLayout>
</template>
