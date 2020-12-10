import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    userId: JSON.parse(localStorage.getItem("userId")) || {},
    userName: JSON.parse(localStorage.getItem("userName")) || {},
    isLogin:false
  },
  mutations: {
    login(state, v) {
      sessionStorage.setItem('userInfo', JSON.stringify(v));
      sessionStorage.setItem('isLogin', 1); 
      state.userId = v.uid;
      state.userName = v.uname;
      state.isLogin = true;
    },
    logout(state){
      sessionStorage.clear();
      state.userId = {};
      state.userName = {};
      state.isLogin = false;
    }
  },
  actions: {
  },
  modules: {
  }
})