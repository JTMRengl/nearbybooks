package com.jiaoyan.entity.system;


/**
 * 
* 类名称：组织机构
 */
public class Department {

	private String DEPARTMENT_ID;	//主键
	private String NAME;			//名称
	private String PARENT_ID;		//上级ID
	private String CHIEFNAME;		//负责人
	private String CHIEFPHONE;		//电话
	private String REMARK;		    //备注
	private	String ADDRESS;			//地址
	
	
	public String getDEPARTMENT_ID() {
		return DEPARTMENT_ID;
	}
	public void setDEPARTMENT_ID(String dEPARTMENT_ID) {
		DEPARTMENT_ID = dEPARTMENT_ID;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getPARENT_ID() {
		return PARENT_ID;
	}
	public void setPARENT_ID(String pARENT_ID) {
		PARENT_ID = pARENT_ID;
	}

	public String getCHIEFNAME() {
		return CHIEFNAME;
	}
	public void setCHIEFNAME(String cHIEFNAME) {
		CHIEFNAME = cHIEFNAME;
	}
	public String getCHIEFPHONE() {
		return CHIEFPHONE;
	}
	public void setCHIEFPHONE(String cHIEFPHONE) {
		CHIEFPHONE = cHIEFPHONE;
	}
	public String getREMARK() {
		return REMARK;
	}
	public void setREMARK(String rEMARK) {
		REMARK = rEMARK;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}

	

	
}