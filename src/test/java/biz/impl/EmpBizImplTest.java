package biz.impl;

import bean.Emp;
import biz.EmpBiz;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class EmpBizImplTest {
    @Autowired
    @Qualifier("empBizImpl")
    private EmpBiz empBiz;

    @Test
    public void findAll() {
        List<Emp> empList = empBiz.findAll();
        System.out.println(empList);
    }
}