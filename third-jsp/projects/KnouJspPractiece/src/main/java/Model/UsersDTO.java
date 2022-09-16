package Model;

public class UsersDTO {

    // Data.
    private int userId;
    private String userName;
    private String userPassword;
    private String userTel;

    // Getter Methods.
    public int getUserId() {
        return userId;
    }
    public String getUserName() {
        return userName;
    }
    public String getUserPassword() {
        return userPassword;
    }
    public String getUserTel() {
        return userTel;
    }

    // Setter Methods.
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }
    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }
}
