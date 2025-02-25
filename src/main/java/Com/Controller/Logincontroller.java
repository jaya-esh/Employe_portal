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
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Logincontroller extends HttpServlet{


	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s=req.getParameter("email");
		String s1=req.getParameter("password");
		
		EmployeDao ed= new EmployeDao();
		Employee emp=ed.verify(s, s1);
		//System.out.println(status+"-------------------");
		if(emp !=null) {
			HttpSession session=req.getSession();
			session.setAttribute("emp", emp);
			RequestDispatcher rd = req.getRequestDispatcher("userHome.jsp");
			rd.forward(req, resp);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("Login.html");
			rd.forward(req, resp);
		}
	}
}
