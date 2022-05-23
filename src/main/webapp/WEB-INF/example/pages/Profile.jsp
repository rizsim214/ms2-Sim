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
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        .container{
            margin-top: 40px;
            display: inline-block;
            border: 1px solid gray;
            padding: 1rem 0;
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
            
            text-transform: capitalize;
            text-align: center;
            font-size: 24px;
            line-height: 2rem;
        }
        .biography{
            display: flex;
            margin: auto;
            padding: 0 20px;
            flex-direction: column;
        }
        .logout{
            display: flex;
            margin: 1rem;
            justify-content: flex-end;
            font-size: 20px;
            letter-spacing: 0.1rem;
            text-decoration: none;

            
        }
        .profile-body span{
            display: flex;
            justify-content: center;
            font-weight: 500;
            font-size: 18px;
            margin-top: 10px;
        }
    </style>
<body>

<s:set var="account" value="activeAccount" />
<s:a href="/index.jsp" class="logout">Logout</s:a>
<div class="container row">
    
    <div class="profile column">
        <img src="https://th.bing.com/th/id/R.1c0973cfbfd25178d72b0b0a93206625?rik=z8y8Ftm1919VOw&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_299586.png&ehk=LBhfOw4KDHaDyrvk21Bac0nzxkAym5hWC8dHAAZ58oo%3d&risl=&pid=ImgRaw&r=0" alt="profile picture" >
        <div class="profile-body">
            <span><s:property value="#account.email" /></span>
            
          
        </div>
    </div>
    <div class="biography column">
        <h2>Biography: </h2>
        <h4>Fullname:</h4>
        <p><s:property value="#account.firstName" /> <s:property value="#account.lastName" /></p>
        <h4>Contact Information:</h4>
        <p><s:property value="#account.contactInfo" /></p>
        <h4>User Type:</h4>
        <p><s:property value="#account.userRole" /></p>
    </div>
</div>

<s:if test='%{#account.userRole == "patient"}' >
    <div class="row revenue">
        <h3>Expenses:</h3>
        <p><em>P300.00</em> Ultrasound</p>
        <p><em>P200.00</em> Urinalisys</p>
        <p><em>P200.00</em> Check-Up</p>
    </div>
</s:if>
</body>
</html>
