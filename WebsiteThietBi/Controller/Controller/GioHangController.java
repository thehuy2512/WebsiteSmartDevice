package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.giohangbo;

/**
 * Servlet implementation class GioHangController
 */
@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioHangController() {
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
	    
	    String tammasp = request.getParameter("masp");
	    String tamtensp = request.getParameter("tensp");
	    long tamgia = Long.parseLong(request.getParameter("gia"));
	    String tammaloai = request.getParameter("maloai");
	    String tammathuonghieu = request.getParameter("mathuonghieu");
	    String tamanh = request.getParameter("anh");
	    
	    //khachhangbean kh = (khachhangbean) session.getAttribute("kh");
	    
	    	
	    if(session.getAttribute("kh")!=null) {
	    //if(kh!=null) {
	    	
	    	giohangbo gh = new giohangbo();
	    	if(session.getAttribute("gh")==null) {
	    		session.setAttribute("gh", gh);
	    	}
	    	if(tammasp!=null) {
	    		if(session.getAttribute("gh")==null) {
	    			gh = new giohangbo();
	    			session.setAttribute("gh", gh);
	    		}
	    		gh = (giohangbo) session.getAttribute("gh");
	    		gh.Them(tammasp, tamtensp, tamgia, tammaloai, tammathuonghieu, tamanh, (long)1);
	    		
	    		session.setAttribute("gh", gh);
	    		response.sendRedirect("trunggianGioHangController");
	    	}
	    }
	    else {
	    	request.setAttribute("mess", "Phải đăng nhập mới được đặt mua!");
	    	RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
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
