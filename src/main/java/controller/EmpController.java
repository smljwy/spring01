package controller;

import bean.Emp;
import biz.EmpBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {
    @Autowired
    private EmpBiz empBiz;

    @RequestMapping(value = "/findAll")
    @ResponseBody
    public List<Emp> selectAll() {
        List<Emp> empList = empBiz.findAll();
        return empList;
    }

    @RequestMapping("/goupdate")
    public String selectByPrimaryKey(int empno, Model model) {
        Emp emp = empBiz.selectByPrimaryKey(empno);
        model.addAttribute("emp", emp);
        return "update";
    }

    @RequestMapping("/deleteByPK")
    @ResponseBody
    public boolean deleteByPrimaryKey(int empno) {
        boolean flag = empBiz.deleteByPrimaryKey(empno);
        return flag;
    }

    @RequestMapping("/{all}")
    public String goAll(@PathVariable("all") String all, int empno, Model model) {
        Emp emp = empBiz.selectByPrimaryKey(empno);
        model.addAttribute("emp", emp);
        return all;
    }
}
