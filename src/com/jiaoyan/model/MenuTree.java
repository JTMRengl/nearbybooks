package com.jiaoyan.model;

import java.util.List;

import com.jiaoyan.entity.system.Menu;

public class MenuTree extends Menu {
	
	
	private String target;
	private Menu parentMenu;
	private List<MenuTree> subMenu;
	private boolean hasMenu = false;
	
	
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public Menu getParentMenu() {
		return parentMenu;
	}
	public void setParentMenu(Menu parentMenu) {
		this.parentMenu = parentMenu;
	}
	public List<MenuTree> getSubMenu() {
		return subMenu;
	}
	public void setSubMenu(List<MenuTree> subMenu) {
		this.subMenu = subMenu;
	}
	public boolean isHasMenu() {
		return hasMenu;
	}
	public void setHasMenu(boolean hasMenu) {
		this.hasMenu = hasMenu;
	}
	
	
	
	
}
