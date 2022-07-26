import { createRouter, createWebHistory } from 'vue-router'
import NotFoundComponent from '@/views/NotFoundComponent'
import EventList from '@/views/EventList.vue'
import EventDetails from '@/views/EventDetails.vue'
import About from '@/views/About.vue'

const routes = [
  {
    path: '/',
    name: 'EventList',
    component: EventList
  },
  {
    path: '/event/:id',
    name: 'EventDetails',
    props: true,
    component: EventDetails
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/:pathMatch(.*)*',
    name: 'NotFoundComponent',
    component: NotFoundComponent
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
