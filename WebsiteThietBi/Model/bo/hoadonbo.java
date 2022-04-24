package bo;

import java.util.ArrayList;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao = new hoadondao();
	public long themHoadon(long makh,long thanhtien,boolean trangthai) throws Exception{
		return hddao.themHoadon(makh, thanhtien, trangthai);
	}
	public ArrayList<hoadonbean> getHoadon(long makh) throws Exception{
		return hddao.getHoadon(makh);
	}
	public ArrayList<hoadonbean> getAllHoadon() throws Exception{
		return hddao.getAllHoadon();
	}
	public boolean xacnhanHD(long mahd) throws Exception{
		return hddao.xacnhanHD(mahd);
	}
}
