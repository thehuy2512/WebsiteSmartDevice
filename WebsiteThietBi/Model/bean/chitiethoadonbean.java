package bean;

public class chitiethoadonbean {
	private long macthd;
	private String masp;
	private long soluongmua;
	private long mahd;
	public chitiethoadonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public chitiethoadonbean(long macthd, String masp, long soluongmua, long mahd) {
		super();
		this.macthd = macthd;
		this.masp = masp;
		this.soluongmua = soluongmua;
		this.mahd = mahd;
	}
	public long getMacthd() {
		return macthd;
	}
	public void setMacthd(long macthd) {
		this.macthd = macthd;
	}
	public String getMasp() {
		return masp;
	}
	public void setMasp(String masp) {
		this.masp = masp;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getMahd() {
		return mahd;
	}
	public void setMahd(long mahd) {
		this.mahd = mahd;
	}
	
}
