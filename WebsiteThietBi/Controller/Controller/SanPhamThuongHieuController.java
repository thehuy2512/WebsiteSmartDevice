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
 * Servlet implementation class SanPhamThuongHieuController
 */
@WebServlet("/SanPhamThuongHieuController")
public class SanPhamThuongHieuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SanPhamThuongHieuController() {
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
		    
		    String tamloai= request.getParameter("maloai");
		    String tamtrang= request.getParameter("tentrang");
		    String tamthuonghieu = request.getParameter("mathuonghieu");
		    sanphambo spbo = new sanphambo();
		    ArrayList<sanphambean> dssp = spbo.getSanPhamtheothuonghieu(tamloai,tamthuonghieu);
		    request.setAttribute("dssp", dssp);
		    
		    RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/"+tamtrang+".jsp");
			rd.forward(request, response);
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
