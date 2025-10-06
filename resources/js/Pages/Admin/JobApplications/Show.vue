<template>
  <AdminLayout :title="`Application: ${application.first_name} ${application.last_name}`">
    <div class="max-w-4xl">
      <div class="bg-white rounded-lg shadow overflow-hidden">
        <!-- Header -->
        <div class="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
          <div>
            <h2 class="text-2xl font-bold text-gray-900">
              {{ application.first_name }} {{ application.last_name }}
            </h2>
            <p class="text-sm text-gray-500">Application ID: {{ application.id }}</p>
          </div>
          <span
            class="px-3 py-1 text-sm font-semibold rounded-full"
            :class="{
              'bg-yellow-100 text-yellow-800': application.status === 'pending',
              'bg-green-100 text-green-800': application.status === 'approved',
              'bg-red-100 text-red-800': application.status === 'rejected'
            }"
          >
            {{ application.status }}
          </span>
        </div>

        <!-- Content -->
        <div class="px-6 py-4">
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Personal Information -->
            <div>
              <h3 class="text-lg font-semibold text-gray-900 mb-4">Personal Information</h3>
              <dl class="space-y-3">
                <div>
                  <dt class="text-sm font-medium text-gray-500">Email</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.email }}</dd>
                </div>
                <div>
                  <dt class="text-sm font-medium text-gray-500">Phone</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.phone }}</dd>
                </div>
                <div v-if="application.address">
                  <dt class="text-sm font-medium text-gray-500">Address</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.address }}</dd>
                </div>
                <div v-if="application.city">
                  <dt class="text-sm font-medium text-gray-500">City</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.city }}</dd>
                </div>
                <div v-if="application.postcode">
                  <dt class="text-sm font-medium text-gray-500">Postcode</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.postcode }}</dd>
                </div>
              </dl>
            </div>

            <!-- Application Details -->
            <div>
              <h3 class="text-lg font-semibold text-gray-900 mb-4">Application Details</h3>
              <dl class="space-y-3">
                <div v-if="application.experience_years">
                  <dt class="text-sm font-medium text-gray-500">Years of Experience</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.experience_years }} years</dd>
                </div>
                <div v-if="application.qualifications">
                  <dt class="text-sm font-medium text-gray-500">Qualifications</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.qualifications }}</dd>
                </div>
                <div v-if="application.availability">
                  <dt class="text-sm font-medium text-gray-500">Availability</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ application.availability }}</dd>
                </div>
                <div>
                  <dt class="text-sm font-medium text-gray-500">Applied Date</dt>
                  <dd class="mt-1 text-sm text-gray-900">{{ formatDate(application.created_at) }}</dd>
                </div>
              </dl>
            </div>
          </div>

          <!-- Cover Letter / Message -->
          <div v-if="application.message" class="mt-6">
            <h3 class="text-lg font-semibold text-gray-900 mb-2">Message / Cover Letter</h3>
            <div class="bg-gray-50 rounded-md p-4">
              <p class="text-sm text-gray-700 whitespace-pre-wrap">{{ application.message }}</p>
            </div>
          </div>

          <!-- CV/Resume -->
          <div v-if="application.cv_path" class="mt-6">
            <h3 class="text-lg font-semibold text-gray-900 mb-2">CV/Resume</h3>
            <a
              :href="`/storage/${application.cv_path}`"
              target="_blank"
              class="inline-flex items-center px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600"
            >
              <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
              </svg>
              Download CV
            </a>
          </div>

          <!-- Admin Notes -->
          <div v-if="application.admin_notes" class="mt-6">
            <h3 class="text-lg font-semibold text-gray-900 mb-2">Admin Notes</h3>
            <div class="bg-yellow-50 rounded-md p-4">
              <p class="text-sm text-gray-700 whitespace-pre-wrap">{{ application.admin_notes }}</p>
            </div>
          </div>
        </div>

        <!-- Actions -->
        <div class="px-6 py-4 bg-gray-50 border-t border-gray-200 flex justify-between items-center">
          <Link
            :href="route('admin.job-applications.index')"
            class="text-gray-600 hover:text-gray-900"
          >
            Back to List
          </Link>
          <div class="space-x-3">
            <Link
              :href="route('admin.job-applications.edit', application.id)"
              class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors"
            >
              Edit Application
            </Link>
            <button
              @click="deleteApplication"
              class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-md transition-colors"
            >
              Delete
            </button>
          </div>
        </div>
      </div>
    </div>
  </AdminLayout>
</template>

<script setup>
import AdminLayout from '@/Layouts/AdminLayout.vue'
import { Link, router } from '@inertiajs/vue3'

const props = defineProps({
  application: Object
})

const formatDate = (dateString) => {
  const date = new Date(dateString)
  return date.toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit'
  })
}

const deleteApplication = () => {
  if (confirm('Are you sure you want to delete this application?')) {
    router.delete(route('admin.job-applications.destroy', props.application.id), {
      onSuccess: () => router.visit(route('admin.job-applications.index'))
    })
  }
}
</script>
