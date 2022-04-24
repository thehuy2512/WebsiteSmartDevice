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
 * Servlet implementation class KTDoimatkhauController
 */
@WebServlet("/KTDoimatkhauController")
public class KTDoimatkhauController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KTDoimatkhauController() {
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
		    khachhangbo khbo = new khachhangbo();
		   // quanlybo qlbo = new quanlybo();
		   // khachhangbean kh = null;
		    //quanlybean ad =null;
		    //HttpSession session = request.getSession();
		    String tamuser = request.getParameter("txtusername");
		    String tamoldpass = request.getParameter("txtoldpassword");
		    String tamnewpass = request.getParameter("txtnewpassword");
		    String tamconfirmnewpass = request.getParameter("txtconfirmnewpassword");
		    String tammd5 = MD5.encryptMD5(tamoldpass);
		    String tammd51 = MD5.encryptMD5(tamnewpass);
		    String tammd52 = MD5.encryptMD5(tamconfirmnewpass);
		    if(khbo.KTDN(tamuser, tammd5)!=null) {
		    	if(tammd51.equals(tammd52)) {
		    		if(tammd5.equals(tammd51))
		    		{
		    			request.setAttribute("mess", "Trùng mật khẩu cũ hay thay đổi để bảo mật hơn!");
			    		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
			    		rd.forward(request, response);
		    		}
		    		else {
			    		if(khbo.doimatkhau(tamuser, tammd51)==true) {
			    			request.setAttribute("mess", "Đổi mật khẩu thành công!");
				    		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
				    		rd.forward(request, response);
			    		}else{
			    			request.setAttribute("mess", "lỗi DAO!");
				    		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
				    		rd.forward(request, response);
			    		}
		    		}
		    	}
		    	else {
		    		request.setAttribute("mess", "Xác nhận mật khẩu không khớp!");
		    		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
		    		rd.forward(request, response);
		    	}
		    }else {
		    	request.setAttribute("mess", "Tài khoản không đúng!");
	    		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
	    		rd.forward(request, response);
		    }
		    
		    
		    }catch (Exception e) {
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
