package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them(String masp,String tensp,long gia, String maloai,String mathuonghieu,String anh, long slmua) {
		for(giohangbean g:ds)
			if(g.getMasp().equals(masp)) {
				g.setSlmua(g.getSlmua()+slmua);
				return;
			}
		ds.add(new giohangbean(masp, tensp, gia, maloai, mathuonghieu, anh, slmua));
	}
	public void Sua(String masp,long sl) {
		for(giohangbean g:ds)
		{	
			if(g.getMasp().equals(masp)) {
					g.setSlmua(sl);
					return;		
			}
		}
	}
	public void Xoa(String masp) {
		for(giohangbean o:ds) {
			if(o.getMasp().equals(masp)) {
				ds.remove(o);
				return;
			}
		}
	}
	public long Tongsanpham() {
		long tongsp=0;
		for (giohangbean i:ds) {
			tongsp+=i.getSlmua();
		}
		return tongsp;
	}
	public long Tongtien() {
		long tongtien=0;
		for (giohangbean o:ds) {
			tongtien+=o.getThanhtien();
		}
		return tongtien;
	}
	public void Xoaall() {
		ds.removeAll(ds);
	}
}
