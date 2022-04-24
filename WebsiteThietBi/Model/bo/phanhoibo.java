package bo;

import dao.phanhoidao;

public class phanhoibo {
	phanhoidao phdao = new phanhoidao();
	public boolean themPhanhoi(String hoten,String sodienthoai,String email,String baocao) throws Exception {
		return phdao.themPhanhoi(hoten, sodienthoai, email, baocao);
	}
//	public boolean layPhanhoi() throws Exception {
//		return phdao.layPhanhoi();
//	}
	public boolean capnhattrangthaiPhanhoi(int phanhoiID) throws Exception {
		return phdao.capnhattrangthaiPhanhoi(phanhoiID);
	}
}
