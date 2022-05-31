package v2project.example.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import v2project.example.objects.Client;

public class SigninV2 extends ActionSupport{

    private String error = "Random";
    private Client accountBean;
    private Client activeAccount;

 

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
        PreparedStatement preparedStatement = null;

        try {
            String URL = "jdbc:mysql://localhost:3306/sbclinicdb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "password123");
           
            if(connection != null){
                
                String usersql = "SELECT * FROM users WHERE email_add = '"+accountBean.getEmail()+"' AND pass_word = '"+accountBean.getPassword()+"'";
                System.out.println(accountBean.getEmail());
                System.out.println(accountBean.getPassword());
                preparedStatement = connection.prepareStatement(usersql);
                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();
                System.out.println(rs);
               
                if(rs.next()){
                    activeAccount = new Client();
                    activeAccount.setEmail(rs.getString(2));
                    activeAccount.setFirstName(rs.getString(4));
                    activeAccount.setLastName(rs.getString(5));
                    activeAccount.setContactInfo(rs.getString(6));
                    activeAccount.setUserRole(rs.getString(7));
    
                }
                System.out.println(activeAccount.getEmail());
                return true;

            } else {
                error = "Connection DB Failed";
                System.out.println(error);
                return false;
            }

        } catch (Exception e) {
            //TODO: handle exception
            setError(e.toString());
            System.out.println(e.toString());
            return false;
        } finally {
            if(preparedStatement != null) try { preparedStatement.close();} catch(SQLException ignore) {}
            if(connection != null) try { connection.close();} catch(SQLException ignore) {} 
        }
        
    }
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
    
    public Client getActiveAccount() {
        return activeAccount;
    }

    public void setActiveAccount(Client activeAccount) {
        this.activeAccount = activeAccount;
    }
}
