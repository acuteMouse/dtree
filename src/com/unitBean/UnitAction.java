package com.unitBean;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;

public class UnitAction extends Unit{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  static UnitDao unitDao=null;
	private List<Unit> list=null;
	
	public List<Unit> getList() {
		return list;
	}
	public void setList(List<Unit> list) {
		this.list = list;
	}
	public UnitAction() {
	
		unitDao=new UnitDao();
	}
	//查询所有unit
	public String queryunitList() {		
	
	 	 list =  unitDao.queryunitList();
	
		ActionContext.getContext().put("list", list);
	  
		return "success";
	}

	//根据节点名删除
	public String deleteunit() {	
		if (null==id ) {
			return "error";
		}
		else {
			String sql = "delete from mytree where id='" + id + "'";
			unitDao.operationUnit(sql);
			return "operationSuccess";
		}
	
	}
	 //增加一个unit
	public String insertunit() {	
		if (null==id||null==name||null==parentId) {
			return "error";
		}
		else {
		
			String sql = "insert into mytree  values('" +
			id
			+ "','"
			+ name
			+ "','"
			+ parentId+"')";
			unitDao.operationUnit(sql);
			return "operationSuccess";
		}
	}
	
	//通过节点唯一标识id 来修改节点名
	public String updateunit() {	
		 if (null==id) {
			return "error";
		}
		String sql = "update mytree set name='" + name
				+ "' where id='"
				+ id + "'";
		unitDao.operationUnit(sql);
		return "operationSuccess";
	}

}
