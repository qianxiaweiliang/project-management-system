package com.test.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.commom.bean.CommonBean;
import com.test.commom.exception.BizException;
import com.test.user.biz.IEmployeeBiz;
import com.test.user.entity.EmployeeEntity;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private IEmployeeBiz employeeBiz;

    /**
     * 描述：登陆
     * 
     * @return
     * @return String
     * @exception @createTime：2018年1月4日
     * @author: wangzl
     * @throws BizException
     */
    @RequestMapping("/login.json")
    public @ResponseBody CommonBean login(String username, String password, HttpSession session) {
        CommonBean bean = new CommonBean();
        EmployeeEntity employeeEntity = null;
        try {
            employeeEntity = employeeBiz.login(username, password);
            session.setAttribute("user", employeeEntity);
            bean.setKey(1);
            return bean;
        } catch (Exception e) {
            e.printStackTrace();
            bean.setKey(0);
            bean.setValue(e.getMessage());
            return bean;
        }
    }

    // @RequestMapping("/saveUser")
    // public String saveUser(UserBean userBean, Model model) {
    // // 判断必填项是否已填写，并 判断用户名是否已存在
    // try {
    // userBiz.saveUser(userBean);
    //
    // } catch (Exception e) {
    // e.printStackTrace();
    // // 将错误信息返回给页面展示
    // model.addAttribute("msg", e.getMessage());
    // model.addAttribute("userBean", userBean);
    // return "user/addUser";
    // }
    //
    // // redirect:指定是访问的url不是访问jsp页面
    // return "redirect:/user/queryAllUser";
    //
    // }
    //
    // @RequestMapping("updateUserById")
    // public String updateUserById(UserBean userBean, Model model) {
    // // 判断修改的用户信息，并判断修改后的用户名是否已存在
    // try {
    // userBiz.updateUserById(userBean);
    // } catch (Exception e) {
    // e.printStackTrace();
    // model.addAttribute("msg", e.getMessage());
    // return "user/updateUser";
    // }
    // return "redirect:/user/queryAllUser";
    // }
    //
    // @RequestMapping("queryUserById")
    // public String queryUserById(String id, Model model) {
    // // 判断页面传过来的id是否为空
    // if (null == id || "".equalsIgnoreCase(id)) {
    // model.addAttribute("msg", "id不能为空！");
    // return "user/updateUser";
    // }
    // Integer uid = Integer.parseInt(id);
    // UserBean userBean = null;
    //
    // // 判断数据是否存在,存在就更新，不存在就不更新
    // try {
    // userBean = userBiz.queryUserById(uid);
    // } catch (Exception e) {
    // e.printStackTrace();
    // model.addAttribute("msg", e.getMessage());
    // return "user/updateUser";
    // }
    // userBean.setId(uid);
    // model.addAttribute("userBean", userBean);
    // return "user/updateUser";
    // }
    //
    // @RequestMapping("daleteUserById")
    // public String daleteUserById(String id, Model model) {
    // // 判断页面传过来的id是否为空
    // if (null == id || "".equalsIgnoreCase(id)) {
    // model.addAttribute("msg", "id不能为空！");
    // return "user/updateUser";
    // }
    //
    // // 判断数据库中是否存在该数据，不存在就提示, 存在就继续执行删除
    // int uid = Integer.parseInt(id);
    // try {
    // userBiz.deleteUserById(uid);
    // } catch (Exception e) {
    // e.printStackTrace();
    // model.addAttribute("msg", e.getMessage());
    // return "user/updateUser";
    // }
    // return "redirect:/user/queryAllUser";
    // }
    //
    // @RequestMapping("queryAllUser")
    // public String queryAllUser(UserQuery userQuery, Model model) {
    // // 将查询的结果集，放进model作用域中，在页面展示其数据
    // List<UserBean> userlist = userBiz.queryAllUser(userQuery);
    // List<UserBean> alllist = userBiz.queryAll(userQuery);
    //
    // Integer count = alllist.size();
    // Integer pageSize = userQuery.getPageSize();
    //
    // // 对总页数赋值
    // Integer pageNum = (int) Math.ceil(new Double(count) / new
    // Double(pageSize));
    // userQuery.setPageCount(pageNum);
    //
    // model.addAttribute("count", count);
    // model.addAttribute("userlist", userlist);
    // model.addAttribute("query", userQuery);
    // return "user/listUser";
    // }

}
