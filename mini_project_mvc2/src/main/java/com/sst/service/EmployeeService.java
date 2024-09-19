package com.sst.service;

import java.util.List;

import com.sst.model.EmployeeDetails;

public interface EmployeeService {
	public List<EmployeeDetails> getEmployeeDetails(String desg);
}
