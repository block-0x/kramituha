import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue({
  el: '.js-videosIndex',
  data: {
    videoInfo: {},
    videoInfoBool: false
  },
  methods: {
    setVideoInfo(id){
      axios.get(`api/videos/${id}.json`).then(res => {
        this.videoInfo = res.data;
        this.videoInfoBool = true;
      });
    }
  }
});