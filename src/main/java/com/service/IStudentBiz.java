package com.service;

import java.util.List;

import com.po.Clazz;
import com.po.PageBean;
import com.po.Student;

public interface IStudentBiz {
	public int save(Student st);
	  public int update(Student st);
	  public int delById(Integer sid);
	  public Student findById(Integer sid);
	  public List<Student> findPageAll(PageBean pb);
	  public int findmaxRows();
	  public List<Clazz> doinit();
}
