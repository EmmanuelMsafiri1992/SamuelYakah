<template>
  <AdminLayout :title="$page.props.translations.admin.create + ' ' + $page.props.translations.admin.training_module">
    <div class="max-w-4xl">
      <div class="bg-white rounded-xl shadow-lg overflow-hidden">
        <!-- Language Tabs -->
        <div class="border-b border-gray-200 bg-gradient-to-r from-gray-50 to-gray-100">
          <nav class="flex space-x-8 px-8 pt-6" aria-label="Tabs">
            <button
              @click="activeTab = 'en'"
              :class="[
                activeTab === 'en'
                  ? 'border-blue-500 text-blue-600 bg-white'
                  : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300',
                'group inline-flex items-center px-6 py-3 border-b-2 font-medium text-sm rounded-t-lg transition-all duration-200'
              ]"
            >
              <span class="mr-2 text-lg">🇬🇧</span>
              English
            </button>
            <button
              @click="activeTab = 'pl'"
              :class="[
                activeTab === 'pl'
                  ? 'border-blue-500 text-blue-600 bg-white'
                  : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300',
                'group inline-flex items-center px-6 py-3 border-b-2 font-medium text-sm rounded-t-lg transition-all duration-200'
              ]"
            >
              <span class="mr-2 text-lg">🇵🇱</span>
              Polski
            </button>
            <button
              @click="activeTab = 'nl'"
              :class="[
                activeTab === 'nl'
                  ? 'border-blue-500 text-blue-600 bg-white'
                  : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300',
                'group inline-flex items-center px-6 py-3 border-b-2 font-medium text-sm rounded-t-lg transition-all duration-200'
              ]"
            >
              <span class="mr-2 text-lg">🇳🇱</span>
              Nederlands
            </button>
          </nav>
        </div>

        <!-- Form Content -->
        <form @submit.prevent="submit" class="p-8">
          <div class="space-y-6">
            <!-- English Fields -->
            <div v-show="activeTab === 'en'" class="space-y-6 animate-fade-in">
              <div>
                <label for="title_en" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.title_en }}
                </label>
                <input
                  id="title_en"
                  v-model="form.title_en"
                  type="text"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.title_en }"
                />
                <p v-if="form.errors.title_en" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.title_en }}
                </p>
              </div>

              <div>
                <label for="description_en" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.description_en }}
                </label>
                <textarea
                  id="description_en"
                  v-model="form.description_en"
                  rows="4"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.description_en }"
                />
                <p v-if="form.errors.description_en" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.description_en }}
                </p>
              </div>
            </div>

            <!-- Polish Fields -->
            <div v-show="activeTab === 'pl'" class="space-y-6 animate-fade-in">
              <div>
                <label for="title_pl" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.title_pl }}
                </label>
                <input
                  id="title_pl"
                  v-model="form.title_pl"
                  type="text"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.title_pl }"
                />
                <p v-if="form.errors.title_pl" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.title_pl }}
                </p>
              </div>

              <div>
                <label for="description_pl" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.description_pl }}
                </label>
                <textarea
                  id="description_pl"
                  v-model="form.description_pl"
                  rows="4"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.description_pl }"
                />
                <p v-if="form.errors.description_pl" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.description_pl }}
                </p>
              </div>
            </div>

            <!-- Dutch Fields -->
            <div v-show="activeTab === 'nl'" class="space-y-6 animate-fade-in">
              <div>
                <label for="title_nl" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.title_nl }}
                </label>
                <input
                  id="title_nl"
                  v-model="form.title_nl"
                  type="text"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.title_nl }"
                />
                <p v-if="form.errors.title_nl" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.title_nl }}
                </p>
              </div>

              <div>
                <label for="description_nl" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.description_nl }}
                </label>
                <textarea
                  id="description_nl"
                  v-model="form.description_nl"
                  rows="4"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.description_nl }"
                />
                <p v-if="form.errors.description_nl" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.description_nl }}
                </p>
              </div>
            </div>

            <!-- Common Fields -->
            <div class="border-t pt-6 mt-6 space-y-6">
              <div class="grid grid-cols-2 gap-6">
                <div>
                  <label for="order" class="block text-sm font-semibold text-gray-700 mb-2">
                    {{ $page.props.translations.admin.order }}
                  </label>
                  <input
                    id="order"
                    v-model.number="form.order"
                    type="number"
                    min="0"
                    class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                    :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.order }"
                  />
                  <p v-if="form.errors.order" class="mt-2 text-sm text-red-600 flex items-center">
                    <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                      <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                    </svg>
                    {{ form.errors.order }}
                  </p>
                </div>

                <div class="flex items-end">
                  <label class="flex items-center space-x-3 cursor-pointer group">
                    <div class="relative">
                      <input
                        id="active"
                        v-model="form.active"
                        type="checkbox"
                        class="sr-only peer"
                      />
                      <div class="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
                    </div>
                    <span class="text-sm font-semibold text-gray-700 group-hover:text-gray-900">
                      {{ $page.props.translations.admin.active }}
                    </span>
                  </label>
                </div>
              </div>
            </div>

            <!-- Action Buttons -->
            <div class="flex items-center justify-end space-x-4 pt-6 border-t">
              <Link
                :href="route('admin.training-modules.index')"
                class="px-6 py-3 bg-gray-100 hover:bg-gray-200 text-gray-700 font-medium rounded-lg transition-all duration-200 hover:shadow-md"
              >
                {{ $page.props.translations.admin.cancel }}
              </Link>
              <button
                type="submit"
                :disabled="form.processing"
                class="px-6 py-3 bg-gradient-to-r from-blue-600 to-blue-700 hover:from-blue-700 hover:to-blue-800 text-white font-medium rounded-lg transition-all duration-200 hover:shadow-lg disabled:opacity-50 disabled:cursor-not-allowed flex items-center"
              >
                <svg v-if="form.processing" class="animate-spin -ml-1 mr-3 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                  <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                  <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                </svg>
                {{ $page.props.translations.admin.create }}
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
import { Link, useForm, usePage } from '@inertiajs/vue3'
import { ref } from 'vue'

const page = usePage()
const activeTab = ref(page.props.currentLocale || 'pl')

const form = useForm({
  title_en: '',
  description_en: '',
  title_pl: '',
  description_pl: '',
  title_nl: '',
  description_nl: '',
  order: 0,
  active: true
})

const submit = () => {
  form.post(route('admin.training-modules.store'))
}
</script>

<style scoped>
.animate-fade-in {
  animation: fadeIn 0.3s ease-in;
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
</style>
