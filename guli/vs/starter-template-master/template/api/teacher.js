import request from '@/utils/request'

export default {
    //分页查询热门名师
    getTeacherList(page,limit) {
        return request({
        url:`/eduservice/teacherfront/getTeacherFrontList/${page}/${limit}`,
        method: 'post'
        })
    },
    // 根据讲师id获取信息，所讲课程
    getTeacherCourse(id) {
        return request({
        url:`/eduservice/teacherfront/getTeacherFrontInfo/${id}`,
        method: 'get'
        })
    }
}