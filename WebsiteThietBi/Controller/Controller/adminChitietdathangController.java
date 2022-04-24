package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.viewCTHDClient;
import bo.viewCTDHClientbo;

/**
 * Servlet implementation class adminChitietdathangController
 */
@WebServlet("/adminChitietdathangController")
public class adminChitietdathangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminChitietdathangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		long tammahd= Long.parseLong(request.getParameter("mahd"));
		viewCTDHClientbo vct = new viewCTDHClientbo();
		if(session.getAttribute("ad")!=null) {
			try {
				ArrayList<viewCTHDClient> vhd = vct.getCTHD(tammahd);
				request.setAttribute("dscthd", vhd);
				request.setAttribute("mahd", tammahd);
				RequestDispatcher rd = request.getRequestDispatcher("adminChitiet.jsp");
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
