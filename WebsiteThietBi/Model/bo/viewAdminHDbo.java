package bo;

import java.util.ArrayList;

import bean.viewAdminHDbean;
import dao.viewAdminHDdao;

public class viewAdminHDbo {
	
	viewAdminHDdao vhddao = new viewAdminHDdao();
	public ArrayList<viewAdminHDbean> getAdminHoadon() throws Exception{
		return vhddao.getAdminHoadon();
	}
	public long demSLHD() throws Exception{
		long dem=0;
		ArrayList<viewAdminHDbean> vhd = getAdminHoadon();
		for(viewAdminHDbean v:vhd) {
			dem=dem+1;
		}
		return dem;
	}
}
