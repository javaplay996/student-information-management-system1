const base = {
    get() {
        return {
            url : "http://localhost:8080/xueshengxinxiguanli/",
            name: "xueshengxinxiguanli",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xueshengxinxiguanli/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "学生信息管理系统"
        } 
    }
}
export default base
