package Com.DAo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Com.Model.Employee;
import Com.utilconnection.MyConnection;

public class EmployeDao {

	public boolean insertEmploye(Employee e) {

		try {
			Connection con = MyConnection.getConnection();
			PreparedStatement stm = con.prepareStatement("insert into emp (empname,email,password)values (?,?,?)");
			stm.setString(1, e.getEName());
			stm.setString(2, e.getEmpEmail());
			stm.setString(3, e.getEPassWord());
			int res = stm.executeUpdate();
			return res > 0;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return false;
	}

	public List<Employee> getAllEmp() {

		Connection con;
		List<Employee> li = new ArrayList<Employee>();

		try {
			con = MyConnection.getConnection();
			PreparedStatement stm = con.prepareStatement("select * from emp");
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				// System.out.println("1row fetched");
				Employee em = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
//				System.out.println(em);
				li.add(em);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return li;

	}

	public Employee verify(String s, String s1) {

		Connection con;
		Employee emp=null;
		try {
			con = MyConnection.getConnection();
			PreparedStatement stm = con.prepareStatement("select * from emp where email=? and password=?");
			stm.setString(1, s);
			stm.setString(2, s1);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				emp=new Employee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return emp;

	}

	public void Delete(int n) {

		Connection con;
		try {
			con = MyConnection.getConnection();
			PreparedStatement stm = con.prepareStatement("delete from emp where empid=?");
			stm.setInt(1, n);

			int rs = stm.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Employee getEmpByid(int id) {
		Employee emp = null;
		Connection con;
		try {
			con = MyConnection.getConnection();
			PreparedStatement stm = con.prepareStatement("select * from emp where empid=?");
			stm.setInt(1, id);

			 ResultSet rs = stm.executeQuery();

			while(rs.next()) {
				emp= new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return emp;
		
		
		
	}

	public boolean updateEmp(Employee em) {
		Connection con;
		try {
			con = MyConnection.getConnection();
			PreparedStatement stm = con.prepareStatement("update emp set empname=?,email=?,password=? where empid=?");
			stm.setString(1, em.getEName());
			stm.setString(2, em.getEmpEmail());
			stm.setString(3, em.getEPassWord());
			stm.setInt(4, em.getEid());

			 int rs = stm.executeUpdate();

			if(rs>0) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
		
	}
	
	}

