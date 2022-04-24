package bo;

import java.util.ArrayList;

import bean.loaisanphambean;
import dao.loaisanphamdao;

public class loaisanphambo {
	loaisanphamdao ldao = new loaisanphamdao();
	public ArrayList<loaisanphambean> getLoai() throws Exception{
		return ldao.getLoai();
	}
}
