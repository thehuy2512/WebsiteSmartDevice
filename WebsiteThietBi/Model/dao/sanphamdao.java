package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.sanphambean;

public class sanphamdao {
	public ArrayList<sanphambean> getSanPham() throws Exception{
		ArrayList<sanphambean> ds = new  ArrayList<sanphambean>();
		String sql="select * from sanpham";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			//
			ds.add(new sanphambean(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7)));
		}
		rs.close();
		st.close();
		cn.cn.close();

	return ds;
	}
	public ArrayList<sanphambean> getSanPhamtheothuonghieu(String maloai,String mathuonghieu) throws Exception{
		ArrayList<sanphambean> ds = new  ArrayList<sanphambean>();
		String sql="select * from sanpham where maloai like ? and mathuonghieu like ?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1, maloai);
		st.setString(2, mathuonghieu);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			//
			ds.add(new sanphambean(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7)));
		}
		rs.close();
		st.close();
		cn.cn.close();

	return ds;
	}
	public ArrayList<sanphambean> getSanPhamtheoloai(String maloai) throws Exception{
		ArrayList<sanphambean> ds = new  ArrayList<sanphambean>();
		String sql="select * from sanpham where maloai like ?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1, maloai);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			//
			ds.add(new sanphambean(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7)));
		}
		rs.close();
		st.close();
		cn.cn.close();

	return ds;
	}
	public boolean capnhatTrangthaiSP(String masp,Boolean trangthai) throws Exception{
		String sql="update sanpham set trangthai=? where masp=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		
		st.setBoolean(1, trangthai);
		st.setString(2, masp);
		return  st.executeUpdate()>0;		
	}
	public boolean themSP(String masp,String tensp,long gia,String maloai,String mathuonghieu,String anh,Boolean trangthai) throws Exception{
		String sql="insert into sanpham(masp,tensp,gia,maloai,mathuonghieu,anh,trangthai) values(?,?,?,?,?,?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		
		st.setString(1, masp);
		st.setString(2, tensp);
		st.setLong(3, gia);
		st.setString(4, maloai);
		st.setString(5, mathuonghieu);
		st.setString(6, anh);
		st.setBoolean(7, trangthai);
		
		return  st.executeUpdate()>0;		
	}
	public boolean suaSP(String masp,String tensp,long gia,String maloai,String mathuonghieu,Boolean trangthai) throws Exception{
		String sql="update sanpham set tensp=?,gia=?,maloai=?,mathuonghieu=?,trangthai=? where masp=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		
		
		st.setString(1, tensp);
		st.setLong(2, gia);
		st.setString(3, maloai);
		st.setString(4, mathuonghieu);
		//st.setString(5, anh);
		st.setBoolean(5, trangthai);
		st.setString(6, masp);
		return  st.executeUpdate()>0;		
	}
}
