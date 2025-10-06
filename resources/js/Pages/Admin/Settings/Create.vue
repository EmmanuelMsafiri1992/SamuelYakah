<template>
  <AdminLayout title="Create Setting">
    <div class="max-w-3xl">
      <div class="bg-white rounded-lg shadow p-6">
        <form @submit.prevent="submit">
          <div class="space-y-6">
            <div>
              <label for="key" class="block text-sm font-medium text-gray-700">Key</label>
              <input
                id="key"
                v-model="form.key"
                type="text"
                placeholder="e.g., site_name, contact_email"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.key }"
              />
              <p v-if="form.errors.key" class="mt-1 text-sm text-red-600">
                {{ form.errors.key }}
              </p>
              <p class="mt-1 text-sm text-gray-500">
                Unique identifier for this setting (lowercase, underscores allowed)
              </p>
            </div>

            <div>
              <label for="type" class="block text-sm font-medium text-gray-700">Type</label>
              <select
                id="type"
                v-model="form.type"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.type }"
              >
                <option value="text">Text</option>
                <option value="textarea">Textarea</option>
                <option value="number">Number</option>
                <option value="boolean">Boolean</option>
                <option value="email">Email</option>
                <option value="url">URL</option>
                <option value="json">JSON</option>
              </select>
              <p v-if="form.errors.type" class="mt-1 text-sm text-red-600">
                {{ form.errors.type }}
              </p>
            </div>

            <div>
              <label for="value" class="block text-sm font-medium text-gray-700">Value</label>
              <textarea
                v-if="form.type === 'textarea' || form.type === 'json'"
                id="value"
                v-model="form.value"
                rows="4"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.value }"
              />
              <select
                v-else-if="form.type === 'boolean'"
                id="value"
                v-model="form.value"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.value }"
              >
                <option value="true">True</option>
                <option value="false">False</option>
              </select>
              <input
                v-else
                id="value"
                v-model="form.value"
                :type="form.type === 'number' ? 'number' : form.type === 'email' ? 'email' : form.type === 'url' ? 'url' : 'text'"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.value }"
              />
              <p v-if="form.errors.value" class="mt-1 text-sm text-red-600">
                {{ form.errors.value }}
              </p>
            </div>

            <div>
              <label for="description" class="block text-sm font-medium text-gray-700">Description</label>
              <textarea
                id="description"
                v-model="form.description"
                rows="3"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.description }"
              />
              <p v-if="form.errors.description" class="mt-1 text-sm text-red-600">
                {{ form.errors.description }}
              </p>
              <p class="mt-1 text-sm text-gray-500">
                Brief description of what this setting controls
              </p>
            </div>

            <div class="flex items-center justify-end space-x-3 pt-6 border-t">
              <Link
                :href="route('admin.settings.index')"
                class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-4 py-2 rounded-md transition-colors"
              >
                Cancel
              </Link>
              <button
                type="submit"
                :disabled="form.processing"
                class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-colors disabled:opacity-50"
              >
                Create Setting
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
  key: '',
  value: '',
  type: 'text',
  description: ''
})

const submit = () => {
  form.post(route('admin.settings.store'))
}
</script>
