package sst.com.beans;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Teachers implements Serializable {
	private int tcId;
	private String tcName;
	private int tcAge;
	private float tcSalary;

	public Teachers() {
		System.out.println("0-param constructor");
	}

	/**
	 * @return the tcId
	 */
	public int getTcId() {
		System.out.println("Teachers.getTcId()");
		return tcId;
	}

	/**
	 * @param tcId the tcId to set
	 */
	public void setTcId(int tcId) {
		System.out.println("Teachers.setTcId()");
		this.tcId = tcId;
	}

	/**
	 * @return the tcName
	 */
	public String getTcName() {
		System.out.println("Teachers.getTcName()");
		return tcName;
	}

	/**
	 * @param tcName the tcName to set
	 */
	public void setTcName(String tcName) {
		System.out.println("Teachers.setTcName()");
		this.tcName = tcName;
	}

	/**
	 * @return the tcAge
	 */
	public int getTcAge() {
		System.out.println("Teachers.getTcAge()");
		return tcAge;
	}

	/**
	 * @param tcAge the tcAge to set
	 */
	public void setTcAge(int tcAge) {
		System.out.println("Teachers.setTcAge()");
		this.tcAge = tcAge;
	}

	/**
	 * @return the tcSalary
	 */
	public float getTcSalary() {
		System.out.println("Teachers.getTcSalary()");
		return tcSalary;
	}

	/**
	 * @param tcSalary the tcSalary to set
	 */
	public void setTcSalary(float tcSalary) {
		System.out.println("Teachers.setTcSalary()");
		this.tcSalary = tcSalary;
	}
}
