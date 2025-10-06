<template>
  <AdminLayout title="Create FAQ">
    <div class="max-w-3xl">
      <div class="bg-white rounded-lg shadow p-6">
        <form @submit.prevent="submit">
          <div class="space-y-6">
            <div>
              <label for="question" class="block text-sm font-medium text-gray-700">Question</label>
              <input
                id="question"
                v-model="form.question"
                type="text"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.question }"
              />
              <p v-if="form.errors.question" class="mt-1 text-sm text-red-600">
                {{ form.errors.question }}
              </p>
            </div>

            <div>
              <label for="answer" class="block text-sm font-medium text-gray-700">Answer</label>
              <textarea
                id="answer"
                v-model="form.answer"
                rows="6"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.answer }"
              />
              <p v-if="form.errors.answer" class="mt-1 text-sm text-red-600">
                {{ form.errors.answer }}
              </p>
            </div>

            <div>
              <label for="order" class="block text-sm font-medium text-gray-700">Order</label>
              <input
                id="order"
                v-model.number="form.order"
                type="number"
                min="0"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.order }"
              />
              <p v-if="form.errors.order" class="mt-1 text-sm text-red-600">
                {{ form.errors.order }}
              </p>
            </div>

            <div class="flex items-center">
              <input
                id="is_active"
                v-model="form.is_active"
                type="checkbox"
                class="h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded"
              />
              <label for="is_active" class="ml-2 block text-sm text-gray-900">
                Active
              </label>
            </div>

            <div class="flex items-center justify-end space-x-3 pt-6 border-t">
              <Link
                :href="route('admin.faqs.index')"
                class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-4 py-2 rounded-md transition-colors"
              >
                Cancel
              </Link>
              <button
                type="submit"
                :disabled="form.processing"
                class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors disabled:opacity-50"
              >
                Create FAQ
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

const form = useForm({
  question: '',
  answer: '',
  order: 0,
  is_active: true
})

const submit = () => {
  form.post(route('admin.faqs.store'))
}
</script>
