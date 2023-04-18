import request from '@/utils/request'

export default {
    // 生成订单
    createOrders(courseId) {
        return request({
            url: '/orderservice/order/saveOrders/'+courseId,
            method: 'post'
        })
    },
    // 获取订单信息
    getOrdersInfo(id){
        return request({
            url: '/orderservice/order/getOrderInfo/'+id,
            method: 'get'
        })
    },
    // 查询订单状态
    queryPayStatus(orderNo){
        return request({
            url: '/orderservice/paylog/queryPayStatus/'+orderNo,
            method: 'get'
        })
    },
    // 生成微信支付二维码
    createNative(orderNo){
        return request({
            url: '/orderservice/paylog/createNative/'+orderNo,
            method: 'get'
        })
    }
}