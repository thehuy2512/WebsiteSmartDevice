package bo;

import dao.chitiethoadondao;

public class chitiethoadonbo {
	chitiethoadondao cthddao = new chitiethoadondao();
	public boolean themChitietdathang(String masp,long soluongmua,long mahd) throws Exception{
		return cthddao.themChitietdathang(masp, soluongmua, mahd);
	}
}
