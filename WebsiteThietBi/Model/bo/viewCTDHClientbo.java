package bo;

import java.util.ArrayList;

import bean.viewCTHDClient;
import dao.viewCTHDClientdao;

public class viewCTDHClientbo {
	viewCTHDClientdao ctdao = new viewCTHDClientdao();
	public ArrayList<viewCTHDClient> getCTHD(long mahd) throws Exception{
		return ctdao.getCTHD(mahd);
				
	}
}
