package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class phanhoidao {
	public boolean themPhanhoi(String hoten,String sodienthoai,String email,String baocao) throws Exception {
		String sql="insert into phanhoi(hoten,sodienthoai,email,baocao,trangthai) values(?,?,?,?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,hoten);
		st.setString(2,sodienthoai);
		st.setString(3,email);
		st.setString(4,baocao);	
		st.setBoolean(5, false);
		return st.executeUpdate()>0;		
	}
//	public ArrayList<> layPhanhoi() throws Exception {
//		String sql="select * from phanhoi orderby ngaybaocao desc";
//		DungChung cn = new DungChung();
//		cn.KetNoi();
//		PreparedStatement st = cn.cn.prepareStatement(sql);
//	
//		ResultSet rs = st.executeQuery();
//		while(rs.next()) {
//			// viết thêm lấy dữ liệu theo mảng
//		}
//	}
	public boolean capnhattrangthaiPhanhoi(int phanhoiID) throws Exception {
		String sql="update from phanhoi set trangthai=true where phanhoiID=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);	
		st.setInt(1, phanhoiID);
		return st.executeUpdate()>0;		
	}
}
