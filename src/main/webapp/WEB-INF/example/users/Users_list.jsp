<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>St.Benedict's Clinic</title>
</head>

<style>
    .records{
        display: flex;
        width: 80%;
        justify-content: space-around;
        align-items: center;
        margin: auto;
        padding: 10px 5px;
    }
    h3{
        font-weight: 500;
        font-size: 2rem;
        text-align: center;
    }
    .records p{
        font-size: 20px;
        justify-content: space-between;
        text-transform: lowercase;
    }
</style>
<body>
    <s:include value="../partials/header.jsp" />
    <main>
        <h3>All User Records</h3>
        <s:iterator value="clients">
            <fieldset class="records">
                <p><s:property value="email" /></p>
                <p><s:property value="firstName" /></p>
                <p><s:property value="lastName" /></p>
                <p><s:property value="contactInfo" /></p>
                <p><s:property value="userRole" /></p>
                <p><s:property value="userStatus" /></p>
            </fieldset>
        </s:iterator>
    </main>
   
</body>
</html>
