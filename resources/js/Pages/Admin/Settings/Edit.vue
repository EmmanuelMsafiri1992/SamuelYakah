<template>
  <AdminLayout title="Edit Setting">
    <div class="max-w-4xl">
      <div class="bg-white rounded-lg shadow p-6">
        <form @submit.prevent="submit">
          <div class="space-y-6">
            <!-- Key -->
            <div>
              <label for="key" class="block text-sm font-medium text-gray-700">Setting Key</label>
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
            </div>

            <!-- Type -->
            <div>
              <label for="type" class="block text-sm font-medium text-gray-700">Setting Type</label>
              <select
                id="type"
                v-model="form.type"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.type }"
              >
                <option value="text">Text</option>
                <option value="textarea">Textarea</option>
                <option value="email">Email</option>
                <option value="url">URL</option>
                <option value="number">Number</option>
              </select>
              <p v-if="form.errors.type" class="mt-1 text-sm text-red-600">
                {{ form.errors.type }}
              </p>
            </div>

            <!-- Group -->
            <div>
              <label for="group" class="block text-sm font-medium text-gray-700">Group</label>
              <input
                id="group"
                v-model="form.group"
                type="text"
                placeholder="e.g., general, contact, social"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.group }"
              />
              <p v-if="form.errors.group" class="mt-1 text-sm text-red-600">
                {{ form.errors.group }}
              </p>
            </div>

            <!-- Values Tabs -->
            <div class="border-t pt-6">
              <div class="border-b border-gray-200">
                <nav class="-mb-px flex space-x-8">
                  <button
                    type="button"
                    @click="activeTab = 'en'"
                    :class="[
                      activeTab === 'en'
                        ? 'border-blue-500 text-blue-600'
                        : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300',
                      'whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm'
                    ]"
                  >
                    English Value
                  </button>
                  <button
                    type="button"
                    @click="activeTab = 'pl'"
                    :class="[
                      activeTab === 'pl'
                        ? 'border-blue-500 text-blue-600'
                        : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300',
                      'whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm'
                    ]"
                  >
                    Polish Value
                  </button>
                </nav>
              </div>

              <!-- English Value -->
              <div v-show="activeTab === 'en'" class="mt-6">
                <div v-if="form.type === 'textarea'">
                  <label class="block text-sm font-medium text-gray-700">Value (English)</label>
                  <textarea
                    v-model="form.value_en"
                    rows="4"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  />
                </div>
                <div v-else>
                  <label class="block text-sm font-medium text-gray-700">Value (English)</label>
                  <input
                    v-model="form.value_en"
                    :type="form.type === 'number' ? 'number' : 'text'"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  />
                </div>
              </div>

              <!-- Polish Value -->
              <div v-show="activeTab === 'pl'" class="mt-6">
                <div v-if="form.type === 'textarea'">
                  <label class="block text-sm font-medium text-gray-700">Value (Polski)</label>
                  <textarea
                    v-model="form.value_pl"
                    rows="4"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  />
                </div>
                <div v-else>
                  <label class="block text-sm font-medium text-gray-700">Value (Polski)</label>
                  <input
                    v-model="form.value_pl"
                    :type="form.type === 'number' ? 'number' : 'text'"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  />
                </div>
              </div>
            </div>

            <!-- Form Actions -->
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
                <span v-if="form.processing">Updating...</span>
                <span v-else>Update Setting</span>
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
import { ref } from 'vue'

const props = defineProps({
  setting: Object
})

const activeTab = ref('en')

const form = useForm({
  key: props.setting.key,
  value_en: props.setting.value_en,
  value_pl: props.setting.value_pl,
  type: props.setting.type,
  group: props.setting.group
})

const submit = () => {
  form.put(route('admin.settings.update', props.setting.id))
}
</script>
