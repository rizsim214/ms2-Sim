package v2project.example.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// import v2project.example.ExampleSupport;
import v2project.example.objects.Client;

public class Signup extends ActionSupport{

    private static final long serialVersionUID = 1L;
    private String error = "random";
    private Client clientBean;

    public String execute() throws Exception{
       
        clientBean = getClientBean();
        String returnVal;
       
            if(clientBean == null){
                returnVal = "input";
            }else{
                if(saveToDB()){
                   returnVal = "success";
                }else{
                    returnVal = "error";
                }
            }
        
        return returnVal;
    }
    
    public boolean saveToDB() throws Exception{
        Connection connection = null;
        Statement statement = null;
        
        try {
            // Connection and Insertion Statements
            String URL = "jdbc:mysql://localhost:3306/sbclinicdb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "password123");
            
            if(connection != null){
                statement = connection.createStatement();
                String usersql = "INSERT INTO users(email_add, pass_word, first_name, last_name, contact_info) VALUES('"+clientBean.getEmail()+"', '"+clientBean.getPassword()+"','"+clientBean.getFirstName()+"','"+clientBean.getLastName()+"','"+clientBean.getContactInfo()+"')";
                statement.executeUpdate(usersql);
    
                return true;

            } else {
                error = "Connection DB Failed";
                return false;
            }
        } catch (Exception e) {
            // Generate Exception Message
            error = e.toString();
            return false;
        } finally {
            if(statement != null) try { statement.close();} catch(SQLException ignore) {}
            if(connection != null) try { connection.close();} catch(SQLException ignore) {} 
        }


    }

    public String getError() {
        return error;
    }
  
    public Client getClientBean() {
        return clientBean;
    }
    public void setClientBean(Client clientBean) {
        this.clientBean = clientBean;
    }

    

}
