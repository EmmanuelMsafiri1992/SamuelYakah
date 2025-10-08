<template>
  <AdminLayout title="Content Management">
    <div class="space-y-6">
      <!-- Header with Actions -->
      <div class="bg-white rounded-lg shadow-sm p-6">
        <div class="flex justify-between items-center mb-6">
          <div>
            <h1 class="text-2xl font-bold text-gray-900">Content Management</h1>
            <p class="text-gray-600 mt-1">Manage all website content across multiple languages</p>
          </div>
          <div class="flex space-x-3">
            <button
              @click="showImportModal = true"
              class="px-4 py-2 border border-gray-300 rounded-md hover:bg-gray-50 transition-colors flex items-center space-x-2"
            >
              <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12" />
              </svg>
              <span>Import</span>
            </button>
            <button
              @click="exportSettings"
              class="px-4 py-2 border border-gray-300 rounded-md hover:bg-gray-50 transition-colors flex items-center space-x-2"
            >
              <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
              </svg>
              <span>Export</span>
            </button>
            <Link
              :href="route('admin.settings.create')"
              class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors flex items-center space-x-2"
            >
              <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
              </svg>
              <span>Add Setting</span>
            </Link>
          </div>
        </div>

        <!-- Search and Filters -->
        <div class="flex space-x-4">
          <div class="flex-1">
            <input
              v-model="search"
              type="text"
              placeholder="Search settings..."
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
              @input="handleSearch"
            />
          </div>
          <div class="w-48">
            <select
              v-model="selectedLocale"
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="en">English</option>
              <option value="pl">Polish</option>
              <option value="nl">Dutch</option>
            </select>
          </div>
        </div>
      </div>

      <!-- Group Tabs -->
      <div class="bg-white rounded-lg shadow-sm">
        <div class="border-b border-gray-200">
          <nav class="flex space-x-1 p-2 overflow-x-auto" aria-label="Tabs">
            <button
              @click="selectGroup('all')"
              :class="[
                currentGroup === 'all'
                  ? 'bg-blue-100 text-blue-700'
                  : 'text-gray-600 hover:text-gray-900 hover:bg-gray-100',
                'px-4 py-2 rounded-md text-sm font-medium whitespace-nowrap transition-colors'
              ]"
            >
              All Settings ({{ settings.total }})
            </button>
            <button
              v-for="group in groups"
              :key="group"
              @click="selectGroup(group)"
              :class="[
                currentGroup === group
                  ? 'bg-blue-100 text-blue-700'
                  : 'text-gray-600 hover:text-gray-900 hover:bg-gray-100',
                'px-4 py-2 rounded-md text-sm font-medium whitespace-nowrap transition-colors flex items-center space-x-2'
              ]"
            >
              <span>{{ formatGroupName(group) }}</span>
              <span class="text-xs bg-gray-200 px-2 py-0.5 rounded-full">{{ groupCounts[group] || 0 }}</span>
            </button>
          </nav>
        </div>

        <!-- Settings Table -->
        <div class="overflow-x-auto">
          <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
              <tr>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider w-1/4">
                  Key
                </th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider w-1/3">
                  {{ selectedLocale === 'en' ? 'English' : selectedLocale === 'pl' ? 'Polish' : 'Dutch' }}
                </th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider w-1/6">
                  Type
                </th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider w-1/6">
                  Group
                </th>
                <th class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                  Actions
                </th>
              </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
              <tr v-for="setting in settings.data" :key="setting.id" class="hover:bg-gray-50 transition-colors">
                <td class="px-6 py-4 text-sm font-mono text-gray-900">
                  <div class="truncate max-w-xs" :title="setting.key">
                    {{ setting.key }}
                  </div>
                  <div v-if="setting.description" class="text-xs text-gray-500 mt-1">
                    {{ setting.description }}
                  </div>
                </td>
                <td class="px-6 py-4 text-sm text-gray-700">
                  <div class="truncate max-w-md" :title="getSettingValue(setting)">
                    {{ getSettingValue(setting) || '-' }}
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm">
                  <span class="px-2 py-1 bg-gray-100 text-gray-800 rounded text-xs font-medium">
                    {{ setting.type }}
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm">
                  <span class="px-2 py-1 bg-blue-100 text-blue-800 rounded text-xs font-medium">
                    {{ setting.group }}
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium space-x-2">
                  <Link
                    :href="route('admin.settings.edit', setting.id)"
                    class="text-blue-600 hover:text-blue-900 transition-colors"
                  >
                    Edit
                  </Link>
                  <button
                    @click="deleteSetting(setting.id)"
                    class="text-red-600 hover:text-red-900 transition-colors"
                  >
                    Delete
                  </button>
                </td>
              </tr>
              <tr v-if="settings.data.length === 0">
                <td colspan="5" class="px-6 py-8 text-center text-sm text-gray-500">
                  <div class="flex flex-col items-center">
                    <svg class="w-12 h-12 text-gray-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4" />
                    </svg>
                    <p>No settings found.</p>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>

          <!-- Pagination -->
          <div v-if="settings.links && settings.links.length > 3" class="bg-white px-4 py-3 border-t border-gray-200">
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
                    'bg-blue-600 text-white border-blue-600': link.active,
                    'bg-white text-gray-700 border-gray-300 hover:bg-gray-50': !link.active,
                    'cursor-not-allowed opacity-50': !link.url
                  }"
                  class="px-3 py-2 border text-sm font-medium rounded-md transition-colors"
                  :disabled="!link.url"
                  v-html="link.label"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Import Modal -->
    <div v-if="showImportModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
      <div class="bg-white rounded-lg max-w-md w-full p-6">
        <h3 class="text-lg font-bold text-gray-900 mb-4">Import Settings</h3>
        <p class="text-sm text-gray-600 mb-4">Upload a JSON file containing settings to import.</p>
        <input
          type="file"
          accept=".json"
          @change="handleImportFile"
          class="block w-full text-sm text-gray-500
            file:mr-4 file:py-2 file:px-4
            file:rounded-md file:border-0
            file:text-sm file:font-semibold
            file:bg-blue-50 file:text-blue-700
            hover:file:bg-blue-100"
        />
        <div class="mt-6 flex justify-end space-x-3">
          <button
            @click="showImportModal = false"
            class="px-4 py-2 border border-gray-300 rounded-md hover:bg-gray-50"
          >
            Cancel
          </button>
        </div>
      </div>
    </div>
  </AdminLayout>
