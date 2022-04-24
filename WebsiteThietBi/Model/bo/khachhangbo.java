package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	public khachhangbean KTDN(String username,String password) throws Exception{
		return khdao.KTDN(username, password);
	}
	public khachhangbean KTDangKy(String username) throws Exception{
		return khdao.KTDangKy(username);
	}
	public boolean themuser(String hoten, String diachi,String sdt, String tendangnhap,String matkhau)  throws Exception {	
		return khdao.themuser(hoten, diachi, sdt, tendangnhap, matkhau);
	}
	public ArrayList<khachhangbean> getKhachHang() throws Exception{
		return khdao.getKhachHang();
	}
	public String getTenkh(long makh) throws Exception{
		ArrayList<khachhangbean> ds2 = getKhachHang();
		for(khachhangbean g:ds2) {
			if(g.getMakh()==makh) {
				return g.getTenkh();
			}
		}
		return null;
	}
	public long demSLKH() throws Exception{
		ArrayList<khachhangbean> ds = getKhachHang();
		long dem=0;
		for(khachhangbean s:ds) {
			dem=dem+1;
		}
		return dem;
	}
	public boolean doimatkhau(String tendangnhap,String matkhau)  throws Exception {
		return khdao.doimatkhau(tendangnhap, matkhau);
	}
}
