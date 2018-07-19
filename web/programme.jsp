<%@ page import="java.util.ArrayList" %>
<%@ page import="fr.wildcodeschool.roadtoworkout.ObjectifModel" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 13/07/18
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Programme</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/programme.js"></script>
    <link rel="stylesheet" type="text/css" href="style_prog.css">

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
</head>

<body>
<div id="back"></div>

<div class="container">
    <div class="banner">
        <a class="banner_btn"><p>Mon objectif : ${sessionScope.nameObjectif}</p></a>
    </div>


    <div id="calendar">
        <p id="calendar-day"></p>
        <p id="calendar-date"></p>
        <p id="calendar-month-year"></p>
    </div>
</div>

<div class="container">
    <div id="calendar2" onclick="showBloc1()">
        <p id="calendar-day2"></p>
        <p id="calendar-date2"></p>
        <p id="calendar-month-year2"></p>
    </div>

    <div id="calendar3" onclick="showBloc2()">
        <p id="calendar-day3"></p>
        <p id="calendar-date3"></p>
        <p id="calendar-month-year3"></p>
    </div>

    <div id="calendar4" onclick="showBloc3()">
        <p id="calendar-day4"></p>
        <p id="calendar-date4"></p>
        <p id="calendar-month-year4"></p>
    </div>

    <div id="calendar5" onclick="showBloc4()">
        <p id="calendar-day5"></p>
        <p id="calendar-date5"></p>
        <p id="calendar-month-year5"></p>
    </div>

    <div id="calendar6" onclick="showBloc5()">
        <p id="calendar-day6"></p>
        <p id="calendar-date6"></p>
        <p id="calendar-month-year6"></p>
    </div>

    <div id="calendar7" onclick="showBloc6()">
        <p id="calendar-day7"></p>
        <p id="calendar-date7"></p>
        <p id="calendar-month-year7"></p>
    </div>

    <div id="calendar8" onclick="showBloc7()">
        <p id="calendar-day8"></p>
        <p id="calendar-date8"></p>
        <p id="calendar-month-year8"></p>
    </div>
</div>

<div class="container">
    <div class="card" id="card1">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1" style="width: 35%">

        <div id="carouselExampleIndicators" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodyMonday}" var="topBodyMonday">
                                <tr>
                                    <td>${topBodyMonday.muscle}</td>
                                    <td>${topBodyMonday.exercice}</td>
                                    <td>${topBodyMonday.serie}</td>
                                    <td>${topBodyMonday.repetitions}</td>
                                    <td>${topBodyMonday.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodyMonday}" var="bottomBodyMonday">
                                <tr>
                                    <td>${bottomBodyMonday.muscle}</td>
                                    <td>${bottomBodyMonday.exercice}</td>
                                    <td>${bottomBodyMonday.serie}</td>
                                    <td>${bottomBodyMonday.repetitions}</td>
                                    <td>${bottomBodyMonday.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="card" id="card2" style="display: none">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1.2" style="width: 35%">

        <div id="carouselExampleIndicators2" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodyTuesday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodyTuesday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="card" id="card3" style="display: none">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1.3" style="width: 35%">

        <div id="carouselExampleIndicators3" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodyWednesday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodyWednesday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="card" id="card4" style="display: none">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1.4" style="width: 35%">

        <div id="carouselExampleIndicators4" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodyThursday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodyThursday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="card" id="card5" style="display: none">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1.5" style="width: 35%">

        <div id="carouselExampleIndicators5" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodyFriday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodyFriday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="card" id="card6" style="display: none">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1.6" style="width: 35%">

        <div id="carouselExampleIndicators6" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodySaturday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodySaturday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div class="container">
    <div class="card" id="card7" style="display: none">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" id="img1.7" style="width: 35%">

        <div id="carouselExampleIndicators7" class="carousel slide" data-interval="false" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="container">
                        <h3>Haut du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.topBodySunday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <h3>Bas du corps</h3>
                    </div>

                    <div style="overflow-x:auto;">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Muscle</th>
                                <th scope="col">Excercices</th>
                                <th scope="col">Séries</th>
                                <th scope="col">Répétitions</th>
                                <th scope="col">Repos</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.bottomBodySunday}" var="exercices">
                                <tr>
                                    <td>${exercices.muscle}</td>
                                    <td>${exercices.exercice}</td>
                                    <td>${exercices.serie}</td>
                                    <td>${exercices.repetitions}</td>
                                    <td>${exercices.repos} s</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<!--show blocMonday -->
<script>
    function showBloc1() {
        var a = document.getElementById("card1");
        var b = document.getElementById("card2");
        var c = document.getElementById("card3");
        var d = document.getElementById("card4");
        var e = document.getElementById("card5");
        var f = document.getElementById("card6");
        var g = document.getElementById("card7");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }
    }
</script>

<!--show blocTuesday -->
<script>
    function showBloc2() {
        var a = document.getElementById("card2");
        var b = document.getElementById("card1");
        var c = document.getElementById("card3");
        var d = document.getElementById("card4");
        var e = document.getElementById("card5");
        var f = document.getElementById("card6");
        var g = document.getElementById("card7");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }

    }
</script>
<!--show blocWednesday -->
<script>
    function showBloc3() {
        var a = document.getElementById("card3");
        var b = document.getElementById("card1");
        var c = document.getElementById("card2");
        var d = document.getElementById("card4");
        var e = document.getElementById("card5");
        var f = document.getElementById("card6");
        var g = document.getElementById("card7");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }
    }
</script>
<!--show blocThursday -->
<script>
    function showBloc4() {
        var a = document.getElementById("card4");
        var b = document.getElementById("card1");
        var c = document.getElementById("card2");
        var d = document.getElementById("card3");
        var e = document.getElementById("card5");
        var f = document.getElementById("card6");
        var g = document.getElementById("card7");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }
    }
</script>
<!--show blocFriday -->
<script>
    function showBloc5() {
        var a = document.getElementById("card5");
        var b = document.getElementById("card1");
        var c = document.getElementById("card2");
        var d = document.getElementById("card3");
        var e = document.getElementById("card4");
        var f = document.getElementById("card6");
        var g = document.getElementById("card7");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }
    }
</script>
<!--show blocSaturday -->
<script>
    function showBloc6() {
        var a = document.getElementById("card6");
        var b = document.getElementById("card1");
        var c = document.getElementById("card2");
        var d = document.getElementById("card3");
        var e = document.getElementById("card4");
        var f = document.getElementById("card5");
        var g = document.getElementById("card7");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }
    }
</script>
<!--show blocSunday -->
<script>
    function showBloc7() {
        var a = document.getElementById("card7");
        var b = document.getElementById("card1");
        var c = document.getElementById("card2");
        var d = document.getElementById("card3");
        var e = document.getElementById("card4");
        var f = document.getElementById("card5");
        var g = document.getElementById("card6");
        if (a.style.display === "none") {
            a.style.display = "block";
            b.style.display = "none";
            c.style.display = "none";
            d.style.display = "none";
            e.style.display = "none";
            f.style.display = "none";
            g.style.display = "none";
        } else {
            a.style.display = "none";
        }
    }
</script>

</body>
</html>
