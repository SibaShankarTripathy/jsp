package com.sst.dao;

import java.util.List;

import com.sst.model.EmployeeDetails;

public interface EmployeeDAO {
	public List<EmployeeDetails> getEmpDetailsByDesg(String desg);
}
