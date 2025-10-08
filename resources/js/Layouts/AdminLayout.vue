<template>
  <div class="min-h-screen bg-gray-100">
    <!-- Sidebar -->
    <div class="fixed inset-y-0 left-0 w-64 bg-gray-800 text-white">
      <div class="flex flex-col h-full">
        <!-- Logo -->
        <div class="flex items-center justify-center h-16 bg-gray-900">
          <h1 class="text-xl font-bold">Admin Panel</h1>
        </div>

        <!-- Navigation -->
        <nav class="flex-1 overflow-y-auto py-4">
          <Link
            :href="route('admin.dashboard')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.dashboard') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
            </svg>
            Dashboard
          </Link>

          <Link
            :href="route('admin.sections.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.sections.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            </svg>
            Sections
          </Link>

          <Link
            :href="route('admin.faqs.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.faqs.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            FAQs
          </Link>

          <Link
            :href="route('admin.benefits.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.benefits.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
            </svg>
            Benefits
          </Link>

          <Link
            :href="route('admin.training-modules.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.training-modules.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
            </svg>
            Training Modules
          </Link>

          <Link
            :href="route('admin.care-jobs.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.care-jobs.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            Care Jobs
          </Link>

          <Link
            :href="route('admin.news-articles.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.news-articles.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 20H5a2 2 0 01-2-2V6a2 2 0 012-2h10a2 2 0 012 2v1m2 13a2 2 0 01-2-2V7m2 13a2 2 0 002-2V9a2 2 0 00-2-2h-2m-4-3H9M7 16h6M7 8h6v4H7V8z" />
            </svg>
            News Articles
          </Link>

          <Link
            :href="route('admin.job-applications.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.job-applications.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
            </svg>
            Job Applications
          </Link>

          <Link
            :href="route('admin.job-positions.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.job-positions.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            Job Positions
          </Link>

          <Link
            :href="route('admin.branding.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.branding.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
            </svg>
            Branding
          </Link>

          <Link
            :href="route('admin.email-settings.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.email-settings.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            Email Settings
          </Link>

          <Link
            :href="route('admin.seo-settings.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.seo-settings.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
            </svg>
            SEO Settings
          </Link>

          <Link
            :href="route('admin.settings.index')"
            class="flex items-center px-6 py-3 hover:bg-gray-700 transition-colors"
            :class="{ 'bg-gray-700': route().current('admin.settings.*') }"
          >
            <svg class="w-5 h-5 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
            Settings
          </Link>
        </nav>
      </div>
    </div>

    <!-- Main content -->
    <div class="ml-64">
      <!-- Top bar -->
      <header class="bg-white shadow">
        <div class="flex items-center justify-between px-8 py-4">
          <h2 class="text-2xl font-semibold text-gray-800">
            {{ title }}
          </h2>

          <div class="flex items-center space-x-4">
            <!-- Language Switcher -->
            <div class="relative" ref="langDropdownRef">
              <button
                @click="toggleLangDropdown"
                class="flex items-center space-x-2 px-3 py-2 text-gray-700 hover:bg-gray-100 rounded-lg transition-colors focus:outline-none"
              >
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5h12M9 3v2m1.048 9.5A18.022 18.022 0 016.412 9m6.088 9h7M11 21l5-10 5 10M12.751 5C11.783 10.77 8.07 15.61 3 18.129" />
                </svg>
                <span class="font-medium">{{ currentLanguage.name }}</span>
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                </svg>
              </button>

              <div
                v-if="langDropdownOpen"
                class="absolute right-0 mt-2 w-48 bg-white rounded-lg shadow-lg py-1 z-20 border border-gray-200"
              >
                <button
                  v-for="lang in languages"
                  :key="lang.code"
                  @click="switchLanguage(lang.code)"
                  class="flex items-center w-full px-4 py-2 text-sm hover:bg-gray-100 transition-colors"
                  :class="{ 'bg-blue-50 text-blue-600': lang.code === currentLocale }"
                >
                  <span class="mr-3 text-xl">{{ lang.flag }}</span>
                  <span class="font-medium">{{ lang.name }}</span>
                  <svg v-if="lang.code === currentLocale" class="w-5 h-5 ml-auto text-blue-600" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                  </svg>
                </button>
              </div>
            </div>

            <!-- User Dropdown -->
            <div class="relative" ref="dropdownRef">
              <button
                @click="toggleDropdown"
                class="flex items-center space-x-2 text-gray-700 hover:text-gray-900 focus:outline-none"
              >
                <span>{{ $page.props.auth?.user?.name || 'Admin' }}</span>
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                </svg>
              </button>

              <div
                v-if="dropdownOpen"
                class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg py-1 z-10"
              >
                <button
                  @click="handleLogout"
                  class="block w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                >
                  Logout
                </button>
              </div>
            </div>
          </div>
        </div>
      </header>

      <!-- Page content -->
      <main class="p-8">
        <!-- Flash messages -->
        <div v-if="$page.props.flash?.success" class="mb-4 bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded">
          {{ $page.props.flash.success }}
        </div>
        <div v-if="$page.props.flash?.error" class="mb-4 bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded">
          {{ $page.props.flash.error }}
        </div>

        <slot />
      </main>
    </div>
  </div>
</template>

<script setup>
import { Link, router, usePage } from '@inertiajs/vue3'
import { ref, onMounted, onUnmounted, computed } from 'vue'

defineProps({
  title: {
    type: String,
    default: 'Admin Dashboard'
  }
})

const page = usePage()
const currentLocale = computed(() => page.props.currentLocale || 'pl')

const languages = [
  { code: 'en', name: 'English', flag: '🇬🇧' },
  { code: 'pl', name: 'Polski', flag: '🇵🇱' },
  { code: 'nl', name: 'Nederlands', flag: '🇳🇱' }
]

const currentLanguage = computed(() =>
  languages.find(lang => lang.code === currentLocale.value) || languages[1]
)

const dropdownOpen = ref(false)
const dropdownRef = ref(null)
const langDropdownOpen = ref(false)
const langDropdownRef = ref(null)

const toggleDropdown = () => {
  dropdownOpen.value = !dropdownOpen.value
  langDropdownOpen.value = false
}

const toggleLangDropdown = () => {
  langDropdownOpen.value = !langDropdownOpen.value
  dropdownOpen.value = false
}

const switchLanguage = (locale) => {
  router.post(route('language.switch'), { locale }, {
    preserveState: false,
    preserveScroll: false,
    onSuccess: () => {
      langDropdownOpen.value = false
    }
  })
}

const handleLogout = () => {
  router.post(route('logout'), {}, {
    onSuccess: () => {
      window.location.href = '/'
    }
  })
}

const closeDropdown = (event) => {
  if (dropdownRef.value && !dropdownRef.value.contains(event.target)) {
    dropdownOpen.value = false
  }
  if (langDropdownRef.value && !langDropdownRef.value.contains(event.target)) {
    langDropdownOpen.value = false
  }
}

onMounted(() => {
  document.addEventListener('click', closeDropdown)
})

onUnmounted(() => {
  document.removeEventListener('click', closeDropdown)
})
</script>
