package biz;

import bean.Emp;

import java.util.List;

public interface EmpBiz {
    List<Emp> findAll();

    Emp selectByPrimaryKey(Integer empno);

    boolean deleteByPrimaryKey(Integer empno);
}
