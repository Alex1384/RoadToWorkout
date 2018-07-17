<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 16/07/18
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Connection</title>
    <link rel="stylesheet" type="text/css" href="style_prog.css">
</head>
<body>
    <div class ="container-btn">
    <div class="container">
        <form method="post" action="${pageContext.request.contextPath}/connect">
            <label>E-mail</label>
            <br />
            <input id="email" type="text" name="email" placeholder="myemail@mail.fr">
            <br />
            <br />
            <label for="pass">Votre mot de passe :</label>
            <br />
            <input type="password" name="pass" id="pass" />
            <br />
            <br />
            <input type="submit" class="btn" value="Se connecter"/>
        </form>
        <br />
    </div>
    <br />

    <div class="container">
        <input type="submit" class="btn" value="S'inscrire"  action="${pageContext.request.contextPath}/connect" />
    </div>
</div>

</body>
</html>
