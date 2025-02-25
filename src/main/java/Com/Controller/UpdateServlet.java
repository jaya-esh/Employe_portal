package Com.Controller;

import java.io.IOException;

import Com.DAo.EmployeDao;
import Com.Model.Employee;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 int id =Integer.parseInt( req.getParameter("id"));
		 System.out.println(id+"---------------------");
		 
		 EmployeDao ed=new  EmployeDao();
		 Employee emp = ed.getEmpByid(id);
		 System.out.println(emp);
		 req.setAttribute("emp", emp);
		 RequestDispatcher rd = req.getRequestDispatcher("updateform.jsp");
		 rd.forward(req, resp);
		 
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("Name");
		String email = req.getParameter("email");
		String pass = req.getParameter("psw");
		
		Employee em = new Employee();
		em.setEid(id);
		em.setEName(name);
		em.setEmpEmail(email);
		em.setEPassWord(pass);
		
		EmployeDao ed=new EmployeDao();
		boolean status = ed.updateEmp(em);
		if(status) {
			resp.sendRedirect("EmpList");
		}
		else {
			resp.sendRedirect("updateform.jsp");
		}
		
	}
}
