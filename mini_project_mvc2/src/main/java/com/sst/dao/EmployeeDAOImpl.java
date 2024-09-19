//Step - 4
package com.sst.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.sst.model.EmployeeDetails;

public class EmployeeDAOImpl implements EmployeeDAO{
	private static final String GET_EMP = "SELECT * FROM EMP WHERE JOB = ?";
	
	@Override
	public List<EmployeeDetails> getEmpDetailsByDesg(String desg) {
		String val= desg.toUpperCase();
		List<EmployeeDetails> emp = new ArrayList<>();
		try (Connection con = getDbConnectionPooled()) {
			//Creating Prepared Statement
			PreparedStatement ps = con.prepareStatement(GET_EMP);
			//Setting condition
			ps.setString(1, val);
			//Retrieving data and store in to ArrayList
			try (ResultSet rs = ps.executeQuery()) {
				while(rs.next()) {
					EmployeeDetails empl = new EmployeeDetails();
					empl.setEmpno(rs.getInt(1));
					empl.setEname(rs.getString(2));
					empl.setJob(rs.getString(3));
					empl.setMgr(rs.getInt(4));
					empl.setHiredate(rs.getDate(5));
					empl.setSal(rs.getFloat(6));
					empl.setComm(rs.getFloat(7));
					empl.setDeptno(rs.getInt(8));
					emp.add(empl);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return emp;
	}
	
	//Establishing DataBase Connection
	private Connection getDbConnectionPooled() throws Exception {
		/* This is regular process to connect with database after adding ojdbc jar file*/
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","shankar","Shankar1234");
//		return con;

		//JNDI DB Connection Process
		/* This is concept of JNDI process to communicate with DB 
		 * To work with this process you need to keep some information in your server -> context.xml file in resource tag as mention bellow*/
		InitialContext ic = new InitialContext();
		DataSource ds = (DataSource) ic.lookup("java:/comp/env/DsJndi");
		return ds.getConnection();
	}
}
//Now go to service class

/*<Resource name="DsJndi"
          auth="Container"
          type="javax.sql.DataSource"
          maxTotal="20"
          maxIdle="10"
          maxWaitMillis="10000"
          username="shankar"
          password="Shankar1234"
          driverClassName="oracle.jdbc.driver.OracleDriver"
          url="jdbc:oracle:thin:@localhost:1521:xe"/>
    
</Context>*/