<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ahmed
  Date: 27/04/2016
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../../favicon.ico">

  <title>Justified Nav Template for Bootstrap</title>

  <!-- Bootstrap core CSS -->
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">


</head>

<body>

<div class="container">

  <!-- The justified navigation menu is meant for single line per list item.
       Multiple lines will require custom code not provided by Bootstrap. -->
  <div class="masthead">
    <h3 class="text-muted">Project name</h3>
    <nav>
      <ul class="nav nav-justified">
        <li class="active"><a href="<c:url value="/" /> ">Home</a></li>
        <li><a href="<c:url value="/productlist"/> ">Products</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Downloads</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </div>
</div>
