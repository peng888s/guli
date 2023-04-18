import request from '@/utils/request'
export default {
    //根据手机号码发送短信
    getMobile(mobile) {
        return request({
          url: `/edumsm/msm/send/${mobile}`,
          method: 'get'
        })
    },
    submitRegister(formItem) {
        return request({
          url: `/eduucenter/member/register`,
          method: 'post',
          data: formItem
        })
    },
    submitLoginUser(formItem){
      return request({
        url: `/eduucenter/member/login`,
        method: 'post',
        data: formItem
      })
    },
    // 根据token字符串获取用户信息
    getLoginUserInf(){
      return request({
        url: `/eduucenter/member/getMemberInfo`,
        method: 'get'
      })
    }
}