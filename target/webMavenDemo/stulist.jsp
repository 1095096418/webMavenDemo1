<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:if test="${pb==null}">
	<c:redirect url="findPageAll_Student.do"></c:redirect>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生列表</title>
<style>
	table{
		font-size:12.5px
	}
</style>

<script>
	//更改每页记录数的事件方法
	function dochangeRows(){
		//获取输入的每页记录数
		var rows=document.form1.rows.value;
		if(isNaN(rows)){
			alert('输入的不是数字！');
			document.form1.rows.value=${pb.rows};
			return;
		}
		window.location="findPageAll_Student.do?rows="+rows;
	}
	//更改页数的事件方法
	function dochangePage(){
		//获取输入的页数
		var page=document.form1.page.value;
		if(isNaN(page)){
			alert('输入的不是数字！');
			document.form1.page.value=${pb.page};
			return;
		}
		window.location="findPageAll_Student.do?page="+page;
	}


</script>

</head>

<body>
<p align="center"><h1 align="center">学生列表</h1>
<hr />
<table width="810" border="1" align="center" cellpadding="1" cellspacing="0">
  <tr align="center" bgcolor="#FFFFCC">
    <td>编号</td>
    <td>姓名</td>
    <td>性别</td>
    <td>地址</td>
    <td>生日</td>
    <td>班级</td>
    <td>照片</td>
    <td>操作</td>
  </tr> 
  <c:forEach items="${pb.pagelist}" var="st">	 
  <tr align="center">
    <td>${st.stuid}</td>
    <td>${st.sname}</td>
    <td>${st.sex}</td>
    <td>${st.address}</td>
    <td>${st.sdate}</td>
    <td>${st.cname}</td>
    <td><a href="uppic/${st.fname}" target="_blank"><img src="uppic/${st.fname}" width="43" height="51" alt="" /></a></td>
    <td><a href="delById_Student.do?sid=${st.stuid}">删除</a> <a href="findById_Student.do?sid=${st.stuid}">修改</a></td>
  </tr>
 </c:forEach>
</table>
<form id="form1" name="form1" method="post" action="">
  <table width="810" border="1" align="center" cellpadding="1" cellspacing="0">
    <tr align="center" bgcolor="#FFFFCC">
      <td>
      <c:if test="${pb.page>1 }">
      	<a href="findPageAll_Student.do?page=1">
      </c:if>
      			首页</a></td>
      <td>
       <c:if test="${pb.page>1 }">
      		<a href="findPageAll_Student.do?page=${pb.page-1}">
       </c:if>
      		上页</a></td>
      <td>
      	<c:if test="${pb.page<pb.maxpage }">
      		<a href="findPageAll_Student.do?page=${pb.page+1}">
      	</c:if>
      		下页</a></td>
      <td>
      	<c:if test="${pb.page<pb.maxpage }">
      		<a href="findPageAll_Student.do?page=${pb.maxpage}">
      	</c:if>
      		末页</a></td>
      <td>每页
        <label for="rows"></label>
      <input name="rows" type="text" value="${pb.rows}" id="rows" size="2" />
      条记录
      <input type="button" name="button" id="button" value="确定" onClick="dochangeRows()" /></td>
      <td>跳转到第
        <label for="page"></label>
        <input name="page" type="text" id="page" size="2"  value="${pb.page}" />
        页
      <input type="button" name="button2" id="button2" value="确定" onClick="dochangePage()" /></td>
      <td>${pb.page}/${pb.maxpage}页</td>
    </tr>
  </table>
</form>
<hr />
<p align="center"><a href="stuadd.jsp">返回添加</a></p>
<p>&nbsp;</p>
</body>
</html>