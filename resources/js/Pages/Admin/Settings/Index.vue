<template>
  <AdminLayout title="Settings">
    <div class="mb-6 flex justify-between items-center">
      <div class="flex items-center space-x-4">
        <input
          v-model="search"
          type="text"
          placeholder="Search settings..."
          class="px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
          @input="handleSearch"
        />
      </div>
      <Link
        :href="route('admin.settings.create')"
        class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors"
      >
        Add New Setting
      </Link>
    </div>

    <div class="bg-white rounded-lg shadow overflow-hidden">
      <table class="min-w-full divide-y divide-gray-200">
        <thead class="bg-gray-50">
          <tr>
            <th
              class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer"
              @click="sortBy('key')"
            >
              Key
              <span v-if="sortField === 'key'">{{ sortDirection === 'asc' ? '↑' : '↓' }}</span>
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Value
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Type
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Description
            </th>
            <th class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
              Actions
            </th>
          </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
          <tr v-for="setting in settings.data" :key="setting.id">
            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
              {{ setting.key }}
            </td>
            <td class="px-6 py-4 text-sm text-gray-500">
              {{ truncate(setting.value, 50) }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
              <span class="px-2 py-1 bg-gray-100 text-gray-800 rounded text-xs">
                {{ setting.type }}
              </span>
            </td>
            <td class="px-6 py-4 text-sm text-gray-500">
              {{ truncate(setting.description, 60) }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
              <Link
                :href="route('admin.settings.edit', setting.id)"
                class="text-indigo-600 hover:text-indigo-900 mr-3"
              >
                Edit
              </Link>
              <button
                @click="deleteSetting(setting.id)"
                class="text-red-600 hover:text-red-900"
              >
                Delete
              </button>
            </td>
          </tr>
          <tr v-if="settings.data.length === 0">
            <td colspan="5" class="px-6 py-4 text-center text-sm text-gray-500">
              No settings found.
            </td>
          </tr>
        </tbody>
      </table>

      <!-- Pagination -->
      <div v-if="settings.links && settings.links.length > 3" class="bg-white px-4 py-3 border-t border-gray-200 sm:px-6">
        <div class="flex justify-between items-center">
          <div class="text-sm text-gray-700">
            Showing {{ settings.from }} to {{ settings.to }} of {{ settings.total }} results
          </div>
          <div class="flex space-x-1">
            <Link
              v-for="(link, index) in settings.links"
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
  settings: Object,
  filters: Object
})

const search = ref(props.filters?.search || '')
const sortField = ref(props.filters?.sort || 'key')
const sortDirection = ref(props.filters?.direction || 'asc')

const handleSearch = () => {
  router.get(route('admin.settings.index'), {
    search: search.value,
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

  router.get(route('admin.settings.index'), {
    search: search.value,
    sort: sortField.value,
    direction: sortDirection.value
  }, {
    preserveState: true,
    replace: true
  })
}

const deleteSetting = (id) => {
  if (confirm('Are you sure you want to delete this setting?')) {
    router.delete(route('admin.settings.destroy', id))
  }
}

const truncate = (text, length) => {
  if (!text) return ''
  if (text.length <= length) return text
  return text.substring(0, length) + '...'
}
</script>
