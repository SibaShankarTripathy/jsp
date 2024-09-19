//Step - 3
package com.sst.model;

import java.io.Serializable;
import java.util.Date;

public class EmployeeDetails implements Serializable{
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private Date hiredate;
	private float sal;
	private float comm;
	private int deptno;
	/**
	 * @return the empno
	 */
	public int getEmpno() {
		return empno;
	}
	/**
	 * @param empno the empno to set
	 */
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	/**
	 * @return the ename
	 */
	public String getEname() {
		return ename;
	}
	/**
	 * @param ename the ename to set
	 */
	public void setEname(String ename) {
		this.ename = ename;
	}
	/**
	 * @return the job
	 */
	public String getJob() {
		return job;
	}
	/**
	 * @param job the job to set
	 */
	public void setJob(String job) {
		this.job = job;
	}
	/**
	 * @return the mgr
	 */
	public int getMgr() {
		return mgr;
	}
	/**
	 * @param mgr the mgr to set
	 */
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	/**
	 * @return the hiredate
	 */
	public Date getHiredate() {
		return hiredate;
	}
	/**
	 * @param hiredate the hiredate to set
	 */
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	/**
	 * @return the sal
	 */
	public float getSal() {
		return sal;
	}
	/**
	 * @param sal the sal to set
	 */
	public void setSal(float sal) {
		this.sal = sal;
	}
	/**
	 * @return the comm
	 */
	public float getComm() {
		return comm;
	}
	/**
	 * @param comm the comm to set
	 */
	public void setComm(float comm) {
		this.comm = comm;
	}
	/**
	 * @return the deptno
	 */
	public int getDeptno() {
		return deptno;
	}
	/**
	 * @param deptno the deptno to set
	 */
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	@Override
	public String toString() {
		return "EmployeeDetails [empno=" + empno + ", ename=" + ename + ", job=" + job + ", mgr=" + mgr + ", hiredate="
				+ hiredate + ", sal=" + sal + ", comm=" + comm + ", deptno=" + deptno + "]";
	}
}
//Now go to DAO class