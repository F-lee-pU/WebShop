import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import MyFooter from './components/MyFooter'

Vue.use(ElementUI);

Vue.component('my-footer',MyFooter);

axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.prototype.axios=axios;

Vue.config.productionTip = false

router.beforeEach((to, from, next) => {
  if(to.matched.some(m => m.meta.auth)){
    if(sessionStorage.getItem('isLogin') == 1){
      next();
    }else if(to.path !== '/') {
      next({path: '/login'});
    }
  }else{
    next();
  }
});

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
