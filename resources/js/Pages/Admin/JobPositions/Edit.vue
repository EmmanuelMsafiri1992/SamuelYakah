<template>
  <AdminLayout title="Edit Job Position">
    <div class="max-w-4xl">
      <div class="bg-white rounded-lg shadow p-6">
        <form @submit.prevent="submit">
          <div class="space-y-6">
            <!-- Type -->
            <div>
              <label for="type" class="block text-sm font-medium text-gray-700">Employment Type</label>
              <select
                id="type"
                v-model="form.type"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                :class="{ 'border-red-500': form.errors.type }"
              >
                <option value="">Select type...</option>
                <option value="full-time">Full-time</option>
                <option value="part-time">Part-time</option>
                <option value="contract">Contract</option>
              </select>
              <p v-if="form.errors.type" class="mt-1 text-sm text-red-600">
                {{ form.errors.type }}
              </p>
            </div>

            <!-- Salary Range -->
            <div class="grid grid-cols-2 gap-4">
              <div>
                <label for="salary_min" class="block text-sm font-medium text-gray-700">Minimum Salary</label>
                <input
                  id="salary_min"
                  v-model.number="form.salary_min"
                  type="number"
                  min="0"
                  step="0.01"
                  placeholder="e.g., 50000"
                  class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  :class="{ 'border-red-500': form.errors.salary_min }"
                />
                <p v-if="form.errors.salary_min" class="mt-1 text-sm text-red-600">
                  {{ form.errors.salary_min }}
                </p>
              </div>

              <div>
                <label for="salary_max" class="block text-sm font-medium text-gray-700">Maximum Salary</label>
                <input
                  id="salary_max"
                  v-model.number="form.salary_max"
                  type="number"
                  min="0"
                  step="0.01"
                  placeholder="e.g., 80000"
                  class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                  :class="{ 'border-red-500': form.errors.salary_max }"
                />
                <p v-if="form.errors.salary_max" class="mt-1 text-sm text-red-600">
                  {{ form.errors.salary_max }}
                </p>
              </div>
            </div>

            <!-- Order -->
            <div>
              <label for="order" class="block text-sm font-medium text-gray-700">Display Order</label>
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

            <!-- Active Status -->
            <div class="flex items-center">
              <input
                id="active"
                v-model="form.active"
                type="checkbox"
                class="h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded"
              />
              <label for="active" class="ml-2 block text-sm text-gray-900">
                Active (visible on website)
              </label>
            </div>

            <!-- Translations Tabs -->
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
                    English
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
                    Polski
                  </button>
                </nav>
              </div>

              <!-- English Translation -->
              <div v-show="activeTab === 'en'" class="mt-6 space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700">Title (English)</label>
                  <input
                    v-model="form.title_en"
                    type="text"
                    placeholder="e.g., Senior Software Engineer"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.title_en }"
                  />
                  <p v-if="form.errors.title_en" class="mt-1 text-sm text-red-600">
                    {{ form.errors.title_en }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Location (English)</label>
                  <input
                    v-model="form.location_en"
                    type="text"
                    placeholder="e.g., Warsaw, Poland / Remote"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.location_en }"
                  />
                  <p v-if="form.errors.location_en" class="mt-1 text-sm text-red-600">
                    {{ form.errors.location_en }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Description (English)</label>
                  <textarea
                    v-model="form.description_en"
                    rows="4"
                    placeholder="Brief description of the position..."
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.description_en }"
                  />
                  <p v-if="form.errors.description_en" class="mt-1 text-sm text-red-600">
                    {{ form.errors.description_en }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Requirements (English)</label>
                  <textarea
                    v-model="form.requirements_en"
                    rows="6"
                    placeholder="List the required qualifications and skills..."
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.requirements_en }"
                  />
                  <p v-if="form.errors.requirements_en" class="mt-1 text-sm text-red-600">
                    {{ form.errors.requirements_en }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Responsibilities (English)</label>
                  <textarea
                    v-model="form.responsibilities_en"
                    rows="6"
                    placeholder="List the key responsibilities..."
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.responsibilities_en }"
                  />
                  <p v-if="form.errors.responsibilities_en" class="mt-1 text-sm text-red-600">
                    {{ form.errors.responsibilities_en }}
                  </p>
                </div>
              </div>

              <!-- Polish Translation -->
              <div v-show="activeTab === 'pl'" class="mt-6 space-y-4">
                <div>
                  <label class="block text-sm font-medium text-gray-700">Title (Polski)</label>
                  <input
                    v-model="form.title_pl"
                    type="text"
                    placeholder="np. Starszy Inżynier Oprogramowania"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.title_pl }"
                  />
                  <p v-if="form.errors.title_pl" class="mt-1 text-sm text-red-600">
                    {{ form.errors.title_pl }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Location (Polski)</label>
                  <input
                    v-model="form.location_pl"
                    type="text"
                    placeholder="np. Warszawa, Polska / Praca zdalna"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.location_pl }"
                  />
                  <p v-if="form.errors.location_pl" class="mt-1 text-sm text-red-600">
                    {{ form.errors.location_pl }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Description (Polski)</label>
                  <textarea
                    v-model="form.description_pl"
                    rows="4"
                    placeholder="Krótki opis stanowiska..."
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.description_pl }"
                  />
                  <p v-if="form.errors.description_pl" class="mt-1 text-sm text-red-600">
                    {{ form.errors.description_pl }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Requirements (Polski)</label>
                  <textarea
                    v-model="form.requirements_pl"
                    rows="6"
                    placeholder="Wymień wymagane kwalifikacje i umiejętności..."
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.requirements_pl }"
                  />
                  <p v-if="form.errors.requirements_pl" class="mt-1 text-sm text-red-600">
                    {{ form.errors.requirements_pl }}
                  </p>
                </div>

                <div>
                  <label class="block text-sm font-medium text-gray-700">Responsibilities (Polski)</label>
                  <textarea
                    v-model="form.responsibilities_pl"
                    rows="6"
                    placeholder="Wymień kluczowe obowiązki..."
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    :class="{ 'border-red-500': form.errors.responsibilities_pl }"
                  />
                  <p v-if="form.errors.responsibilities_pl" class="mt-1 text-sm text-red-600">
                    {{ form.errors.responsibilities_pl }}
                  </p>
                </div>
              </div>
            </div>

            <!-- Form Actions -->
            <div class="flex items-center justify-end space-x-3 pt-6 border-t">
              <Link
                :href="route('admin.job-positions.index')"
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
                <span v-else>Update Job Position</span>
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
  jobPosition: Object
})

const activeTab = ref('en')

const form = useForm({
  title_en: props.jobPosition.title_en || '',
  title_pl: props.jobPosition.title_pl || '',
  description_en: props.jobPosition.description_en || '',
  description_pl: props.jobPosition.description_pl || '',
  location_en: props.jobPosition.location_en || '',
  location_pl: props.jobPosition.location_pl || '',
  type: props.jobPosition.type || '',
  salary_min: props.jobPosition.salary_min || null,
  salary_max: props.jobPosition.salary_max || null,
  requirements_en: props.jobPosition.requirements_en || '',
  requirements_pl: props.jobPosition.requirements_pl || '',
  responsibilities_en: props.jobPosition.responsibilities_en || '',
  responsibilities_pl: props.jobPosition.responsibilities_pl || '',
  order: props.jobPosition.order || 0,
  active: props.jobPosition.active ?? true
})

const submit = () => {
  form.put(route('admin.job-positions.update', props.jobPosition.id))
}
</script>
