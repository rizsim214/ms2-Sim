<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
   <title>St.Benedict's Clinic</title>
</head>
<style>
    .texts{
        text-align: center;
        text-transform: uppercase;
        font-size: 18px;
        font-weight: 500;
    }
    .texts h3{
        color: red;
    }
    .errorMessage{
           color: red;
       }
</style>
<body>
    <s:include value="../partials/header.jsp" />
    <main>
        <div class="texts">
            <s:if test='%{userName != null || passWord != null}' >
                <h3>Invalid Username or Password! Please Try Again</h3>
            </s:if>
            <!-- <h5><s:property value="userName" /></h5>
            <h5><s:property value="passWord" /></h5> -->
        </div>
        <!-- <s:include value="../partials/form.jsp" /> -->
        <s:include value="../partials/formV2.jsp" />
    </main>
    <footer>
        <span>This is a Footer</span>
    </footer>
</body>
</html>
