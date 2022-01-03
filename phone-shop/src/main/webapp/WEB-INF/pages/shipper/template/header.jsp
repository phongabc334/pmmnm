<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="<c:url value='/css/admin.css' />" />
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>

  <nav class="navbar navbar-fixed-top">
    <div class="">
      <a class="" href="<c:url value='/shipper'/>" >
      <div class="navbar-header" style="text-align:center">
        <img width="100" height="50" src="/phoneshop/img/logo.jpg" class="header_logo header-logo" alt="...">
      </div></a>
      <div class="collapse navbar-collapse" style="border-bottom: 1px solid #c9c9c9;background:white;">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="<c:url value='/shipper/profile' />">
              <span class="glyphicon glyphicon-user">&nbsp;</span>Xin chào: ${loggedInUser.hoTen }</a>
          </li>
          <li>
            <a href="<c:url value='/logout' />"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>