package bean;

import java.sql.Date;

public class viewAdminHDbean {
	private long mahd;
	private long makh;
	private String tenkh;
	private Date ngaymua;
	private long thanhtien;
	private boolean trangthai;
	public viewAdminHDbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public viewAdminHDbean(long mahd, long makh, String tenkh, Date ngaymua, long thanhtien, boolean trangthai) {
		super();
		this.mahd = mahd;
		this.makh = makh;
		this.tenkh = tenkh;
		this.ngaymua = ngaymua;
		this.thanhtien = thanhtien;
		this.trangthai = trangthai;
	}
	public long getMahd() {
		return mahd;
	}
	public void setMahd(long mahd) {
		this.mahd = mahd;
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
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public boolean isTrangthai() {
		return trangthai;
	}
	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}
	
}
