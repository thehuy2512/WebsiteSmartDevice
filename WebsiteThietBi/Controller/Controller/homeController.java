package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.sanphambean;
import bo.sanphambo;

/**
 * Servlet implementation class homeController
 */
@WebServlet("/homeController")
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
		    response.setCharacterEncoding("utf-8");
		    sanphambo spbo = new sanphambo();
		    String key = request.getParameter("txttimkiem");
		    if (key!=null) {
		    	//ArrayList<sanphambean> dssp1 = spbo.Tim(key);
		    	if(spbo.Tim(key).isEmpty()) {
		    		request.setAttribute("mes", "Không tìm thấy sản phẩm!");
		    		RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
					rd.forward(request, response);
		    	}
		    	else {
		    		request.setAttribute("dssp", spbo.Tim(key));
		    		request.setAttribute("mes", "Đã tìm thấy!");
		    		RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
					rd.forward(request, response);
		    	}
		    }else {
		    request.setAttribute("mes", "");
		    ArrayList<sanphambean> dssp = spbo.getSanPham();
		    request.setAttribute("dssp", dssp);
		    
		    RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		    }
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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
