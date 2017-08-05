package com.cjsf.wfma.bean;

import java.util.Date;

/**
 * @author Administrator
 * @version v1.0
 * 用户实体类
 */
public class User {
	private int id;//编号
	private String nickname;//昵称
	private String password;//密码
	private String name;//姓名
	private String sex;//性别
	private int age;//年龄
	private Date brithday;//出生日期
	private String address;//住址
	private String tell;//电话
	private String qq;//qq
	private String email;//邮箱
	private String type;//用户类别[管理员|学员|教练]
	private String briefintroduction;//个人简介
	private String head;//头像
	
	public User() {
	}

	public User(int id, String nickname, String password, String name, String sex, int age, Date brithday, String address, String tell, String qq, String email, String type,String briefintroduction,String head) {
		this.id = id;
		this.nickname = nickname;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.brithday = brithday;
		this.address = address;
		this.tell = tell;
		this.qq = qq;
		this.email = email;
		this.type = type;
		this.briefintroduction = briefintroduction;
		this.head = head;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBrithday() {
		return brithday;
	}

	public void setBrithday(Date brithday) {
		this.brithday = brithday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBriefintroduction() {
		return briefintroduction;
	}

	public void setBriefintroduction(String briefintroduction) {
		this.briefintroduction = briefintroduction;
	}
	
	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nickname=" + nickname + ", password=" + password + ", name=" + name + ", sex=" + sex + ", age=" + age + ", brithday=" + brithday + ", address=" + address + ", tell=" + tell + ", qq=" + qq + ", email=" + email + ", type=" + type + ",briefintroduction=" + briefintroduction + ",head=" + head + "]";
	}
}
