package com.jiaoyan.model;

import java.util.ArrayList;
import java.util.List;

/**
 * 树状图实体类
 */
public class TreeNode {
	
	private String id;    //节点id
	private String pId;   //父节点
	private String name;  //节点名称
	private List<TreeNode> nodes=new ArrayList<TreeNode>();  //子节点
	private boolean open = false; //是否展开树节点，默认不展开
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<TreeNode> getNodes() {
		return nodes;
	}
	public void setNodes(List<TreeNode> nodes) {
		this.nodes = nodes;
	}
	public boolean isOpen() {
		return open;
	}
	public void setOpen(boolean open) {
		this.open = open;
	}
	
	

}
