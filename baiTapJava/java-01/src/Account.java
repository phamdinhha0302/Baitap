import java.time.LocalDateTime;

public class Account {
    public int id;
    String userName;
    //String createDate;
    LocalDateTime createDate;
    int accountID;
    String email;
    String username;
    String fullName;
    String firstName;
    String lastName;
    int position;
    int departmentID;
    int positionID;

     Account() {
    }
    Account(int id, String email, String username, String firstName, String lastName) {
        this.accountID = id;
        this.email = email;
        this.username = username;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = firstName + " " + lastName;
        this.position = positionID;
    }
    Account(int id, String email, String username, String firstName, String lastName, String position) {
        this.accountID = id;
        this.email = email;
        this.username = username;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = firstName + " " + lastName;
        this.position = positionID;
        this.createDate = LocalDateTime.now();
    }
    Account(int id, String email, String username, String firstName, String lastName, String position, LocalDateTime createDate) {
        this.accountID = id;
        this.email = email;
        this.username = username;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = firstName + " " + lastName;
        this.position = positionID;
        this.createDate = createDate;
    }

}
