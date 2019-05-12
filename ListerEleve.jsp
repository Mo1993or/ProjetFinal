<%-- 
    Document   : StatCours
    Created on : 21 mars 2019, 18:14:59
    Author     : serignemor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="Accueil.jsp" %>
<!DOCTYPE html>

<html lang="en">
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
    <center>
        <div class="conntenu col-lg-5" >

                            <form name="formule" class="form-horizontal" action="controleur" methode="POST">
                                <input type="hidden" name="action" value="statcl"/>
                                <input type="hidden" name="enret" value="rsss"/>
                               
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Classe </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputPassword3"  name="classe" style="width: 150px">
                                    </div></div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Annee </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputPassword3"  name="annee" style="width: 150px">
                                    </div></div>
                                   <div class="form-group"> 
                                <div class="col-auto">
                                    <button type="submit" class="btn btn-primary mb-2" style="background-color: blue;color: white" >Rechercher</button>

                                </div></div>
                         </form>
        </div</center>
        <c:if test="${!empty enrett || !empty vkk}">
    <div class="tab">
            <table class="table table-bordered">
 <tr>
                <th colspan="8" style="background-color: wheat"><center>Liste des eleves inscrit</center></th> 

            </tr>



            <tbody>
                <tr>
                    <th colspan="1" scope="col">Prenom</th> 
                     <th colspan="1" scope="col">Nom</th> 
                      <th colspan="1" scope="col">Adresse</th> 
                       <th colspan="3" scope="col">Telephone</th> 
                       
                       <th colspan="1" scope="col">Date de Naissance</th> 
                        <th colspan="1" scope="col">Lieu de Naissance</th>
                    
                  
                   

                </tr>
                <c:forEach var="lh" items="${listerEleve}">
                    <tr>
                        <th colspan="1" scope="col">${lh.prenom}</th>
                        <th colspan="1" scope="col">${lh.nom}</th>
                         <th colspan="1" scope="col">${lh.adresse}</th> 
                          <th colspan="3" scope="col">${lh.telephone}</th>
                         
                       
                        <th colspan="1" scope="col">${lh.dateNaiss}</th>
                         <th colspan="1" scope="col">${lh.lieuNaiss}</th>
                  
                    </tr>
                </c:forEach>
                   
               
                
            </tbody>  

        </table>
    </div></c:if>
    </body>
</html>
