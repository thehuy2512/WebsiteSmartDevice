package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.viewAdminHDbean;



public class viewAdminHDdao {
	public ArrayList<viewAdminHDbean> getAdminHoadon() throws Exception{
		ArrayList<viewAdminHDbean> ds = new ArrayList<viewAdminHDbean>();
		String sql = "select * from viewAdminHD order by ngaymua desc";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st =cn.cn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new viewAdminHDbean(rs.getLong(1), rs.getLong(2),rs.getString(3), rs.getDate(4), rs.getLong(5), rs.getBoolean(6)));			
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	} 
}
