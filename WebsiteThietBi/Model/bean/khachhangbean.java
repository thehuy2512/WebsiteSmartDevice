package bean;

public class khachhangbean {
	private long makh;
	private String tenkh;
	private String sdt;
	private String diachi;
	private String tendangnhap;
	private String matkhau;
	public khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public khachhangbean(long makh, String tenkh, String sdt, String diachi, String tendangnhap, String matkhau) {
		super();
		this.makh = makh;
		this.tenkh = tenkh;
		this.sdt = sdt;
		this.diachi = diachi;
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getTenkh() {
		return tenkh;
	}
	public void setTenkh(String tenkh) {
		this.tenkh = tenkh;
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
