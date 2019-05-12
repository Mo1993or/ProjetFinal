<%-- 
    Document   : Accueiladmin
    Created on : 21 juin 2018, 17:44:19
    Author     : serignemor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="Accueil.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script language= "JavaScript">

            function confirmDelete(delUrlh)
            {
                if (confirm("voulez vous supprimer?"))
                {
                    document.location = delUrlh;
                }
            }
        </script>
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
      <input type="hidden" name="action" value="enreleve"/>    
      
 
  
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Prenom:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3"  name="prenom" >
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Nom:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="inputPassword3"  name="nom">
    </div>
  </div>
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Adresse:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="inputPassword3"  name="adresse">
    </div>
  </div>
      <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Telephone:</label>
                            </div>
                            <div class="form-inline">

                                <div class="form-group">
                                    <select  name="telephone1" style="margin: 10px">
                                        <option value="77">77<br/></option>
                                    <option value="78">78<br/></option>
                                        <option value="76">76<br/></option>
                                        <option value="70">70<br/></option>
                                        <option value="33">33<br/></option>
                                        <option value="33">30<br/></option>
                                    </select></div>
                                <input type="text"  placeholder="Telephone" name="telephone2"  required onkeypress='return event.charCode >= 48 && event.charCode <= 57' maxlength="7">
                            </div>

      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Date de Naissance:</label>
    <div class="col-sm-10">
        <input type="date" class="form-control" id="inputPassword3"  name="date">
    </div>
  </div>
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Lieu de Naissance:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="inputPassword3"  name="lieu">
    </div>
  </div>
   <div class="form-group">
                                <label for="exampleFormControlSelect1">  Classe:</label>


                                <select class="form-control" id="exampleFormControlSelect1" name="classe" style="width: 82%">
                                    <option value=""><br/></option>
                                     <c:forEach var="ls" items="${listeClasse}"> 
                                    <option value="${ls.idClasse}">${ls.nomClasse}<br/></option>
                                     </c:forEach>

                                </select></div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" style="background-color: blue;color: white" onclick="redirection();" >Valider</button>
    </div>
  </div></div>
</form>



    </body>
</html>
