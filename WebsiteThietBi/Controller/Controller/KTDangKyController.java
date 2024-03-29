package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.khachhangbo;
import dao.MD5;

/**
 * Servlet implementation class KTDangKyController
 */
@WebServlet("/KTDangKyController")
public class KTDangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KTDangKyController() {
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
		    String tamname= request.getParameter("txthoten");
		    String tamdiachi= request.getParameter("txtdiachi");
		    String tamsdt = request.getParameter("txtsdt");
		    String tamusername = request.getParameter("txtusername");
		    String tampassword = request.getParameter("txtpassword");
		    // xài mã hoá md5
		    
		    String tamconfirmpassword = request.getParameter("txtconfirmpassword");
		    if(khbo.KTDangKy(tamusername)!=null) {
		    	request.setAttribute("mess", "Username đã tồn tại!");
		    	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/Register.jsp");
		    	rd.forward(request, response);
		    }
		    else {
		    	if(!tampassword.equals(tamconfirmpassword)) {
		    		request.setAttribute("mess", "Password không khớp!");
			    	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/Register.jsp");
			    	rd.forward(request, response);
		    	}
		    	else {
		    		String tammd5 = MD5.encryptMD5(tampassword);
		    		if (khbo.themuser(tamname, tamdiachi, tamsdt,tamusername, tammd5)==false) {
		    			request.setAttribute("mess", "Thêm không được lỗi DAO!");
				    	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/Register.jsp");
				    	rd.forward(request, response);
		    		}
		    		else {
		    			//request.setAttribute("mes", "!");
				    	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/Login.jsp");
				    	rd.forward(request, response);
		    		}
		    	}
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
