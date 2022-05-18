package v2project.example.actions;

import v2project.example.ExampleSupport;

public class Services extends ExampleSupport{
    public String execute() {
        int index = randomNumber();
        setInitialMessage(randomMessage[index]);

        return SUCCESS;
    }

    private String initialMessage = "Hello! This is the Initial Message in About.";
    private String[] randomMessage = {"This is Another Sample Message" , "From Services Page", "But this time Im just Trippin", "If it really works, Great!", "Or im just trippin", "im out of ideas!"} ;

    private int randomNumber() {
        double num1;
        num1 = Math.floor( Math.random() * 6 );
        
        return (int) num1;
    }

    public String getInitialMessage() {
        return initialMessage;
    }

    public void setInitialMessage(String initialMessage) {
        this.initialMessage = initialMessage;
    }
}
