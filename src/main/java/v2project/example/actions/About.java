package v2project.example.actions;

import v2project.example.ExampleSupport;

public class About extends ExampleSupport {
    public String execute() {
        
        int index = randomNumber();
        setInitialMessage(randomMessage[index]);

        return SUCCESS;
    }

    private String initialMessage = "Hello! This is the Initial Message in About.";
    private String[] randomMessage = {"This is sample message" , "That is Randomly Generated", "To test out the dynamic pages", "If it really works", "Or im just trippin", "i wish i was a rock, THE ROCK!"} ;

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
