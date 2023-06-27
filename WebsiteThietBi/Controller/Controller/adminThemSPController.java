package Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.sanphambean;
import bo.loaisanphambo;
import bo.sanphambo;
import bo.thuonghieubo;

/**
 * Servlet implementation class adminThemSPController
 */
@WebServlet("/adminThemSPController")
public class adminThemSPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminThemSPController() {
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
	    
		// DiskFileItemFactory factory = new DiskFileItemFactory();
		 DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		 ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		 	sanphambo spbo = new  sanphambo();
		 	loaisanphambo lbo = new loaisanphambo();
		 	thuonghieubo thbo = new thuonghieubo();
		// String dirUrl1 = request.getServletContext().getRealPath("") +  File.separator + "files";
		// response.getWriter().println(dirUrl1);
		 
		try {
			String masp="";
			String tensp="";
			long gia=0;
			String maloai="";
			String mathuonghieu="";
			String anh="";
			boolean trangthai=false;						
			List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
			//duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
			 if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
				// xử lý file
				//String nameimg = fileItem.getName();
				 anh = fileItem.getName();
				if (!anh.equals("")) {
			           //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
					String dirUrl = request.getServletContext().getRealPath("") + "image";
					File dir = new File(dirUrl);
					if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
						dir.mkdir();
					}
				           String fileImg = dirUrl + File.separator + anh;
				           File file = new File(fileImg);//tạo file
				            try {
				               fileItem.write(file);//lưu file
				              System.out.println("UPLOAD THÀNH CÔNG...!");
				              System.out.println("Đường dẫn lưu file là: "+dirUrl);
				 } catch (Exception e) {
				    e.printStackTrace();
				}
			}
		 }
			else//Neu la control
			{
				//fileItem.getFieldName();
				if(fileItem.getFieldName().equals("txtmasp"))
					masp = fileItem.getString();
				if(fileItem.getFieldName().equals("txttensp"))
					tensp = fileItem.getString(request.getCharacterEncoding());
				if(fileItem.getFieldName().equals("txtgia"))
					gia = Long.parseLong(fileItem.getString());
				if(fileItem.getFieldName().equals("txtmaloai"))
					maloai = fileItem.getString();
				if(fileItem.getFieldName().equals("txtmathuonghieu"))
					mathuonghieu = fileItem.getString();
				if(fileItem.getFieldName().equals("txttrangthai"))
					trangthai = Boolean.parseBoolean(fileItem.getString());
				
					
			}
		}
		//anh = "image/"+anh;
		System.out.println(masp);
		System.out.println(tensp);
		System.out.println(gia);
		System.out.println(maloai);
		System.out.println(mathuonghieu);
		System.out.println(anh);
		// viet them sản phẩm
		for(sanphambean s:spbo.getSanPham()) {
			if(s.getMasp().equals(masp)) {
				request.setAttribute("mess", "Mã sản phẩm bị trùng!");
				RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/adminThemSP.jsp");
				rd.forward(request, response);
			}
		}
		if(spbo.themSP(masp, tensp, gia, maloai, mathuonghieu, anh, trangthai)==false) {
			request.setAttribute("mess", "Thêm không thành công!");
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/adminThemSP.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/adminHomeSanphamController");
			rd.forward(request, response);
		}
		
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			
			
			try {
				request.setAttribute("dsloai", lbo.getLoai());
				request.setAttribute("dsthuonghieu", thbo.getThuonghieu());
				//request.setAttribute("dssp", spbo.getSanPham());
				RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/adminThemSP.jsp");
				rd.forward(request, response);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
