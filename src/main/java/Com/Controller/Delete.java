package Com.Controller;

import java.io.IOException;
import java.util.List;

import Com.DAo.EmployeDao;
import Com.Model.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class Delete  extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String s=request.getParameter("id");
		int n=Integer.parseInt(s);
//		System.out.println(s);
		
		EmployeDao ed = new EmployeDao();
		ed.Delete(n);
		response.sendRedirect("EmpList");
	
		}
	}

