const api=require('../../config/api.js');
const util= require('../../utils/util.js');

const app = getApp()

Page({
  data: {
    banner:[],
    channels:[],
    brands:[],
    newGoods:[],
    hotGoods:[],
    topics:[],
    floorGoods:[]
  },
  onShareAppMessage:function(){
    return {
      title:'NideShop',
      desc:'仿网易严选微信小程序商城',
      path:'/pages/index/index'
    }
  },
  onLoad: function () {
    this.getIndexData();
  },
  getIndexData:function(){
    let that=this;
    util.request(api.indexUrl).then(function(res){
      console.log(res);
      that.setData({
        banner:res.data.banner
      })
    })
    console.log(this.data)
  }
})
