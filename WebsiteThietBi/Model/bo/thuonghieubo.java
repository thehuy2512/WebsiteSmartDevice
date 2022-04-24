package bo;

import java.util.ArrayList;

import bean.thuonghieubean;
import dao.thuonghieudao;

public class thuonghieubo {
	thuonghieudao thdao = new thuonghieudao();
	public ArrayList<thuonghieubean> getThuonghieu() throws Exception{
		return thdao.getThuonghieu();
	}
}
