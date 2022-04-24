package dao;

import java.sql.PreparedStatement;


public class chitiethoadondao {
	public boolean themChitietdathang(String masp,long soluongmua,long mahd) throws Exception{
		String sql="insert into chitiethoadon(masp,soluongmua,mahd) values(?,?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1, masp);
		st.setLong(2, soluongmua);
		st.setLong(3, mahd);
		
		return st.executeUpdate()>0;
	}
	
}
