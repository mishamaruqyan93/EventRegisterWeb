<%@ page import="model.Event" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>

<%
    List<Event> events = (List<Event>) request.getAttribute("events");
%>
Please input User's data:
<form action="/users/add" method="post">
    <input type="text" name="name" placeholder="please input name"/><br>
    <input type="text" name="surname" placeholder="please input surname"/><br>
    <input type="email" name="email" placeholder="please input email"/><br>
    <select name="eventId">
        <%for (Event event : events) {%>
        <option value="<%=event.getId()%>"><%=event.getName()%><%=event.getPlace()%>(<%=event.getPrice()%>)
        </option>
        <% }%>
    </select>
    <input type="submit" value="Register">
</form>
</body>
</html>
