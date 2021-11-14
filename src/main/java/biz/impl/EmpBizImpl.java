package biz.impl;

import bean.Emp;
import biz.EmpBiz;
import dao.EmpDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpBizImpl implements EmpBiz {
    @Autowired
    private EmpDao empDao;

    @Override
    public List<Emp> findAll() {
        List<Emp> empList = empDao.findAll();
        return empList;
    }

    @Override
    public Emp selectByPrimaryKey(Integer empno) {
        Emp emp = empDao.selectByPrimaryKey(empno);
        return emp;
    }

    @Override
    public boolean deleteByPrimaryKey(Integer empno) {
        int i = empDao.deleteByPrimaryKey(empno);
        return (i == 0) ? false : true;
    }
}
