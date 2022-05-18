package v2project.example.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import v2project.example.ExampleSupport;
import v2project.example.objects.Client;

public class UserList extends ExampleSupport {

    ArrayList<Client> clients = new ArrayList<Client>();

    public ArrayList<Client> getClients() {
        return clients;
    }

    public void setClients(ArrayList<Client> clients) {
        this.clients = clients;
    }
    
    public String execute() throws Exception{
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Connection and Insertion Statements
            String URL = "jdbc:mysql://localhost:3306/sbclinicdb?useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, "root", "password123");
            
            if(connection != null){
                String sql = "SELECT * FROM users";
                preparedStatement = connection.prepareStatement(sql);
                ResultSet rs = preparedStatement.executeQuery();
    
                while(rs.next()){
                    Client client = new Client();

                    client.setEmail(rs.getString(2));
                    client.setFirstName(rs.getString(4));
                    client.setLastName(rs.getString(5));
                    client.setContactInfo(rs.getString(6));
                    client.setUserRole(rs.getString(7));
                    client.setUserStatus(rs.getString(8));
                    clients.add(client);
                }
                
            } 
        } catch (Exception e) {
            // Generate Exception Message
           
        } finally {
            if(preparedStatement != null) try { preparedStatement.close();} catch(SQLException ignore) {}
            if(connection != null) try { connection.close();} catch(SQLException ignore) {} 
        }

        return SUCCESS;
    }
}
