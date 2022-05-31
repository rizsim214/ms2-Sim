<%@ page contentType = "text/html; charset = UTF-8" %>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<style>
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    }
    /* HEADER STYLES */
    header{
        background: rgba(9, 43, 233, 0.712);
        color: white;
        padding: 60px 80px;
    }
    nav{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .brand{
        letter-spacing: 0.2rem;
        font-weight: 500;
        font-size: 25px;
        color: white;
        text-decoration: none;
    }
    .nav-list{
        display: flex;
        align-items: center;
        margin-right: 20px;
    }
    .nav-link{
        margin: 0 30px;
        list-style: none;
    }
    .links{
        text-decoration: none;
        color: white;
        font-size: 1rem;
        padding: 0 20px
    }
    .links:hover{
        opacity: 0.6;
        border-bottom: 2px solid white;
    }
    .signin{
        border: 1px solid white;
        border-radius: 1rem;
        font-weight: 500;
        transition: 0.3s ease ease-in-out;
        text-transform: uppercase;
        padding: 10px 20px;
    }
    .signin:hover{
        color: black;
        background: rgba(255, 255, 255, 0.692);
    }
    /* MAIN STYLES */
    main{
        margin: 10px 0 
    }
    p{
        font-size: 36px;
        text-transform: capitalize;
        font-weight: 300;
    }
</style>
<header>
    <nav>
        <s:url var="Home" value="/index.jsp" />
            <s:a href="%{Home}" class="brand">St.Benedict's Clinic</s:a>
        <ul class="nav-list">
            <li class="nav-link">
                <s:url var="About" action="example/About" />
                    <s:a href="%{About}" class="links">About</s:a>
            </li>
            <li class="nav-list">
                <s:url var="Services" action="example/Services" />   
                    <s:a href="%{Services}" class="links">Services</s:a> 
            </li>
            <li class="nav-list">
                <s:url var="Contact" action="example/Contact" />   
                    <s:a href="%{Contact}" class="links">Contact Us</s:a> 
            </li>
            <li class="nav-list">
                <s:url var="Signin" action="example/SigninV2" />
                    <s:a href="%{Signin}" class="links">Sign In</s:a> 
            </li>
            <li class="nav-list">
                <s:url var="Signup" action="example/Signup" />
                    <s:a href="%{Signup}" class="links signin">Sign Up</s:a> 
            </li>
        </ul>
    </nav>  
</header>