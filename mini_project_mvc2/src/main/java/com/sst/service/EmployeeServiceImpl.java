//Step - 4
package com.sst.service;

import java.util.List;

import com.sst.dao.EmployeeDAOImpl;
import com.sst.model.EmployeeDetails;

public class EmployeeServiceImpl implements EmployeeService{
	private EmployeeDAOImpl employeeDAO = null;
	
	public EmployeeServiceImpl() {
		employeeDAO = new EmployeeDAOImpl();
	}

	//By using this method try to get employee details
	@Override
	public List<EmployeeDetails> getEmployeeDetails(String desg){
		float tempSal = 0;
		List<EmployeeDetails> emp = employeeDAO.getEmpDetailsByDesg(desg);
		for(EmployeeDetails e:emp) {
			if(e.getComm()==0) {
				tempSal = e.getSal();
				e.setComm(tempSal*0.1f);
			}
		}
		return emp;
	}
}
//Now prepare control class