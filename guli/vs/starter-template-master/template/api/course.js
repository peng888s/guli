import request from '@/utils/request'

export default {
    //分页查询课程
    getTeacherList(page,limit,searchObj) {
        return request({
            url:`/eduservice/coursefront/getCoursePage/${page}/${limit}`,
            method: 'post',
            data: searchObj
        })
    },
    // 所有一二级分类
    getSubject() {
        return request({
            url:"/eduservice/edu-subject/finallySubject",
            method: 'get'
        })
    },
    // 课程详情
    getCourseInfo(courseId){
        return request({
            url:"/eduservice/coursefront/getCourseFrontInfo/"+courseId,
            method: 'get'
        })
    }
}