(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/news-detail/news-detail"],{"1d3d":function(t,n,e){},"1eb0":function(t,n,e){"use strict";var r,u=function(){var t=this,n=t.$createElement;t._self._c},a=[];e.d(n,"b",(function(){return u})),e.d(n,"c",(function(){return a})),e.d(n,"a",(function(){return r}))},"2e49":function(t,n,e){"use strict";var r=e("1d3d"),u=e.n(r);u.a},"3c61":function(t,n,e){"use strict";e.r(n);var r=e("3e30"),u=e.n(r);for(var a in r)"default"!==a&&function(t){e.d(n,t,(function(){return r[t]}))}(a);n["default"]=u.a},"3e30":function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=u(e("a34a"));function u(t){return t&&t.__esModule?t:{default:t}}function a(t,n,e,r,u,a,i){try{var c=t[a](i),o=c.value}catch(d){return void e(d)}c.done?n(o):Promise.resolve(o).then(r,u)}function i(t){return function(){var n=this,e=arguments;return new Promise((function(r,u){var i=t.apply(n,e);function c(t){a(i,r,u,c,o,"next",t)}function o(t){a(i,r,u,c,o,"throw",t)}c(void 0)}))}}var c={data:function(){return{detail:{},id:""}},onLoad:function(){var t=i(r.default.mark((function t(n){var e;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return this.id=n.id,t.next=3,this.$api.info("news",n.id);case 3:e=t.sent,this.detail=e.data,this.detail.content=this.detail.content.replace(/<img/g,'<img style="width: 100%;"');case 6:case"end":return t.stop()}}),t,this)})));function n(n){return t.apply(this,arguments)}return n}()};n.default=c},"44d0":function(t,n,e){"use strict";(function(t){e("d3af"),e("921b");r(e("66fd"));var n=r(e("bab8"));function r(t){return t&&t.__esModule?t:{default:t}}t(n.default)}).call(this,e("543d")["createPage"])},bab8:function(t,n,e){"use strict";e.r(n);var r=e("1eb0"),u=e("3c61");for(var a in u)"default"!==a&&function(t){e.d(n,t,(function(){return u[t]}))}(a);e("2e49");var i,c=e("f0c5"),o=Object(c["a"])(u["default"],r["b"],r["c"],!1,null,"db5646c4",null,!1,r["a"],i);n["default"]=o.exports}},[["44d0","common/runtime","common/vendor"]]]);