<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 13/07/18
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programme</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/programme.js"></script>
    <link rel="stylesheet" type="text/css" href="style_prog.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="banner">
        <a class="banner_btn"><p>Mon objectif :</p></a>
        </div>
    </div>

    <div id="calendar">
        <p id="calendar-day"></p>
        <p id="calendar-date"></p>
        <p id="calendar-month-year"></p>
    </div>

    <div id="calendar2">
        <p id="calendar-day2"></p>
        <p id="calendar-date2"></p>
        <p id="calendar-month-year2"></p>
    </div>

    <div id="calendar3">
        <p id="calendar-day3"></p>
        <p id="calendar-date3"></p>
        <p id="calendar-month-year3"></p>
    </div>

    <div id="calendar4">
        <p id="calendar-day4"></p>
        <p id="calendar-date4"></p>
        <p id="calendar-month-year4"></p>
    </div>

    <div id="calendar5">
        <p id="calendar-day5"></p>
        <p id="calendar-date5"></p>
        <p id="calendar-month-year5"></p>
    </div>

    <div id="calendar6">
        <p id="calendar-day6"></p>
        <p id="calendar-date6"></p>
        <p id="calendar-month-year6"></p>
    </div>

    <div id="calendar7">
        <p id="calendar-day7"></p>
        <p id="calendar-date7"></p>
        <p id="calendar-month-year7"></p>
    </div>

    <div id="calendar8">
        <p id="calendar-day8"></p>
        <p id="calendar-date8"></p>
        <p id="calendar-month-year8"></p>
    </div>

    <div class="card">
        <img src="https://png.icons8.com/nolan/1600/weightlift.png" alt="Avatar" style="width: 100%">


            <div id="carouselExampleIndicators" class="carousel slide" data-interval="false" data-ride="carousel">

                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container">
                            <h3>Groupe musculaire 1</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <h3>Groupe musculaire 2</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <h3>Groupe musculaire 3</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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

        <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Muscles</th>
                    <th scope="col">Excercices</th>
                    <th scope="col">Séries</th>
                    <th scope="col">Répétitions</th>
                    <th scope="col">Repos</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">muscle 1</th>
                    <td>exercice 1</td>
                    <td>série 1</td>
                    <td>répétition 1</td>
                    <td>1 s</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
