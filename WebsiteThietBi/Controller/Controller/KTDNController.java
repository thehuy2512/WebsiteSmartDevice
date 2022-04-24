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
import bean.quanlybean;
import bo.khachhangbo;
import bo.quanlybo;
import dao.MD5;

/**
 * Servlet implementation class KTDNController
 */
@WebServlet("/KTDNController")
public class KTDNController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KTDNController() {
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
	    MD5 md5 = new MD5();
	    khachhangbo khbo = new khachhangbo();
	    quanlybo qlbo = new quanlybo();
	    khachhangbean kh = null;
	    quanlybean ad =null;
	    HttpSession session = request.getSession();
	    String tamuser = request.getParameter("txtusername");
	    String tampass = request.getParameter("txtpassword");
	    String tammd5 = MD5.encryptMD5(tampass);
	    String tammd51 = MD5.encryptMD5(tampass);
	    if(khbo.KTDN(tamuser, tammd5)==null &&qlbo.KTDNquanly(tamuser, tammd51)==null) {
	    	session.setAttribute("kh", null);
	    	session.setAttribute("ad",null);
	    	request.setAttribute("mess", "Đăng nhập không thành công!");
	    	RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
	    }
	    else {
	    	
	    	if(khbo.KTDN(tamuser, tammd5)!=null) {
	    		kh = khbo.KTDN(tamuser, tammd5);
	    		session.setAttribute("kh", kh);
	    		RequestDispatcher rd = request.getRequestDispatcher("homeController");
	    		rd.forward(request, response);
	    	}
	    	else {
	    		
	    		if(qlbo.KTDNquanly(tamuser, tammd51)!=null){
	    			ad = qlbo.KTDNquanly(tamuser, tammd51);
		    		session.setAttribute("ad", ad);
		    		RequestDispatcher rd = request.getRequestDispatcher("homeController");
		    		rd.forward(request, response);
	    		}
	    	}
	    	}
		}
		catch (Exception e) {
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
