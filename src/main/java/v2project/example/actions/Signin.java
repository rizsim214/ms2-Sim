package v2project.example.actions;

import v2project.example.ExampleSupport;
import v2project.example.objects.Account;

public class Signin extends ExampleSupport {

    private String userName;
    private String passWord;
    private Account activeAccount;
    private String errorMessage;
    public String execute() throws Exception {

        String returnValue;
        Account[] accounts = { 
            new Account("rizsim123", "password1", "riz", "sim", "30-12-1996", "admin", "6 ft tall, likes basketball and online games, favorite food is fried chicken"),
            new Account("user2", "password2", "jenny", "lind", "12-10-1998", "regular", "5'8 ft tall, slim and sexy, likes hiking and watching netflix, favorite food is anything pasta"),
            new Account("user3", "password3", "chito", "meranda", "08-06-1986", "regular", "5'7 ft tall, UP graduate, lead singer for Parokya ni Edgar, favorite drink is tanduay & beer")   
        };
        Account result = validateUser(accounts);
        setActiveAccount(result);
        if(result == null){
            returnValue = SUCCESS;
        }else{
            returnValue = "validated";
        }
        return returnValue;
    }
    private Account validateUser(Account[] accs){
        byte x = 0;
        Account temp = null;
       while(x < accs.length){
            if(accs[x].getUsername().equals(userName) && accs[x].getPassword().equals(passWord)){
                temp = accs[x];
            }
            x++;
       }
        return temp;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassWord() {
        return passWord;
    }
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }
    public Account getActiveAccount() {
        return activeAccount;
    }
    public void setActiveAccount(Account activeAccount) {
        this.activeAccount = activeAccount;
    }
    public String getErrorMessage() {
        return errorMessage;
    }
    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
    

}
