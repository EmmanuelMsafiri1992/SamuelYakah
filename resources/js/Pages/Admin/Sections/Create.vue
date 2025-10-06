<template>
  <AdminLayout title="Create Section">
    <div class="max-w-3xl">
      <div class="bg-white rounded-lg shadow p-6">
        <form @submit.prevent="submit">
          <div class="space-y-6">
            <div>
              <label for="title" class="block text-sm font-medium text-gray-700">Title</label>
              <input
                id="title"
                v-model="form.title"
                type="text"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.title }"
              />
              <p v-if="form.errors.title" class="mt-1 text-sm text-red-600">
                {{ form.errors.title }}
              </p>
            </div>

            <div>
              <label for="identifier" class="block text-sm font-medium text-gray-700">Identifier</label>
              <input
                id="identifier"
                v-model="form.identifier"
                type="text"
                placeholder="e.g., hero, about, contact"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.identifier }"
              />
              <p v-if="form.errors.identifier" class="mt-1 text-sm text-red-600">
                {{ form.errors.identifier }}
              </p>
              <p class="mt-1 text-sm text-gray-500">
                Unique identifier for this section (lowercase, no spaces)
              </p>
            </div>

            <div>
              <label for="content" class="block text-sm font-medium text-gray-700">Content</label>
              <textarea
                id="content"
                v-model="form.content"
                rows="6"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.content }"
              />
              <p v-if="form.errors.content" class="mt-1 text-sm text-red-600">
                {{ form.errors.content }}
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
                :href="route('admin.sections.index')"
                class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-4 py-2 rounded-md transition-colors"
              >
                Cancel
              </Link>
              <button
                type="submit"
                :disabled="form.processing"
                class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors disabled:opacity-50"
              >
                Create Section
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
  title: '',
  identifier: '',
  content: '',
  order: 0,
  is_active: true
})

const submit = () => {
  form.post(route('admin.sections.store'))
}
</script>