</template>

<script setup>
import AdminLayout from '@/Layouts/AdminLayout.vue'
import { Link, router } from '@inertiajs/vue3'
import { ref, computed } from 'vue'

const props = defineProps({
  settings: Object,
  groups: Array,
  groupCounts: Object,
  filters: Object
})

const search = ref(props.filters?.search || '')
const selectedLocale = ref(props.filters?.locale || 'en')
const currentGroup = ref(props.filters?.group || 'all')
const showImportModal = ref(false)

const handleSearch = () => {
  router.get(route('admin.content.index'), {
    search: search.value,
    group: currentGroup.value,
    locale: selectedLocale.value
  }, {
    preserveState: true,
    replace: true
  })
}

const selectGroup = (group) => {
  currentGroup.value = group
  router.get(route('admin.content.index'), {
    search: search.value,
    group: group,
    locale: selectedLocale.value
  }, {
    preserveState: true,
    replace: true
  })
}

const formatGroupName = (group) => {
  return group.split('_').map(word =>
    word.charAt(0).toUpperCase() + word.slice(1)
  ).join(' ')
}

const getSettingValue = (setting) => {
  const valueKey = `value_${selectedLocale.value}`
  return setting[valueKey] || setting.value_en || setting.value
}

const deleteSetting = (id) => {
  if (confirm('Are you sure you want to delete this setting?')) {
    router.delete(route('admin.settings.destroy', id))
  }
}

const exportSettings = () => {
  window.location.href = route('admin.content.export', { group: currentGroup.value })
}

const handleImportFile = (event) => {
  const file = event.target.files[0]
  if (file) {
    const formData = new FormData()
    formData.append('file', file)

    router.post(route('admin.content.import'), formData, {
      onSuccess: () => {
        showImportModal.value = false
      }
    })
  }
}
</script>
