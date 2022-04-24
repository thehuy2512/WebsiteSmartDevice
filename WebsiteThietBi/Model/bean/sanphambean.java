package bean;

public class sanphambean {
	private String masp;
	private String tensp;
	private long gia;
	private String maloai;
	private String mathuonghieu;
	private String anh;
	private boolean trangthai;
	public sanphambean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sanphambean(String masp, String tensp, long gia, String maloai, String mathuonghieu, String anh,
			boolean trangthai) {
		super();
		this.masp = masp;
		this.tensp = tensp;
		this.gia = gia;
		this.maloai = maloai;
		this.mathuonghieu = mathuonghieu;
		this.anh = anh;
		this.trangthai = trangthai;
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
	public boolean getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}
	
}
