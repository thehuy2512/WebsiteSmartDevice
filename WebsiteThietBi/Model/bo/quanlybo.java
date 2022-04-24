package bo;

import bean.quanlybean;
import dao.quanlydao;

public class quanlybo {
	quanlydao qldao = new quanlydao();
	public quanlybean KTDNquanly(String username,String password) throws Exception{
		return qldao.KTDNquanly(username, password);
	}
}
