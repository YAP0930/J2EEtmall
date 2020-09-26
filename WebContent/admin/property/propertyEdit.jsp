<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../../include/adminHeader.jsp"%>
<%@include file="../../include/adminNav.jsp"%>
<style>
div.navitagorDiv nav.adminNav span#category a:link{
   color:#C0C0C0;
   text-decoration:none;
}
div.navitagorDiv nav.adminNav span#category a:visited{
   color:#FFFFFF;
   text-decoration:none;
}
div.navitagorDiv nav.adminNav span#category a:hover{
   color:#FFFFFF;
   text-decoration:none;
}
div.navitagorDiv nav.adminNav span#category a:active{
   color:#FFFFFF;
   text-decoration:none;
}
</style>
<body>
<div class="adminMessagePage">
<br/><br/>
<ol class="breadcrumb">
  <li><a href="admin_category_list">所有分类</a></li>
  <li><a href="admin_category_list?start=${cstart}">${c.name}</a></li>
  <li><a href="admin_property_list?start=${prstart}&&cid=${c.id}&&cstart=${cstart}">属性管理 </a></li>
  <li class="active">编辑 </li>
</ol>

<div style="width:50%;margin:0 auto;">
<div class="panel panel-warning">
  <div class="panel-heading">编辑属性</div>
  <div class="panel-body">
    <!--面板内容  -->
    <form action="admin_property_update" method="post" >
        <table>
             <tr>
                 <td class="subtitleTD">属性名称</td>
                 <td>                    
                     <input type="text" name="name" value="${p.name}" class="form-control">
                     <input type="hidden" name="id" value="${p.id}">
                 </td>
             </tr> 
             <tr><td><br></td></tr>          
             <tr >
                  <td colspan="2" align="center">
                      <input type="hidden" name="cid" value="${cid}">
                      <input type="hidden" name="prstart" value="${prstart}">
                      <input type="hidden" name="cstart" value="${cstart}">
                      <button type="submit" class="btn btn-success">提交</button>
                  </td>
             </tr>
        </table>
    </form>
  </div>
</div>
</div>
</div>
</body>
</html>