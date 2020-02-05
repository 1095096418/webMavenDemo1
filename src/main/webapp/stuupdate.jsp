<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:if test="${oldst==null }">
	您还没有学生信息,请先<a href="stuadd.jsp">添加</a>
</c:if>
<c:if test="${oldst!=null }">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生修改</title>
</head>

<body>
<form action="update_Student.do" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table width="550" border="1" align="center" cellpadding="1" cellspacing="0">
    <tr>
      <td colspan="3" align="center" bgcolor="#FFFF33">学生修改</td>
    </tr>
    <tr>
      <td width="84">姓名</td>
      <td width="266"><label for="sname"></label>
      <input type="text" name="sname" id="sname" value="${oldst.sname}"/>
      <input type="hidden" name="stuid" id="stuid" value="${oldst.stuid}" />
      
      </td>
      <td width="186" rowspan="6"><img src="uppic/${oldst.fname}" width="185" height="134" /></td>
    </tr>
    <tr>
      <td>性别</td>
      <td><input name="sex" type="radio" id="radio" value="男" checked="checked" />
        <label for="sex">男
          <input type="radio" name="sex" id="radio2" value="女" />
        女</label></td>
      </tr>
    <tr>
      <td>地址</td>
      <td><input type="text" name="address" id="address" value="${oldst.address}"/></td>
      </tr>
    <tr>
      <td>生日</td>
      <td><input type="date" value="${oldst.sdate}" name="sdate" id="sdate" /></td>
      </tr>
    <tr>
      <td>选择照片</td>
      <td>
        <input type="file" name="pic" id="pic" /></td>
      </tr>
    <tr>
      <td>班级</td>
      <td>
        <select name="classid" id="cid">
          <c:forEach items="${lsca }" var="ca">
            <option value="${ca.cid }" 
      				<c:if test="${oldst.classid==ca.cid }">      				
      					selected="selected"
      				</c:if>
      			>${ca.cname}</option>
            </c:forEach>
          </select>
        
      </td>
      </tr>
    <tr>
      <td colspan="3" align="center" bgcolor="#FFFF33"><input type="submit" name="button" id="button" value="提交" />
      <input type="reset" name="button2" id="button2" value="重置" /></td>
    </tr>
  </table>
  <p align="center"><a href="findPageAll_Student.do">学生列表</a></p>
  <p>&nbsp;</p>
</form>
</body>
</html>
</c:if>