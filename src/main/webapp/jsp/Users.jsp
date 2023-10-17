<%@ page import="models.User" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Users</title>
</head>
<body>
<h1>From JSP Users</h1>
<div>
  <table>
    <tr>
      <th>ID</th>
      <th>NAME</th>
      <th>SURNAME</th>
    </tr>
    <%
      List<User> users = (List<User>) request.getAttribute("usersForJsp");
      for ( int i = 0; i < users.size(); i++) {
    %>
    <tr>
      <td> <%=users.get(i).getId()%></td>
      <td> <%=users.get(i).getName()%></td>
      <td> <%=users.get(i).getSurname()%></td>
    </tr>
    <%}%>
  </table>
</div>
</body>
</html>