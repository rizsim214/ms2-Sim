<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
    <title>St.Benedict's Clinic</title>
</head>

<style>
    h1{
        text-transform: uppercase;
    }
    main{
        padding: 1rem;
    }
    main h3{
        line-height: 1.75rem;
    }
</style>
<body>
    <s:include value="../partials/header.jsp" />
    <s:set var="account" value="searchResult" />
    <main>
        
        <h3>Fullname: <s:property value="#account.firstName"/> <s:property value="#account.lastName"/></h3>
        <h3>Mobile Information: <s:property value="#account.contactInfo"/></h3>
        <h3>User Type: <s:property value="#account.userRole"/></h3>
        <h3>User Status: <s:property value="#account.userStatus"/></h3>
    </main>
   
</body>
</html>
