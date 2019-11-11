<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 11/11/2019
  Time: 11:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%
    Map<String, String> dictionary = new HashMap<>();
    dictionary.put("Book", "Sach");
    dictionary.put("Hello", "Xin Chao");
    dictionary.put("Apple", "Qua Tao");
    dictionary.put("Yellow", "Mau Vang");

    String search = request.getParameter("search");

    String result = dictionary.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
