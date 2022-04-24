package bean;

public class giohangbean {
	private String masp;
	private String tensp;
	private long gia;
	private String maloai;
	private String mathuonghieu;
	private String anh;
	private long slmua;
	private long thanhtien;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String masp, String tensp, long gia, String maloai, String mathuonghieu, String anh,
			long slmua) {
		super();
		this.masp = masp;
		this.tensp = tensp;
		this.gia = gia;
		this.maloai = maloai;
		this.mathuonghieu = mathuonghieu;
		this.anh = anh;
		this.slmua = slmua;
		this.thanhtien = gia*slmua;
	}
	public String getMasp() {
		return masp;
	}
	public void setMasp(String masp) {
		this.masp = masp;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getMathuonghieu() {
		return mathuonghieu;
	}
	public void setMathuonghieu(String mathuonghieu) {
		this.mathuonghieu = mathuonghieu;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getSlmua() {
		return slmua;
	}
	public void setSlmua(long slmua) {
		this.slmua = slmua;
	}
	public long getThanhtien() {
		return gia*slmua;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
}
