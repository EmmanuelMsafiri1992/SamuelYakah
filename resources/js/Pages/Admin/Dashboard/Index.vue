<template>
  <AdminLayout title="Dashboard">
    <!-- Welcome Section -->
    <div class="mb-8">
      <div class="bg-gradient-to-r from-blue-600 via-blue-700 to-indigo-800 rounded-2xl shadow-xl p-8 text-white">
        <div class="flex items-center justify-between">
          <div>
            <h1 class="text-3xl font-bold mb-2">Welcome back, {{ $page.props.auth?.user?.name || 'Admin' }}! 👋</h1>
            <p class="text-blue-100 text-lg">Here's what's happening with your recruitment platform today.</p>
          </div>
          <div class="hidden lg:block">
            <svg class="w-32 h-32 text-blue-400 opacity-20" fill="currentColor" viewBox="0 0 20 20">
              <path d="M10.394 2.08a1 1 0 00-.788 0l-7 3a1 1 0 000 1.84L5.25 8.051a.999.999 0 01.356-.257l4-1.714a1 1 0 11.788 1.838L7.667 9.088l1.94.831a1 1 0 00.787 0l7-3a1 1 0 000-1.838l-7-3zM3.31 9.397L5 10.12v4.102a8.969 8.969 0 00-1.05-.174 1 1 0 01-.89-.89 11.115 11.115 0 01.25-3.762zM9.3 16.573A9.026 9.026 0 007 14.935v-3.957l1.818.78a3 3 0 002.364 0l5.508-2.361a11.026 11.026 0 01.25 3.762 1 1 0 01-.89.89 8.968 8.968 0 00-5.35 2.524 1 1 0 01-1.4 0zM6 18a1 1 0 001-1v-2.065a8.935 8.935 0 00-2-.712V17a1 1 0 001 1z"/>
            </svg>
          </div>
        </div>
      </div>
    </div>

    <!-- Statistics Cards -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
      <!-- Total Applications Card -->
      <div class="group bg-white rounded-xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden">
        <div class="p-6">
          <div class="flex items-center justify-between mb-4">
            <div class="flex-shrink-0">
              <div class="flex items-center justify-center w-14 h-14 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-7 h-7 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                </svg>
              </div>
            </div>
            <div class="text-right">
              <p class="text-sm font-medium text-gray-500 mb-1">Total Applications</p>
              <p class="text-3xl font-bold text-gray-900">{{ stats.totalApplications }}</p>
            </div>
          </div>
          <div class="flex items-center text-sm">
            <span class="text-green-600 font-semibold flex items-center">
              <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                <path fill-rule="evenodd" d="M12 7a1 1 0 110-2h5a1 1 0 011 1v5a1 1 0 11-2 0V8.414l-4.293 4.293a1 1 0 01-1.414 0L8 10.414l-4.293 4.293a1 1 0 01-1.414-1.414l5-5a1 1 0 011.414 0L11 10.586 14.586 7H12z" clip-rule="evenodd"/>
              </svg>
              +12.5%
            </span>
            <span class="text-gray-500 ml-2">from last month</span>
          </div>
        </div>
        <div class="h-1 bg-gradient-to-r from-blue-500 to-blue-600"></div>
      </div>

      <!-- Pending Applications Card -->
      <div class="group bg-white rounded-xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden">
        <div class="p-6">
          <div class="flex items-center justify-between mb-4">
            <div class="flex-shrink-0">
              <div class="flex items-center justify-center w-14 h-14 bg-gradient-to-br from-yellow-500 to-orange-500 rounded-xl shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-7 h-7 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
              </div>
            </div>
            <div class="text-right">
              <p class="text-sm font-medium text-gray-500 mb-1">Pending Review</p>
              <p class="text-3xl font-bold text-gray-900">{{ stats.pendingApplications }}</p>
            </div>
          </div>
          <div class="flex items-center text-sm">
            <span class="text-yellow-600 font-semibold">Needs attention</span>
            <span class="text-gray-500 ml-2">• Review now</span>
          </div>
        </div>
        <div class="h-1 bg-gradient-to-r from-yellow-500 to-orange-500"></div>
      </div>

      <!-- Approved Applications Card -->
      <div class="group bg-white rounded-xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden">
        <div class="p-6">
          <div class="flex items-center justify-between mb-4">
            <div class="flex-shrink-0">
              <div class="flex items-center justify-center w-14 h-14 bg-gradient-to-br from-green-500 to-emerald-600 rounded-xl shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-7 h-7 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
              </div>
            </div>
            <div class="text-right">
              <p class="text-sm font-medium text-gray-500 mb-1">Approved</p>
              <p class="text-3xl font-bold text-gray-900">{{ stats.approvedApplications }}</p>
            </div>
          </div>
          <div class="flex items-center text-sm">
            <span class="text-green-600 font-semibold">{{ getPercentage(stats.approvedApplications, stats.totalApplications) }}%</span>
            <span class="text-gray-500 ml-2">approval rate</span>
          </div>
        </div>
        <div class="h-1 bg-gradient-to-r from-green-500 to-emerald-600"></div>
      </div>

      <!-- Job Positions Card -->
      <div class="group bg-white rounded-xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden">
        <div class="p-6">
          <div class="flex items-center justify-between mb-4">
            <div class="flex-shrink-0">
              <div class="flex items-center justify-center w-14 h-14 bg-gradient-to-br from-purple-500 to-indigo-600 rounded-xl shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-7 h-7 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
              </div>
            </div>
            <div class="text-right">
              <p class="text-sm font-medium text-gray-500 mb-1">Active Positions</p>
              <p class="text-3xl font-bold text-gray-900">{{ stats.activeJobPositions || 0 }}</p>
            </div>
          </div>
          <div class="flex items-center text-sm">
            <span class="text-purple-600 font-semibold">{{ stats.totalJobPositions || 0 }} total</span>
            <span class="text-gray-500 ml-2">• Live jobs</span>
          </div>
        </div>
        <div class="h-1 bg-gradient-to-r from-purple-500 to-indigo-600"></div>
      </div>
    </div>

    <!-- Charts & Stats Grid -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
      <!-- Applications Overview Chart -->
      <div class="lg:col-span-2 bg-white rounded-xl shadow-lg p-6">
        <div class="flex items-center justify-between mb-6">
          <h3 class="text-xl font-bold text-gray-900">Applications Overview</h3>
          <select class="text-sm border-gray-300 rounded-lg focus:ring-blue-500 focus:border-blue-500">
            <option>This Month</option>
            <option>Last Month</option>
            <option>This Year</option>
          </select>
        </div>

        <div class="space-y-5">
          <!-- Pending Bar -->
          <div>
            <div class="flex justify-between items-center mb-2">
              <div class="flex items-center">
                <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                <span class="text-sm font-semibold text-gray-700">Pending</span>
              </div>
              <span class="text-sm font-bold text-gray-900">{{ stats.pendingApplications }} ({{ getPercentage(stats.pendingApplications, stats.totalApplications) }}%)</span>
            </div>
            <div class="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
              <div
                class="bg-gradient-to-r from-yellow-400 to-yellow-500 h-3 rounded-full shadow-inner transition-all duration-500"
                :style="{ width: getPercentage(stats.pendingApplications, stats.totalApplications) + '%' }"
              ></div>
            </div>
          </div>

          <!-- Reviewing Bar -->
          <div>
            <div class="flex justify-between items-center mb-2">
              <div class="flex items-center">
                <div class="w-3 h-3 bg-blue-500 rounded-full mr-2"></div>
                <span class="text-sm font-semibold text-gray-700">Reviewing</span>
              </div>
              <span class="text-sm font-bold text-gray-900">{{ stats.reviewingApplications || 0 }} ({{ getPercentage(stats.reviewingApplications || 0, stats.totalApplications) }}%)</span>
            </div>
            <div class="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
              <div
                class="bg-gradient-to-r from-blue-400 to-blue-500 h-3 rounded-full shadow-inner transition-all duration-500"
                :style="{ width: getPercentage(stats.reviewingApplications || 0, stats.totalApplications) + '%' }"
              ></div>
            </div>
          </div>

          <!-- Approved Bar -->
          <div>
            <div class="flex justify-between items-center mb-2">
              <div class="flex items-center">
                <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
                <span class="text-sm font-semibold text-gray-700">Approved</span>
              </div>
              <span class="text-sm font-bold text-gray-900">{{ stats.approvedApplications }} ({{ getPercentage(stats.approvedApplications, stats.totalApplications) }}%)</span>
            </div>
            <div class="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
              <div
                class="bg-gradient-to-r from-green-400 to-green-500 h-3 rounded-full shadow-inner transition-all duration-500"
                :style="{ width: getPercentage(stats.approvedApplications, stats.totalApplications) + '%' }"
              ></div>
            </div>
          </div>

          <!-- Rejected Bar -->
          <div>
            <div class="flex justify-between items-center mb-2">
              <div class="flex items-center">
                <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                <span class="text-sm font-semibold text-gray-700">Rejected</span>
              </div>
              <span class="text-sm font-bold text-gray-900">{{ stats.rejectedApplications }} ({{ getPercentage(stats.rejectedApplications, stats.totalApplications) }}%)</span>
            </div>
            <div class="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
              <div
                class="bg-gradient-to-r from-red-400 to-red-500 h-3 rounded-full shadow-inner transition-all duration-500"
                :style="{ width: getPercentage(stats.rejectedApplications, stats.totalApplications) + '%' }"
              ></div>
            </div>
          </div>
        </div>
      </div>

      <!-- Quick Stats -->
      <div class="bg-white rounded-xl shadow-lg p-6">
        <h3 class="text-xl font-bold text-gray-900 mb-6">Quick Stats</h3>
        <div class="space-y-4">
          <div class="flex items-center justify-between p-4 bg-gradient-to-r from-blue-50 to-indigo-50 rounded-lg">
            <div class="flex items-center">
              <div class="w-10 h-10 bg-blue-500 rounded-lg flex items-center justify-center mr-3">
                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M4 4a2 2 0 00-2 2v1h16V6a2 2 0 00-2-2H4z"/>
                  <path fill-rule="evenodd" d="M18 9H2v5a2 2 0 002 2h12a2 2 0 002-2V9zM4 13a1 1 0 011-1h1a1 1 0 110 2H5a1 1 0 01-1-1zm5-1a1 1 0 100 2h1a1 1 0 100-2H9z" clip-rule="evenodd"/>
                </svg>
              </div>
              <div>
                <p class="text-xs text-gray-600">Sections</p>
                <p class="text-lg font-bold text-gray-900">{{ stats.totalSections }}</p>
              </div>
            </div>
          </div>

          <div class="flex items-center justify-between p-4 bg-gradient-to-r from-green-50 to-emerald-50 rounded-lg">
            <div class="flex items-center">
              <div class="w-10 h-10 bg-green-500 rounded-lg flex items-center justify-center mr-3">
                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M9 2a1 1 0 000 2h2a1 1 0 100-2H9z"/>
                  <path fill-rule="evenodd" d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm9.707 5.707a1 1 0 00-1.414-1.414L9 12.586l-1.293-1.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                </svg>
              </div>
              <div>
                <p class="text-xs text-gray-600">Benefits</p>
                <p class="text-lg font-bold text-gray-900">{{ stats.totalBenefits }}</p>
              </div>
            </div>
          </div>

          <div class="flex items-center justify-between p-4 bg-gradient-to-r from-purple-50 to-pink-50 rounded-lg">
            <div class="flex items-center">
              <div class="w-10 h-10 bg-purple-500 rounded-lg flex items-center justify-center mr-3">
                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M9 4.804A7.968 7.968 0 005.5 4c-1.255 0-2.443.29-3.5.804v10A7.969 7.969 0 015.5 14c1.669 0 3.218.51 4.5 1.385A7.962 7.962 0 0114.5 14c1.255 0 2.443.29 3.5.804v-10A7.968 7.968 0 0014.5 4c-1.255 0-2.443.29-3.5.804V12a1 1 0 11-2 0V4.804z"/>
                </svg>
              </div>
              <div>
                <p class="text-xs text-gray-600">Training</p>
                <p class="text-lg font-bold text-gray-900">{{ stats.trainingModules }}</p>
              </div>
            </div>
          </div>

          <div class="flex items-center justify-between p-4 bg-gradient-to-r from-yellow-50 to-orange-50 rounded-lg">
            <div class="flex items-center">
              <div class="w-10 h-10 bg-yellow-500 rounded-lg flex items-center justify-center mr-3">
                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"/>
                </svg>
              </div>
              <div>
                <p class="text-xs text-gray-600">Active FAQs</p>
                <p class="text-lg font-bold text-gray-900">{{ stats.activeFaqs }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Recent Applications Table -->
    <div class="bg-white rounded-xl shadow-lg overflow-hidden">
      <div class="px-6 py-5 border-b border-gray-200 bg-gradient-to-r from-gray-50 to-white">
        <div class="flex items-center justify-between">
          <div>
            <h3 class="text-xl font-bold text-gray-900">Recent Applications</h3>
            <p class="text-sm text-gray-600 mt-1">Latest job applications submitted</p>
          </div>
          <Link
            :href="route('admin.job-applications.index')"
            class="px-4 py-2 bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-700 hover:to-indigo-700 text-white rounded-lg font-medium transition-all duration-200 shadow-md hover:shadow-lg"
          >
            View All
          </Link>
        </div>
      </div>
      <div class="overflow-x-auto">
        <table class="min-w-full divide-y divide-gray-200">
          <thead class="bg-gray-50">
            <tr>
              <th class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                Applicant
              </th>
              <th class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                Contact
              </th>
              <th class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                Status
              </th>
              <th class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                Applied
              </th>
              <th class="px-6 py-4 text-right text-xs font-bold text-gray-600 uppercase tracking-wider">
                Actions
              </th>
            </tr>
          </thead>
          <tbody class="bg-white divide-y divide-gray-200">
            <tr v-for="application in recentApplications" :key="application.id" class="hover:bg-gray-50 transition-colors">
              <td class="px-6 py-4 whitespace-nowrap">
                <div class="flex items-center">
                  <div class="flex-shrink-0 h-10 w-10">
                    <div class="h-10 w-10 rounded-full bg-gradient-to-br from-blue-400 to-indigo-500 flex items-center justify-center text-white font-bold text-sm">
                      {{ application.first_name.charAt(0) }}{{ application.last_name.charAt(0) }}
                    </div>
                  </div>
                  <div class="ml-4">
                    <div class="text-sm font-semibold text-gray-900">
                      {{ application.first_name }} {{ application.last_name }}
                    </div>
                    <div class="text-sm text-gray-500">
                      {{ application.nationality }}
                    </div>
                  </div>
                </div>
              </td>
              <td class="px-6 py-4">
                <div class="text-sm text-gray-900">{{ application.email }}</div>
                <div class="text-sm text-gray-500">{{ application.phone }}</div>
              </td>
              <td class="px-6 py-4 whitespace-nowrap">
                <span
                  class="px-3 py-1 inline-flex text-xs leading-5 font-bold rounded-full shadow-sm"
                  :class="{
                    'bg-gradient-to-r from-yellow-400 to-orange-400 text-white': application.status === 'pending',
                    'bg-gradient-to-r from-blue-400 to-indigo-400 text-white': application.status === 'reviewing',
                    'bg-gradient-to-r from-green-400 to-emerald-500 text-white': application.status === 'approved',
                    'bg-gradient-to-r from-red-400 to-pink-500 text-white': application.status === 'rejected'
                  }"
                >
                  {{ application.status.toUpperCase() }}
                </span>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                {{ formatDate(application.created_at) }}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <Link
                  :href="route('admin.job-applications.show', application.id)"
                  class="text-blue-600 hover:text-blue-900 font-semibold inline-flex items-center"
                >
                  View Details
                  <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/>
                  </svg>
                </Link>
              </td>
            </tr>
            <tr v-if="recentApplications.length === 0">
              <td colspan="5" class="px-6 py-12 text-center">
                <div class="flex flex-col items-center">
                  <svg class="w-16 h-16 text-gray-400 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                  </svg>
                  <p class="text-gray-500 text-lg font-medium">No recent applications</p>
                  <p class="text-gray-400 text-sm mt-1">Applications will appear here when submitted</p>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </AdminLayout>
</template>

<script setup>
import AdminLayout from '@/Layouts/AdminLayout.vue'
import { Link } from '@inertiajs/vue3'

const props = defineProps({
  stats: {
    type: Object,
    default: () => ({
      totalApplications: 0,
      pendingApplications: 0,
      reviewingApplications: 0,
      approvedApplications: 0,
      rejectedApplications: 0,
      trainingModules: 0,
      activeFaqs: 0,
      totalSections: 0,
      totalBenefits: 0,
      totalJobPositions: 0,
      activeJobPositions: 0,
      applicationsThisMonth: 0,
      applicationsToday: 0
    })
  },
  recentApplications: {
    type: Array,
    default: () => []
  }
})

const getPercentage = (value, total) => {
  if (total === 0) return 0
  return Math.round((value / total) * 100)
}

const formatDate = (dateString) => {
  const date = new Date(dateString)
  return date.toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'short',
    day: 'numeric'
  })
}
</script>
