import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: Index
  },
  {
    path: '/login',
    component: () => import(/* webpackChunkName: "login" */ '../views/Login.vue')
  },
  {
    path: '/register',
    component: () => import(/* webpackChunkName: "register" */ '../views/Register.vue')
  },
  {
    path: '/list/:cid',
    component: () => import(/* webpackChunkName: "list" */ '../views/List.vue')
  },
  {
    path: '/details/:pid',
    component: () => import(/* webpackChunkName: "details" */ '../views/Details.vue')
  },
  {
    path: '/me',
    component: () => import(/* webpackChunkName: "me" */ '../views/Me.vue'),
    meta: {auth: true}
  },
  {
    path: '/shopcar',
    component: () => import(/* webpackChunkName: "shopcar" */ '../views/Shopcar.vue'),
    meta: {auth: true}
  }
]

const router = new VueRouter({
  routes
})

export default router
