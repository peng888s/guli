import request from '@/utils/request'

export default {

  getPlayAuth(vid) {
    return request({
      url: `/eduvod/video/getPlay/${vid}`,
      method: 'get'
    })
  }

}