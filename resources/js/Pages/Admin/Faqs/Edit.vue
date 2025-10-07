<template>
  <AdminLayout :title="$page.props.translations.admin.edit + ' FAQ'">
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
          </nav>
        </div>

        <!-- Form Content -->
        <form @submit.prevent="submit" class="p-8">
          <div class="space-y-6">
            <!-- English Fields -->
            <div v-show="activeTab === 'en'" class="space-y-6 animate-fade-in">
              <div>
                <label for="question_en" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.question_en }}
                </label>
                <input
                  id="question_en"
                  v-model="form.question_en"
                  type="text"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.question_en }"
                />
                <p v-if="form.errors.question_en" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.question_en }}
                </p>
              </div>

              <div>
                <label for="answer_en" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.answer_en }}
                </label>
                <textarea
                  id="answer_en"
                  v-model="form.answer_en"
                  rows="6"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.answer_en }"
                />
                <p v-if="form.errors.answer_en" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.answer_en }}
                </p>
              </div>
            </div>

            <!-- Polish Fields -->
            <div v-show="activeTab === 'pl'" class="space-y-6 animate-fade-in">
              <div>
                <label for="question_pl" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.question_pl }}
                </label>
                <input
                  id="question_pl"
                  v-model="form.question_pl"
                  type="text"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.question_pl }"
                />
                <p v-if="form.errors.question_pl" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.question_pl }}
                </p>
              </div>

              <div>
                <label for="answer_pl" class="block text-sm font-semibold text-gray-700 mb-2">
                  {{ $page.props.translations.admin.answer_pl }}
                </label>
                <textarea
                  id="answer_pl"
                  v-model="form.answer_pl"
                  rows="6"
                  class="block w-full rounded-lg border-gray-300 shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50 transition-all duration-200"
                  :class="{ 'border-red-500 focus:border-red-500 focus:ring-red-500': form.errors.answer_pl }"
                />
                <p v-if="form.errors.answer_pl" class="mt-2 text-sm text-red-600 flex items-center">
                  <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                  </svg>
                  {{ form.errors.answer_pl }}
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
                :href="route('admin.faqs.index')"
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
                {{ $page.props.translations.admin.update }}
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

const props = defineProps({
  faq: Object
})

const page = usePage()
const activeTab = ref(page.props.currentLocale || 'pl')

const form = useForm({
  question_en: props.faq.question_en,
  answer_en: props.faq.answer_en,
  question_pl: props.faq.question_pl,
  answer_pl: props.faq.answer_pl,
  order: props.faq.order,
  active: props.faq.active
})

const submit = () => {
  form.put(route('admin.faqs.update', props.faq.id))
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
