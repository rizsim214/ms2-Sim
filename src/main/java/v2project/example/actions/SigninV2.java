package v2project.example.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import v2project.example.objects.Client;

public class SigninV2 extends ActionSupport{
    private String error = "Random";
    private Client accountBean;

    public Client getAccountBean() {
        return accountBean;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setAccountBean(Client accountBean) {
        this.accountBean = accountBean;
    }   
    
    public String execute() throws Exception{
        
        accountBean = getAccountBean();
        String returnVal;

        if(accountBean == null){
            returnVal = "input";
        }else{
            if(fetchToDB()){
                returnVal = "success";
            }else{
                returnVal = "error";
            }
        }
        System.out.println(returnVal);
        return returnVal;
    }

    public boolean fetchToDB() throws Exception{
        Connection connection = null;
        Statement statement = null;

        try {
            String URL = "jdbc:mysql://localhost:3306/sbclinicdb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "password123");

            if(connection != null){
                statement = connection.createStatement();
                String usersql = "SELECT * FROM users WHERE email_add = '"+accountBean.getEmail()+"' AND pass_word = '"+accountBean.getPassword()+"'";
                statement.executeQuery(usersql);
    
                return true;

            } else {
                error = "Connection DB Failed";

                return false;
            }

        } catch (Exception e) {
            //TODO: handle exception
            setError(e.toString());
            return false;
        } finally {
            if(statement != null) try { statement.close();} catch(SQLException ignore) {}
            if(connection != null) try { connection.close();} catch(SQLException ignore) {} 
        }
        
    }
}
