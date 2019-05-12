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
      <input type="hidden" name="action" value="enrcl"/>    
      <input type="hidden" name="cll" value="khhhh"/>
 
  
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Nom Classe:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3"  name="classe" >
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Annee:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="inputPassword3" placeholder="Annee" name="annee">
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" style="background-color: blue;color: white" onclick="redirection();" >Valider</button>
    </div>
  </div></div>
</form>
     <c:if test="${!empty cll || !empty claa || !empty vkk}">
    <div class="tab">
            <table class="table table-bordered">
 <tr>
                <th colspan="8" style="background-color: wheat"><center>Liste des Classes</center></th> 

            </tr>



            <tbody>
                <tr>
                    <th colspan="2" scope="col">Classe</th> 
                    <th colspan="2" scope="col">Annee</th>
                    <th colspan="2" scope="col">Modifier</th>
                    <th colspan="2" scope="col">Supprimer</th>

                </tr>
                <c:forEach var="lh" items="${listeClasse}">
                    <tr>
                        <th colspan="2" scope="col">${lh.nomClasse}</th> 
                        <th colspan="2" scope="col">${lh.annee}</th>
                      <th colspan="2" scope="col"><a href='controleur?action=modicl&idcl=${lh.idClasse}&cla=jj' ><img src='image/pen.png' width='15' /></a></th>

                        <th colspan="2" scope="col">
                            <c:url var="delUrlh" value="controleur">
                                <c:param name="action" value="supprimecl"/> 
                                <c:param name="idcls" value="${lh.idClasse}"/>
                                
                               
                                <c:param name="vk" value="vvv"/>
                              
                            </c:url>
                            <a href="javascript:confirmDelete('${delUrlh}')"><img src='image/del.png' width='15' /></a></th>
                    </tr>
                </c:forEach>
                 
                
            </tbody>  

        </table>
    </div></c:if>
           <div class="conntenu col-lg-5" >
               
                               <c:if test="${!empty cla || !empty khss}">
                                   <form name="formule" class="form-horizontal" action="controleur" methode="POST">
      <input type="hidden" name="action" value="modicla"/>    
      <input type="hidden" name="claa" value="khhhh"/>
       <input type="hidden" name="idcl1" value="${listClass.idClasse}"/>
 
  
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Nom Classe:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3"  name="classe" value="${listClass.nomClasse}">
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Annee:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="inputPassword3" placeholder="Annee" name="annee" value="${listClass.annee}">
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" style="background-color: blue;color: white" onclick="redirection();" >Modifier</button>
    </div>
  </div></div>
</form>

</c:if></div>


    </body>
</html>
