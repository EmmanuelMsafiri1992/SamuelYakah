<template>
  <AdminLayout title="FAQs">
    <div class="mb-6 flex justify-between items-center">
      <div class="flex items-center space-x-4">
        <input
          v-model="search"
          type="text"
          placeholder="Search FAQs..."
          class="px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
          @input="handleSearch"
        />
      </div>
      <Link
        :href="route('admin.faqs.create')"
        class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors"
      >
        Add New FAQ
      </Link>
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
              @click="sortBy('question')"
            >
              Question
              <span v-if="sortField === 'question'">{{ sortDirection === 'asc' ? '↑' : '↓' }}</span>
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Answer
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Order
            </th>
            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Status
            </th>
            <th class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
              Actions
            </th>
          </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
          <tr v-for="faq in faqs.data" :key="faq.id">
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
              {{ faq.id }}
            </td>
            <td class="px-6 py-4 text-sm font-medium text-gray-900">
              {{ faq.question }}
            </td>
            <td class="px-6 py-4 text-sm text-gray-500">
              {{ truncate(faq.answer, 80) }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
              {{ faq.order }}
            </td>
            <td class="px-6 py-4 whitespace-nowrap">
              <span
                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full"
                :class="{
                  'bg-green-100 text-green-800': faq.is_active,
                  'bg-gray-100 text-gray-800': !faq.is_active
                }"
              >
                {{ faq.is_active ? 'Active' : 'Inactive' }}
              </span>
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
              <Link
                :href="route('admin.faqs.edit', faq.id)"
                class="text-indigo-600 hover:text-indigo-900 mr-3"
              >
                Edit
              </Link>
              <button
                @click="deleteFaq(faq.id)"
                class="text-red-600 hover:text-red-900"
              >
                Delete
              </button>
            </td>
          </tr>
          <tr v-if="faqs.data.length === 0">
            <td colspan="6" class="px-6 py-4 text-center text-sm text-gray-500">
              No FAQs found.
            </td>
          </tr>
        </tbody>
      </table>

      <!-- Pagination -->
      <div v-if="faqs.links && faqs.links.length > 3" class="bg-white px-4 py-3 border-t border-gray-200 sm:px-6">
        <div class="flex justify-between items-center">
          <div class="text-sm text-gray-700">
            Showing {{ faqs.from }} to {{ faqs.to }} of {{ faqs.total }} results
          </div>
          <div class="flex space-x-1">
            <Link
              v-for="(link, index) in faqs.links"
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
  faqs: Object,
  filters: Object
})

const search = ref(props.filters?.search || '')
const sortField = ref(props.filters?.sort || 'order')
const sortDirection = ref(props.filters?.direction || 'asc')

const handleSearch = () => {
  router.get(route('admin.faqs.index'), {
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

  router.get(route('admin.faqs.index'), {
    search: search.value,
    sort: sortField.value,
    direction: sortDirection.value
  }, {
    preserveState: true,
    replace: true
  })
}

const deleteFaq = (id) => {
  if (confirm('Are you sure you want to delete this FAQ?')) {
    router.delete(route('admin.faqs.destroy', id))
  }
}

const truncate = (text, length) => {
  if (text.length <= length) return text
  return text.substring(0, length) + '...'
}
</script>
