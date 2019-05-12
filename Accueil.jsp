<%-- 
    Document   : Accueiladmin
    Created on : 21 juin 2018, 17:44:19
    Author     : serignemor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ProjetFinal</title>

        <!-- Bootstrap -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">


        <link href="test.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="Nom">
                    <h1 style="font-family: 'Times new Roman'">Lycée Moderne de Dakar(LMD)</h1>
                    <div class="bt">

                        
                        <div class="inf">
                                <c:out value="${na.prenom}"/>
                                <c:out value="${na.nom}"/>
                            </div>

                    </div>





            <div class="linkk">
            <nav class="nav nav-pills nav-justified">
                <a class="nav-item nav-link" href="controleur?action=ajcl" style="text-align: center;width: 240px">Ajouter Classe</a>
                <a class="nav-item nav-link" href="controleur?action=inscri" style="text-align: center;width: 240px">Inscrire Eleve</a>
                    <a class="nav-item nav-link" href="controleur?action=listel" style="text-align: center;width: 240px">Lister Eleves</a>
            </nav>
            </div>


        </div>
    </body>
</html>
