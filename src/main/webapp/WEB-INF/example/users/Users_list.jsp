<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
    <title>St.Benedict's Clinic</title>
    <sx:head />
</head>

<style>
    .records{
        display: flex;
        align-items: center;
        justify-content: center;
        max-width: 100vw;
    }
    h3{
        text-align: center;
    }
    .records tr{
        text-align: center;
        flex-wrap: wrap;
    }
    .search{
        display: flex;
        align-items: center;
        justify-content: center;
    }
</style>
<body>
    <s:include value="../partials/header.jsp" />
    <main>
        <s:form action="displayUser" class="search">
            <sx:autocompleter
                label="Search Name"
                list="listOfNames"
                name="nameInput"
                
            /> 
            <s:submit />
        </s:form>
        <h3>All User Records</h3>
        <s:iterator value="clients">
            <table class="records">
                <tr>
                    <th>Email</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Contact Info</th>
                    <th>User Type</th>
                    <th>User Status</th>
                </tr>
                <tr>
                    <td><s:property value="email" /></td>
                    <td><s:property value="firstName" /></td>
                    <td><s:property value="lastName" /></td>
                    <td><s:property value="contactInfo" /></td>
                    <td><s:property value="userRole" /></td>
                    <td><s:property value="userStatus" /></td>
                </tr>
            </table>
            
        </s:iterator>
    </main>
   
</body>
</html>
