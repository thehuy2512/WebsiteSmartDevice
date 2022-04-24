package bo;

import java.util.ArrayList;

import bean.sanphambean;
import dao.sanphamdao;

public class sanphambo {
	sanphamdao spdao = new sanphamdao();
	public ArrayList<sanphambean> getSanPham() throws Exception{
		return spdao.getSanPham();
	}
	public ArrayList<sanphambean> getSanPhamtheothuonghieu(String maloai,String mathuonghieu) throws Exception{
		return spdao.getSanPhamtheothuonghieu(maloai,mathuonghieu);
	}
	public ArrayList<sanphambean> getSanPhamtheoloai(String maloai) throws Exception{
		return spdao.getSanPhamtheoloai(maloai);
	}
	public ArrayList<sanphambean> Tim(String key) throws Exception{
		ArrayList<sanphambean> ds = getSanPham();
		ArrayList<sanphambean> tam = new ArrayList<sanphambean>();
		for(sanphambean sp:ds) {
			if(sp.getTensp().trim().toLowerCase().contains(key.trim().toLowerCase()))
				tam.add(sp);
			
		}
			return tam;	
	}
	public long demSP() throws Exception{
		long dem=0;
		ArrayList<sanphambean> sp = getSanPham();
		for(sanphambean s:sp) {
			dem=dem+1;
		}
		return dem;
	}
	public boolean capnhatTrangthaiSP(String masp,Boolean trangthai) throws Exception{
		return spdao.capnhatTrangthaiSP(masp, trangthai);
	}
	public boolean themSP(String masp,String tensp,long gia,String maloai,String mathuonghieu,String anh,Boolean trangthai) throws Exception{
		return spdao.themSP(masp, tensp, gia, maloai, mathuonghieu, anh, trangthai);
	}
	public boolean suaSP(String masp,String tensp,long gia,String maloai,String mathuonghieu,Boolean trangthai) throws Exception{
		return spdao.suaSP(masp, tensp, gia, maloai, mathuonghieu, trangthai);
	}
}
