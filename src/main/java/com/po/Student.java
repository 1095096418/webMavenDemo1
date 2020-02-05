package com.po;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Student implements Serializable {
	private int stuid;
	private String sname;
	private String sex;
	private String address;
	private Date birthday;
	private String fname="default.jpg";
	private int classid;
	private String cname;
	//页面相关属性
	private String sdate;
	//Spring文件上传
	private MultipartFile pic;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int stuid, String sname, String sex, String address, Date birthday, String fname, int classid,
			String cname, String sdate, MultipartFile pic) {
		super();
		this.stuid = stuid;
		this.sname = sname;
		this.sex = sex;
		this.address = address;
		this.birthday = birthday;
		this.fname = fname;
		this.classid = classid;
		this.cname = cname;
		this.sdate = sdate;
		this.pic = pic;
	}
	public Student(String sname, String sex, String address, Date birthday, String fname, int classid, String sdate,
			MultipartFile pic) {
		super();
		this.sname = sname;
		this.sex = sex;
		this.address = address;
		this.birthday = birthday;
		this.fname = fname;
		this.classid = classid;
		this.sdate = sdate;
		this.pic = pic;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getSdate() {
		sdate=new SimpleDateFormat("yyyy-MM-dd").format(birthday);
		return sdate;
	}
	public void setSdate(String sdate) {
		try {
			birthday=new SimpleDateFormat("yyyy-MM-dd").parse(sdate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.sdate = sdate;
	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}
	@Override
	public String toString() {
		return "Student [stuid=" + stuid + ", sname=" + sname + ", sex=" + sex + ", address=" + address + ", birthday="
				+ birthday + ", fname=" + fname + ", classid=" + classid + ", cname=" + cname + ", sdate=" + sdate
				+ ", pic=" + pic + "]";
	}
	

}
