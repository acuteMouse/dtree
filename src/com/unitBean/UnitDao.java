package com.unitBean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.sun.org.apache.bcel.internal.generic.Select;
import com.tools.JDBCConnection;

public class UnitDao {
	private JDBCConnection connection = null;
	
	 public UnitDao() {
	    connection=new JDBCConnection();
	}
	 //增加 修改删除 操作
	public boolean operationUnit(String sql) {
		return connection.executeUpdate(sql);
	}

	
	//查询所有节点信息
	public List<Unit> queryunitList() {
		List<Unit> list = new ArrayList<Unit>();
		Unit unit=null;
		String sql=null;
		sql = "select * from mytree order by id desc";
		ResultSet rs = connection.executeQuery(sql);
		try {
			while (rs.next()) {
				unit=new Unit();
				unit.setId(rs.getInt(1));
				unit.setName(rs.getString(2));
				unit.setParentId(rs.getString(3));
				list.add(unit);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
