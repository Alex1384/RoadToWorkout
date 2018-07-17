<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 17/07/18
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" type="text/css" href="formulaire.css">
</head>


<body>

<h2>Générez votre programme</h2>
<form action="/action_page.php">
    <div class="form-group">
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <label for="exampleFormControlSelect1"></label>
                <select class="form-control" id="exampleFormControlSelect1">
                    <option>Choisissez votre sexe</option>
                    <option>Homme</option>
                    <option>Femme</option>
                </select>
            </div>
        </div>
    </div>
    <form class="form-horizontal" action="/action_page.php">
        <div class="form-group">
            <div class="row">
                <div class="offset-sm-4 col-sm-4">
                    <input type="Age" class="form-control" id="age" placeholder="Entrer votre Age" name="age">
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="offset-sm-4 col-sm-4">
                    <input type="poids" class="form-control" id="poids" placeholder="Entrer votre poids" name="poids">
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="offset-sm-4 col-sm-4">
                    <input type="taille" class="form-control" id="taille" placeholder="Taille" name="taille">
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="offset-sm-4 col-sm-4">
                    <input type="programme" class="form-control" id="programme" placeholder="Générer un programme"
                           name="programme">
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="offset-sm-6 col-sm-2">
                <div class="checkbox">
                    <label><input type="checkbox" name="remember"> Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="offset-sm-4 col-sm-2">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form>
    </div>

</form>
</body>
</html>
