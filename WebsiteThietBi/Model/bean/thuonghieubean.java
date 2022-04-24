package bean;

public class thuonghieubean {
	private String mathuonghieu;
	private String tenthuonghieu;
	private String mota;
	public thuonghieubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public thuonghieubean(String mathuonghieu, String tenthuonghieu, String mota) {
		super();
		this.mathuonghieu = mathuonghieu;
		this.tenthuonghieu = tenthuonghieu;
		this.mota = mota;
	}
	public String getMathuonghieu() {
		return mathuonghieu;
	}
	public void setMathuonghieu(String mathuonghieu) {
		this.mathuonghieu = mathuonghieu;
	}
	public String getTenthuonghieu() {
		return tenthuonghieu;
	}
	public void setTenthuonghieu(String tenthuonghieu) {
		this.tenthuonghieu = tenthuonghieu;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	
}
