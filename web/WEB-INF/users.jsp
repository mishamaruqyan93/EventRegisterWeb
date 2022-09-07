<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users page</title>
</head>
<body>
<%
    List<User> users = (List<User>) request.getAttribute("users");
%>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>event name and place</th>
        <th>action</th>
    </tr>
    <% for (User user : users) {
    %>
    <tr>
        <td><%=user.getId()%>
        </td>
        <td><%=user.getName()%>
        </td>
        <td><%=user.getSurName()%>
        </td>
        <td><%=user.getEmail()%>
        </td>
        <td>
            <% if (user.getEvent() != null) {%>
            <%=user.getEvent().getName()%><%=user.getEvent().getPlace()%>
            <%} else {%>
            <span style="color: cornflowerblue">There is not event</span>
            <%}%>
        </td>
        <td>
            <a href="/users/remove?userId=<%=user.getId()%>">Remove</a> | <a
                href="/users/edit?userId=<%=user.getId()%>">Edit</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
