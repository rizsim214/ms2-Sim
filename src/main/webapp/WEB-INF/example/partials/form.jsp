<%@ taglib prefix="s" uri="/struts-tags" %>
<style>
    .container{
            height: 80vh;   
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
       }
       .form{
           display: flex;
           flex-direction: column;
           max-width: 450px;
           width: 100%;
           padding: 3rem 2rem;
           border: 1px solid blue;
           border-radius: 1rem;
       }
       h3{
           text-align: center;
           font-weight: 500;
           text-transform: uppercase;
           font-size: 36px;
           font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
           margin: 5px;
       }
       .form-control{
           padding: 0.5rem 1rem;
           font-size: 20px;
           border-radius: 0.5rem;
           outline: none;
           border: 1px solid blue;
           margin-bottom: 10px;
       }
       .btn-submit{
           padding: 1rem 6rem;
           border: none;
           background-color: rgba(0, 0, 255, 0.7);
           color: white;
           border-radius: 0.5rem;
           cursor: pointer;
           transition: 0.3s ease-in-out;
       }
       .btn-submit:hover{
        background-color: rgba(0, 0, 255, 1);
       }
</style>

<div class="container">
    <s:form action="example/Signin" class="form">
        <h3>Sign in</h3>
        <s:textfield name="userName" placeholder="Username" class="form-control" />
        <s:password name="passWord" class="form-control" placeholder="Password" />
        <s:submit value="Submit" class="btn-submit" />
    </s:form>
   
</div>

