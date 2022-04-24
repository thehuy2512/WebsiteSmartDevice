package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.loaisanphambean;

public class loaisanphamdao {
	public ArrayList<loaisanphambean> getLoai() throws Exception{
		ArrayList<loaisanphambean> ds = new ArrayList<loaisanphambean>();
		String sql = "select * from loaisanpham";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st =cn.cn.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new loaisanphambean(rs.getString(1), rs.getString(2)));			
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
}
