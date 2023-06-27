package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.khachhangbo;
import bo.sanphambo;

/**
 * Servlet implementation class adminHomeSanphamController
 */
@WebServlet("/adminHomeSanphamController")
public class adminHomeSanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminHomeSanphamController() {
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
		
		if(session.getAttribute("ad")!=null) {
		sanphambo spbo = new sanphambo();
		khachhangbo khbo = new khachhangbo();
		String key = request.getParameter("txttimkiem");
		if(key==null) {
		try {
			request.setAttribute("dssp", spbo.getSanPham());
			request.setAttribute("dskh", khbo.getKhachHang());
			request.setAttribute("sl", spbo.demSP());
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/adminSanpham.jsp");
			rd.forward(request, response);
			} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			}
		}else {
			try {
				if(spbo.Tim(key).isEmpty()) {
					request.setAttribute("mes", "Không tìm thấy sản phẩm!");
					RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/adminSanpham.jsp");
					rd.forward(request, response);
				}
				else {
					try {
					request.setAttribute("dssp", spbo.Tim(key));
					request.setAttribute("dskh", khbo.getKhachHang());
					request.setAttribute("sl", spbo.demSP());
					request.setAttribute("mes", "Đã tìm thấy!");
					RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/adminSanpham.jsp");
					rd.forward(request, response);
					}catch (Exception e) {
						e.printStackTrace();
					}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
