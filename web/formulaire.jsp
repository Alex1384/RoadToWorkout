<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 17/07/18
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="(nom du fichier).css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
            integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/formulaire.css">
</head>


<body>



<form method="post" action="${pageContext.request.contextPath}/formulaire">
    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="email" class="form-control" id="emailId" placeholder="Entrer votre email"
                       name="email">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="password" class="form-control" id="passwordId" placeholder="Entrer votre password"
                       name="password">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="firstName" class="form-control" id="firstNameId" placeholder="Entrer votre nom"
                       name="name">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <select class="form-control" id="exampleFormControlSelect1" name="sexe">
                    <option>Choisissez votre sexe</option>
                    <option>Homme</option>
                    <option>Femme</option>
                </select>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="Age" class="form-control" id="ageId" placeholder="Entrer votre Age" name="age">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="poids" class="form-control" id="poidsId" placeholder="Entrer votre poids" name="poids">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="taille" class="form-control" id="tailleId" placeholder="Taille" name="taille">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <input type="programme" class="form-control" id="programmeId" placeholder="Générer un programme"
                       name="programme">
            </div>
        </div>
    </div>

    <div class="group">
        <div class="row">
            <div class="offset-sm-5 col-sm-2">
                <button type="submit" class="btn btn-primary btn-lg btn-block">Votre programme</button>
            </div>
        </div>
        <c:if test="${not empty requestScope.error}">
            <p> ${error}</p>
        </c:if>
        <c:if test="${not empty requestScope.error}">
            <p> ${error2}</p>
        </c:if>
    </div>
</form>

</div>
</body>
</html>
