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

import bean.hoadonbean;
import bean.khachhangbean;
import bo.hoadonbo;

/**
 * Servlet implementation class LichSuMuaHangController
 */
@WebServlet("/LichSuDatHangController")
public class LichSuDatHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuDatHangController() {
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
		if(session.getAttribute("kh")!=null) {
			khachhangbean kh = (khachhangbean)session.getAttribute("kh");
			hoadonbo hdbo = new hoadonbo();
			ArrayList<hoadonbean> hoadon = new ArrayList<hoadonbean>();
			try {
				hoadon= hdbo.getHoadon(kh.getMakh());
				session.setAttribute("hd", hoadon);
				RequestDispatcher rd = request.getRequestDispatcher("LichSuDatHang.jsp");
				rd.forward(request, response);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else {
			request.setAttribute("mess", "Hãy đăng nhập để xem lịch sử đặt hàng!");
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
