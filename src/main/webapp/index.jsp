<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <title>HIT DevOps Final</title>
  <style>
    body { font-family: Arial, sans-serif; max-width: 720px; margin: 40px auto; }
    input, button { padding: 8px 12px; }
    .box { padding:16px; border:1px solid #ddd; border-radius:8px; }
  </style>
</head>
<body>
  <h1>HIT DevOps Final – Simple JSP App V2!!!!!</h1>
  <div class="box">
    <form method="get" action="index.jsp">
      <label for="nameInput">Enter your name:</label>
      <input id="nameInput" name="name" type="text" placeholder="Your name"/>
      <button id="helloBtn" type="submit">Say Hello</button>
    </form>
    <%
      String nm = request.getParameter("name");
      if (nm != null && !nm.trim().isEmpty()) {
    %>
      <%! public static String esc(String s) {
            return s.replace("&","&amp;").replace("<","&lt;").replace(">","&gt;"); } %>
      <p id="greeting">Hello, <%= esc(nm) %> 👋</p>
    <% } %>
  </div>

  <p style="margin-top:20px">
    <a id="aboutLink" href="about.jsp">About</a>
  </p>
</body>
</html>
