package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class SuaGioHangController
 */
@WebServlet("/SuaGioHangController")
public class SuaGioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaGioHangController() {
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
		
		giohangbo gh = (giohangbo) session.getAttribute("gh");
		String tamsl =request.getParameter("txtsoluong");
		
		String tambutsua = request.getParameter("buttonsua");
		String tambutxoa = request.getParameter("buttonxoa");
		if (tambutsua!=null) {
			if(Long.parseLong(tamsl)!=0)
				gh.Sua(tambutsua, Long.parseLong(tamsl));
			else gh.Xoa(tambutsua);
		}
		if (tambutxoa!=null) {
			gh.Xoa(tambutxoa);
		}
		session.setAttribute("gh", gh);
		response.sendRedirect("trunggianGioHangController");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
