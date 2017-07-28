package com.jiaoyan.util;


/**
 * 分页类
 */
public class Page {
	
    private int pageSize=10;       //每页大小
    private int currentPage;       //当前页
    private int currentResult;	  //当前记录起始索引
	private int totalPage;		  //总页数
	private int totalResult;	  //总记录数
	private boolean entityOrField;	//true:需要分页的地方，传入的参数就是Page实体；false:需要分页的地方，传入的参数所代表的实体拥有Page属性
	private PageData pd = new PageData();
	private String toolsPage;		//最终页面显示的底部翻页导航，详细见：getToolsPage();
	
	public Page(){

	}
	
	/**
	 * 计算总页数
	 * @return
	 */
	public int getTotalPage() {
		if(totalResult%pageSize==0)
			totalPage = totalResult/pageSize;
		else
			totalPage = totalResult/pageSize+1;
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	public int getCurrentPage() {
		if(currentPage<=0)
			currentPage = 1;
		if(currentPage>getTotalPage())
			currentPage = getTotalPage();
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public int getTotalResult() {
		return totalResult;
	}

	public void setTotalResult(int totalResult) {
		this.totalResult = totalResult;
	}
	
	public int getCurrentResult() {
		currentResult = (getCurrentPage()-1)*pageSize;
		if(currentResult<0)
			currentResult = 0;
		return currentResult;
	}

	public void setCurrentResult(int currentResult) {
		this.currentResult = currentResult;
	}
	
	/**
	 * 分页
	 * @return
	 */
	public String getToolsPage() {
		StringBuffer buffer = new StringBuffer();
		if(totalResult>0){
			//buffer.append("<ul class='pagination pull-right no-margin'> \n");
			buffer.append("<li><a>共<font color=red>"+totalResult+"</font>条</a></li>\n");
			buffer.append("<li><input type='number' min='1' value='"+currentPage+"' id='toGoPage' style='width:50px;text-align:center;float:left;line-height: 26px;margin: 0 4px;' placeholder='页码'/></li>\n");
			buffer.append("<li style='cursor:pointer;'><a onclick='toPage();'  class='btn btn-mini btn-success'>跳转</a></li>\n");
			if(currentPage==1){
				buffer.append("<li><a>首页</a></li>\n");
				buffer.append("<li><a>上页</a></li>\n");	
			}else{
				buffer.append("<li style='cursor:pointer;'><a onclick='nextPage(1)'>首页</a></li>\n");
				buffer.append("<li style='cursor:pointer;'><a onclick='nextPage("+(currentPage-1)+")'>上页</a></li>\n");	
			}
			if(currentPage==totalPage){
				buffer.append("<li><a>下页</a></li>\n");
				buffer.append("<li><a>尾页</a></li>\n");
			}else{
				buffer.append("<li style='cursor:pointer;'><a onclick='nextPage("+(currentPage+1)+")'>下页</a></li>\n");
				buffer.append("<li style='cursor:pointer;'><a onclick='nextPage("+totalPage+")'>尾页</a></li>\n");
			}
			buffer.append("<li><a>共"+totalPage+"页</a></li>\n");
			
			
			buffer.append("<script type='text/javascript'>\n");
			buffer.append("function nextPage(page){\n");
			buffer.append("top.showLoading();\n");
			buffer.append("if(true && document.forms[0]){\n");
			buffer.append("   var url = document.forms[0].getAttribute('action');\n");
			buffer.append("   if(url.indexOf('?')>-1){url += '?"+(entityOrField?"currentPage":"currentPage")+"=';}"+ "\n");
			buffer.append("   else{url += '?"+(entityOrField?"currentPage":"currentPage")+"=';");
			buffer.append("   url = url + page + '&" +(entityOrField?"pageSize":"pageSize")+"="+pageSize+"';\n");
			buffer.append("   document.forms[0].action = url;\n");
			buffer.append("   document.forms[0].submit();\n");
//			buffer.append("		alert(0); \n");
			buffer.append("} }else{\n");
			buffer.append("	  var url = document.location+'';\n");
			buffer.append("	  if(url.indexOf('?')>-1){\n");
			buffer.append("		   if(url.indexOf('currentPage')>-1){\n");
			buffer.append("				var reg = /currentPage=\\d*/g;\n");
			buffer.append("				url = url.replace(reg,'currentPage='+page);\n");
			buffer.append("			}else{\n");
			buffer.append("				url += \'&"+(entityOrField?"currentPage":"currentPage")+"=' + page;\n");
			buffer.append("			}\n");
			buffer.append("		}else{url += \'?"+(entityOrField?"currentPage":"currentPage")+"='; url = url + page + \'&" +(entityOrField?"pageSize":"pageSize")+"="+pageSize+"';\n}\n");
			buffer.append("		document.location = url;\n");
			buffer.append("	}\n");
			buffer.append("}\n");
			
			buffer.append("function toPage(){");
			buffer.append(" var toPaggeVal = document.getElementById('toGoPage').value;");
			buffer.append(" if(toPaggeVal == ''){document.getElementById('toGoPage').value=1;return;}");
			buffer.append(" if(isNaN(Number(toPaggeVal))){document.getElementById('toGoPage').value=1;return;}");
			buffer.append(" nextPage(toPaggeVal);");
			buffer.append("}\n");
			buffer.append("</script>\n");
		}
		toolsPage=buffer.toString();
		return toolsPage;
	}
	
	public void setToolsPage(String toolsPage) {
		this.toolsPage = toolsPage;
	}

	public PageData getPd() {
		return pd;
	}

	public void setPd(PageData pd) {
		this.pd = pd;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}




	
	
}
