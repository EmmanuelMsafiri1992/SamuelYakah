<template>
  <AdminLayout :title="`Edit Application: ${application.first_name} ${application.last_name}`">
    <div class="max-w-3xl">
      <div class="bg-white rounded-lg shadow p-6">
        <form @submit.prevent="submit">
          <div class="space-y-6">
            <!-- Personal Information -->
            <div>
              <h3 class="text-lg font-semibold text-gray-900 mb-4">Personal Information</h3>
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <label for="first_name" class="block text-sm font-medium text-gray-700">First Name</label>
                  <input
                    id="first_name"
                    v-model="form.first_name"
                    type="text"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.first_name }"
                  />
                  <p v-if="form.errors.first_name" class="mt-1 text-sm text-red-600">
                    {{ form.errors.first_name }}
                  </p>
                </div>

                <div>
                  <label for="last_name" class="block text-sm font-medium text-gray-700">Last Name</label>
                  <input
                    id="last_name"
                    v-model="form.last_name"
                    type="text"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.last_name }"
                  />
                  <p v-if="form.errors.last_name" class="mt-1 text-sm text-red-600">
                    {{ form.errors.last_name }}
                  </p>
                </div>
              </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                <input
                  id="email"
                  v-model="form.email"
                  type="email"
                  class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  :class="{ 'border-red-500': form.errors.email }"
                />
                <p v-if="form.errors.email" class="mt-1 text-sm text-red-600">
                  {{ form.errors.email }}
                </p>
              </div>

              <div>
                <label for="phone" class="block text-sm font-medium text-gray-700">Phone</label>
                <input
                  id="phone"
                  v-model="form.phone"
                  type="text"
                  class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  :class="{ 'border-red-500': form.errors.phone }"
                />
                <p v-if="form.errors.phone" class="mt-1 text-sm text-red-600">
                  {{ form.errors.phone }}
                </p>
              </div>
            </div>

            <!-- Status -->
            <div>
              <label for="status" class="block text-sm font-medium text-gray-700">Status</label>
              <select
                id="status"
                v-model="form.status"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.status }"
              >
                <option value="pending">Pending</option>
                <option value="approved">Approved</option>
                <option value="rejected">Rejected</option>
              </select>
              <p v-if="form.errors.status" class="mt-1 text-sm text-red-600">
                {{ form.errors.status }}
              </p>
            </div>

            <!-- Admin Notes -->
            <div>
              <label for="admin_notes" class="block text-sm font-medium text-gray-700">Admin Notes</label>
              <textarea
                id="admin_notes"
                v-model="form.admin_notes"
                rows="4"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.admin_notes }"
              />
              <p v-if="form.errors.admin_notes" class="mt-1 text-sm text-red-600">
                {{ form.errors.admin_notes }}
              </p>
              <p class="mt-1 text-sm text-gray-500">
                Internal notes (not visible to applicant)
              </p>
            </div>

            <!-- Additional Fields (read-only info) -->
            <div>
              <h3 class="text-lg font-semibold text-gray-900 mb-4">Additional Information</h3>
              <div class="bg-gray-50 rounded-md p-4 space-y-2">
                <p class="text-sm"><span class="font-medium">Applied:</span> {{ formatDate(application.created_at) }}</p>
                <p v-if="application.experience_years" class="text-sm">
                  <span class="font-medium">Experience:</span> {{ application.experience_years }} years
                </p>
                <p v-if="application.cv_path" class="text-sm">
                  <span class="font-medium">CV:</span>
                  <a :href="`/storage/${application.cv_path}`" target="_blank" class="text-blue-600 hover:underline ml-1">
                    View/Download CV
                  </a>
                </p>
              </div>
            </div>

            <div class="flex items-center justify-end space-x-3 pt-6 border-t">
              <Link
                :href="route('admin.job-applications.show', application.id)"
                class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-4 py-2 rounded-md transition-colors"
              >
                Cancel
              </Link>
              <button
                type="submit"
                :disabled="form.processing"
                class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors disabled:opacity-50"
              >
                Update Application
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </AdminLayout>
</template>

<script setup>
import AdminLayout from '@/Layouts/AdminLayout.vue'
import { Link, useForm } from '@inertiajs/vue3'

const props = defineProps({
  application: Object
})

const form = useForm({
  first_name: props.application.first_name,
  last_name: props.application.last_name,
  email: props.application.email,
  phone: props.application.phone,
  status: props.application.status,
  admin_notes: props.application.admin_notes || ''
})

const submit = () => {
  form.put(route('admin.job-applications.update', props.application.id))
}

const formatDate = (dateString) => {
  const date = new Date(dateString)
  return date.toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  })
}
</script>
