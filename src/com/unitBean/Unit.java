package com.unitBean;

import com.tools.MySuperAction;




public class Unit extends MySuperAction{
    /**
	 * unit类 包含各种属性
	 */
	private static final long serialVersionUID = 1L;
	protected Integer id;  //作为数据库的主键,每个节点的唯一标识
    protected String name;  // 节点名字   可以不唯一,一般存的时候不重复存放
    protected String parentId;  //父节点的id  不唯一!
    /*属性的get,set方法*/
    
   	 
	public int getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	
}
