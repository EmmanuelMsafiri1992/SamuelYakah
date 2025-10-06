<template>
  <AdminLayout title="Job Applications">
    <div class="mb-6 flex justify-between items-center">
      <div class="flex items-center space-x-4">
        <input
          v-model="search"
          type="text"
          placeholder="Search applications..."
          class="px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
          @input="handleSearch"
        />
        <select
          v-model="statusFilter"
          class="px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
          @change="handleSearch"
        >
          <option value="">All Statuses</option>
          <option value="pending">Pending</option>
          <option value="approved">Approved</option>
          <option value="rejected">Rejected</option>
        </select>
      </div>
    </div>

    <div class="bg-white rounded-lg shadow overflow-hidden">
      <table class="min-w-full divide-y divide-gray-200">
        <thead class="bg-gray-50">
          <tr>
            <th
              class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer"
              @click="sortBy('id')"
            >
              ID
              <span v-if="sortField === 'id'">{{ sortDirection === 'asc' ? '↑' : '↓' }}</span>
            </th>
            <th
              class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer"
              @click="sortBy('first_name')"
            >
              Name
              <span v-if="sortField === 'first_name'">{{ sortDirection === 'asc' ? '↑' : '↓' }}</span>
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Email
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Phone
            </th>
            <th
              class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer"
              @click="sortBy('status')"
            >
              Status
              <span v-if="sortField === 'status'">{{ sortDirection === 'asc' ? '↑' : '↓' }}</span>
            </th>
            <th
              class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer"
              @click="sortBy('created_at')"
            >
              Applied Date
              <span v-if="sortField === 'created_at'">{{ sortDirection === 'asc' ? '↑' : '↓' }}</span>
            </th>
            <th class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
              Actions
            </th>
          </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
          <tr v-for="application in applications.data" :key="application.id">
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
              {{ application.id }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
              {{ application.first_name }} {{ application.last_name }}
            </td>
            <td class="px-6 py-4 text-sm text-gray-500">
              {{ application.email }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
              {{ application.phone }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap">
              <span
                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full"
                :class="{
                  'bg-yellow-100 text-yellow-800': application.status === 'pending',
                  'bg-green-100 text-green-800': application.status === 'approved',
                  'bg-red-100 text-red-800': application.status === 'rejected'
                }"
              >
                {{ application.status }}
              </span>
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
              {{ formatDate(application.created_at) }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
              <Link
                :href="route('admin.job-applications.show', application.id)"
                class="text-indigo-600 hover:text-indigo-900 mr-3"
              >
                View
              </Link>
              <Link
                :href="route('admin.job-applications.edit', application.id)"
                class="text-blue-600 hover:text-blue-900 mr-3"
              >
                Edit
              </Link>
              <button
                @click="deleteApplication(application.id)"
                class="text-red-600 hover:text-red-900"
              >
                Delete
              </button>
            </td>
          </tr>
          <tr v-if="applications.data.length === 0">
            <td colspan="7" class="px-6 py-4 text-center text-sm text-gray-500">
              No applications found.
            </td>
          </tr>
        </tbody>
      </table>

      <!-- Pagination -->
      <div v-if="applications.links && applications.links.length > 3" class="bg-white px-4 py-3 border-t border-gray-200 sm:px-6">
        <div class="flex justify-between items-center">
          <div class="text-sm text-gray-700">
            Showing {{ applications.from }} to {{ applications.to }} of {{ applications.total }} results
          </div>
          <div class="flex space-x-1">
            <Link
              v-for="(link, index) in applications.links"
              :key="index"
              :href="link.url"
              :class="{
                'bg-blue-500 text-white': link.active,
                'bg-white text-gray-700 hover:bg-gray-50': !link.active,
                'cursor-not-allowed opacity-50': !link.url
              }"
              class="px-3 py-2 border border-gray-300 text-sm font-medium rounded-md"
              :disabled="!link.url"
              v-html="link.label"
            />
          </div>
        </div>
      </div>
    </div>
  </AdminLayout>
</template>

<script setup>
import AdminLayout from '@/Layouts/AdminLayout.vue'
import { Link, router } from '@inertiajs/vue3'
import { ref } from 'vue'

const props = defineProps({
  applications: Object,
  filters: Object
})

const search = ref(props.filters?.search || '')
const statusFilter = ref(props.filters?.status || '')
const sortField = ref(props.filters?.sort || 'created_at')
const sortDirection = ref(props.filters?.direction || 'desc')

const handleSearch = () => {
  router.get(route('admin.job-applications.index'), {
    search: search.value,
    status: statusFilter.value,
    sort: sortField.value,
    direction: sortDirection.value
  }, {
    preserveState: true,
    replace: true
  })
}

const sortBy = (field) => {
  if (sortField.value === field) {
    sortDirection.value = sortDirection.value === 'asc' ? 'desc' : 'asc'
  } else {
    sortField.value = field
    sortDirection.value = 'asc'
  }

  router.get(route('admin.job-applications.index'), {
    search: search.value,
    status: statusFilter.value,
    sort: sortField.value,
    direction: sortDirection.value
  }, {
    preserveState: true,
    replace: true
  })
}

const deleteApplication = (id) => {
  if (confirm('Are you sure you want to delete this application?')) {
    router.delete(route('admin.job-applications.destroy', id))
  }
}

const formatDate = (dateString) => {
  const date = new Date(dateString)
  return date.toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'short',
    day: 'numeric'
  })
}
</script>
