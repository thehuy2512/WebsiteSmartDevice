package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.khachhangbean;
import bo.chitiethoadonbo;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class DatHangController
 */
@WebServlet("/DatHangController")
public class DatHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatHangController() {
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
		khachhangbean kh = (khachhangbean)session.getAttribute("kh");
		giohangbo gh =(giohangbo)session.getAttribute("gh");
		if(kh!=null&&gh!=null) {
			hoadonbo hdbo = new hoadonbo();
			chitiethoadonbo cthdbo = new chitiethoadonbo();
			try {
			long idhd = hdbo.themHoadon(kh.getMakh(), gh.Tongtien(), false);
			for(giohangbean g:gh.ds) {
				cthdbo.themChitietdathang(g.getMasp(), g.getSlmua(), idhd);
			}
			session.setAttribute("gh", null);
			request.setAttribute("mess", "Đã đặt mua!");
			RequestDispatcher rd = request.getRequestDispatcher("trunggianGioHangController");
			rd.forward(request, response);
			}catch (Exception e) {
				// TODO: handle exception
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
