<template>
  <AdminLayout :title="$page.props.translations.admin.seo_settings || 'SEO Settings'">
    <div class="space-y-6">
      <!-- Stats Cards -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div class="bg-gradient-to-br from-blue-500 to-teal-600 rounded-xl shadow-lg p-6 text-white">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-blue-100 text-sm font-medium">Total Pages</p>
              <p class="text-3xl font-bold mt-2">{{ seoSettings.total }}</p>
            </div>
            <div class="bg-white bg-opacity-20 rounded-lg p-3">
              <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
              </svg>
            </div>
          </div>
        </div>

        <div class="bg-gradient-to-br from-green-500 to-green-600 rounded-xl shadow-lg p-6 text-white">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-green-100 text-sm font-medium">{{ $page.props.translations.admin.active }}</p>
              <p class="text-3xl font-bold mt-2">{{ activeCount }}</p>
            </div>
            <div class="bg-white bg-opacity-20 rounded-lg p-3">
              <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
          </div>
        </div>

        <div class="bg-gradient-to-br from-gray-500 to-gray-600 rounded-xl shadow-lg p-6 text-white">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-100 text-sm font-medium">{{ $page.props.translations.admin.inactive }}</p>
              <p class="text-3xl font-bold mt-2">{{ inactiveCount }}</p>
            </div>
            <div class="bg-white bg-opacity-20 rounded-lg p-3">
              <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636" />
              </svg>
            </div>
          </div>
        </div>
      </div>

      <!-- Header & Search -->
      <div class="bg-white rounded-xl shadow-lg p-6">
        <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
          <div class="flex-1">
            <div class="relative">
              <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                <svg class="h-5 w-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
              </div>
              <input
                v-model="search"
                type="text"
                :placeholder="($page.props.translations.admin.search || 'Search') + ' page names...'"
                class="block w-full pl-10 pr-3 py-3 border border-gray-300 rounded-lg leading-5 bg-white placeholder-gray-500 focus:outline-none focus:placeholder-gray-400 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-200"
                @input="handleSearch"
              />
            </div>
          </div>
          <Link
            :href="route('admin.seo-settings.create')"
            class="inline-flex items-center px-6 py-3 bg-gradient-to-r from-blue-600 to-blue-700 hover:from-blue-700 hover:to-blue-800 text-white font-medium rounded-lg transition-all duration-200 hover:shadow-lg"
          >
            <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
            </svg>
            Add New SEO Setting
          </Link>
        </div>
      </div>

      <!-- Table -->
      <div class="bg-white rounded-xl shadow-lg overflow-hidden">
        <div class="overflow-x-auto">
          <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gradient-to-r from-gray-50 to-gray-100">
              <tr>
                <th
                  class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider cursor-pointer hover:text-blue-600 transition-colors"
                  @click="sortBy('id')"
                >
                  <div class="flex items-center space-x-1">
                    <span>{{ $page.props.translations.admin.id }}</span>
                    <svg v-if="sortField === 'id'" class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path v-if="sortDirection === 'asc'" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 15l7-7 7 7" />
                      <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                  </div>
                </th>
                <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                  Page Name
                </th>
                <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                  Meta Title (EN)
                </th>
                <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                  Meta Title (PL)
                </th>
                <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                  {{ $page.props.translations.admin.status }}
                </th>
                <th class="px-6 py-4 text-right text-xs font-semibold text-gray-600 uppercase tracking-wider">
                  {{ $page.props.translations.admin.actions }}
                </th>
              </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
              <tr v-for="seoSetting in seoSettings.data" :key="seoSetting.id" class="hover:bg-blue-50 transition-colors duration-150">
                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                  #{{ seoSetting.id }}
                </td>
                <td class="px-6 py-4 text-sm font-medium text-gray-900">
                  <span class="inline-flex items-center px-2.5 py-1 rounded-full text-xs font-semibold bg-blue-100 text-blue-800">
                    {{ seoSetting.page_name }}
                  </span>
                </td>
                <td class="px-6 py-4 text-sm text-gray-600 max-w-xs">
                  {{ truncate(seoSetting.meta_title_en, 50) }}
                </td>
                <td class="px-6 py-4 text-sm text-gray-600 max-w-xs">
                  {{ truncate(seoSetting.meta_title_pl, 50) }}
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <span
                    class="inline-flex items-center px-3 py-1 rounded-full text-xs font-semibold"
                    :class="{
                      'bg-green-100 text-green-800': seoSetting.is_active,
                      'bg-gray-100 text-gray-800': !seoSetting.is_active
                    }"
                  >
                    {{ seoSetting.is_active ? $page.props.translations.admin.active : $page.props.translations.admin.inactive }}
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                  <div class="flex items-center justify-end space-x-3">
                    <Link
                      :href="route('admin.seo-settings.edit', seoSetting.id)"
                      class="inline-flex items-center px-3 py-1.5 bg-blue-100 hover:bg-blue-200 text-blue-700 rounded-lg transition-all duration-200 hover:shadow-md"
                    >
                      <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                      </svg>
                      {{ $page.props.translations.admin.edit }}
                    </Link>
                    <button
                      @click="deleteSeoSetting(seoSetting.id)"
                      class="inline-flex items-center px-3 py-1.5 bg-red-100 hover:bg-red-200 text-red-700 rounded-lg transition-all duration-200 hover:shadow-md"
                    >
                      <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                      </svg>
                      {{ $page.props.translations.admin.delete }}
                    </button>
                  </div>
                </td>
              </tr>
              <tr v-if="seoSettings.data.length === 0">
                <td colspan="6" class="px-6 py-12">
                  <div class="text-center">
                    <svg class="mx-auto h-12 w-12 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                    </svg>
                    <h3 class="mt-2 text-sm font-medium text-gray-900">{{ $page.props.translations.admin.no_results }}</h3>
                    <p class="mt-1 text-sm text-gray-500">Get started by creating a new SEO setting.</p>
                    <div class="mt-6">
                      <Link
                        :href="route('admin.seo-settings.create')"
                        class="inline-flex items-center px-4 py-2 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-lg hover:shadow-lg transition-all duration-200"
                      >
                        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
                        </svg>
                        Add New SEO Setting
                      </Link>
                    </div>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <!-- Pagination -->
        <div v-if="seoSettings.total > 0" class="bg-gradient-to-r from-gray-50 to-gray-100 px-6 py-4 border-t border-gray-200">
          <div class="flex flex-col sm:flex-row justify-between items-center gap-4">
            <div class="text-sm text-gray-700">
              <span class="font-medium">{{ $page.props.translations.admin.showing }}</span>
              {{ seoSettings.from }}
              <span class="font-medium">{{ $page.props.translations.admin.to }}</span>
              {{ seoSettings.to }}
              <span class="font-medium">{{ $page.props.translations.admin.of }}</span>
              {{ seoSettings.total }}
              <span class="font-medium">{{ $page.props.translations.admin.results }}</span>
            </div>
          </div>
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
  seoSettings: Object,
  filters: Object
})

const search = ref(props.filters?.search || '')
const sortField = ref(props.filters?.sort || 'id')
const sortDirection = ref(props.filters?.direction || 'asc')

const activeCount = computed(() => {
  return props.seoSettings.data.filter(setting => setting.is_active).length
})

const inactiveCount = computed(() => {
  return props.seoSettings.data.filter(setting => !setting.is_active).length
})

const handleSearch = () => {
  router.get(route('admin.seo-settings.index'), {
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

  router.get(route('admin.seo-settings.index'), {
    search: search.value,
    sort: sortField.value,
    direction: sortDirection.value
  }, {
    preserveState: true,
    replace: true
  })
}

const deleteSeoSetting = (id) => {
  if (confirm($page.props.translations.admin.confirm_delete || 'Are you sure you want to delete this SEO setting?')) {
    router.delete(route('admin.seo-settings.destroy', id))
  }
}

const truncate = (text, length) => {
  if (!text) return ''
  if (text.length <= length) return text
  return text.substring(0, length) + '...'
}
</script>
