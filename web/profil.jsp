<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 18/07/18
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <script type="text/javascript" src="profil.js"></script>


<br><br>
<div class="container">
    <div class="well col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
        <div class="row user-row">
            <div class="col-xs-3 col-sm-2 col-md-1 col-lg-1">
                <img class="img-circle"
                     src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
                     alt="User Pic">
            </div>
            <div class="col-xs-8 col-sm-9 col-md-10 col-lg-10">
                <strong class="profil">${requestScope.name}</strong><br>
                <span class="text-muted">Entrainements fait: 1</span>
            </div>
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 dropdown-user" data-for=".cyruxx">
                <i class="glyphicon glyphicon-chevron-down text-muted"></i>
            </div>
        </div>
        <div class="row user-infos cyruxx">
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Information</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
                                <img class="img-circle"
                                     src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
                                     alt="User Pic">
                            </div>
                            <div class="col-xs-2 col-sm-2 hidden-md hidden-lg">
                                <img class="img-circle"
                                     src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
                                     alt="User Pic">
                            </div>

                            <div class=" col-md-9 col-lg-9">
                                <strong class="profil">${requestScope.name}</strong><br>
                                <table class="table table-user-information">
                                    <tbody>
                                    <tr>
                                        <td class="profil">Poids</td>
                                        <td class="profil">90 kg</td>
                                    </tr>
                                    <tr>
                                        <td class="profil">Taille</td>
                                        <td class="profil">190 cm</td>
                                    </tr>
                                    <tr>
                                        <td class="profil">Genre</td>
                                        <td class="profil">Homme</td>
                                    </tr>
                                    <tr>
                                        <td class="profil">Entrainements faits</td>
                                        <td class="profil">1</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <h3>Ajouter un poids: </h3>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form action="">
                                <label for="date">Date: </label>
                                <input type="date" id="date"><br>
                                <label for="poids">Poids: </label>
                                <input type="text" id="poids"><br><br><br>
                                <input type="submit" value="Submit">
                            </form>
                        </div>
                        <div class="panel-footer">

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


