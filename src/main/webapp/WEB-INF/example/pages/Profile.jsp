<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:property value="userName" /></title>
</head>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .container{
            margin-top: 40px;
            display: inline-block;
        }
        .row{
            display: flex;
        }
        .column{
            flex: 50%;
        }
        .revenue{
            flex-direction: column;
        }
        em{
            text-decoration: underline;
        }
        img{
            max-width: 240px;
            width: 100%;
            height: auto;
            display: flex;
            margin: auto;
            margin-top: 20px;
        }
        p{
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-weight: 300;
            text-align: center;
            font-size: 27px;
            line-height: 3.5rem;
        }
        .biography{
            display: flex;
            margin: auto;
            padding: 0 20px;
        }
    </style>
<body>

<s:set var="account" value="activeAccount" />
<div class="container row">
    <div class="profile column">
        <img src="https://th.bing.com/th/id/R.1c0973cfbfd25178d72b0b0a93206625?rik=z8y8Ftm1919VOw&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_299586.png&ehk=LBhfOw4KDHaDyrvk21Bac0nzxkAym5hWC8dHAAZ58oo%3d&risl=&pid=ImgRaw&r=0" alt="profile picture" >
        <div class="profile-body">
            <p><s:property value="#account.userName" /></p>
            <p><s:property value="#account.FirstName" /> <s:property value="#account.lastName" /></p>
            <p><s:property value="#account.birthday" /></p>
            <p><s:property value="#account.userType" /></p>
        </div>
    </div>
    <div class="biography column">
        <h3>Biography: </h3>
        <p><s:property value="#account.biography" /> </p>
    </div>
</div>

<s:if test='%{#account.userType == "admin"}' >
    <div class="row revenue">
        <h3>Company Revenue:</h3>
        <p><em>P10,000,000</em> Yearly</p>
        <p><em>P100,000</em> Monthly</p>
        <p><em>P33,000</em> Daily</p>
    </div>
</s:if>
</body>
</html>
