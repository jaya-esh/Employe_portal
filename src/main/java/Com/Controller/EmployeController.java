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

@WebServlet("/Register")
public class EmployeController  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("Name");
		String email = req.getParameter("email");
		String pass = req.getParameter("psw");
		Employee em = new Employee();
		em.setEName(name);
		em.setEmpEmail(email);
		em.setEPassWord(pass);
		EmployeDao edao = new EmployeDao();
		boolean res = edao.insertEmploye(em);
		if(res) {
			System.out.println("data is inserted");
			RequestDispatcher rd = req.getRequestDispatcher("Login.html");
			rd.forward(req, resp);
			//edao.getAllEmp();
		}
		else {
			System.out.println("some thing went wrong");
			RequestDispatcher rd = req.getRequestDispatcher("index.html");
			rd.forward(req, resp);
			
		}
		
		
	}
}
