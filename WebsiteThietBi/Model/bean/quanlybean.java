package bean;

public class quanlybean {
	private long manv;
	private String tennv;
	private String sdt;
	private String diachi;
	private String tendangnhap;
	private String matkhau;
	public quanlybean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public quanlybean(long manv, String tennv, String sdt, String diachi, String tendangnhap, String matkhau) {
		super();
		this.manv = manv;
		this.tennv = tennv;
		this.sdt = sdt;
		this.diachi = diachi;
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
	}
	public long getManv() {
		return manv;
	}
	public void setManv(long manv) {
		this.manv = manv;
	}
	public String getTennv() {
		return tennv;
	}
	public void setTennv(String tennv) {
		this.tennv = tennv;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	
}
