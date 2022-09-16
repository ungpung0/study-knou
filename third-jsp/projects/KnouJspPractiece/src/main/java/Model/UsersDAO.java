package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UsersDAO {

    // DB Connection Method.
    private Connection getConnection() throws Exception {
        Class.forName("org.mariadb.jdbc.Driver");
        String dbUrl = "jdbc:mariadb://localhost:3306/study_db";
        String dbUser = "study_user";
        String dbPassword = "root";
        Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
        return connection;
    }

    // Select all Method.
    public ArrayList<UsersDTO> selectAll() {
        ArrayList<UsersDTO> usersList = new ArrayList<>();
        try(
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users");
        ){
            while(resultSet.next()) {
                UsersDTO user = new UsersDTO();
                user.setUserId(resultSet.getInt("user_id"));
                user.setUserName(resultSet.getString("user_name"));
                user.setUserPassword(resultSet.getString("user_pw"));
                user.setUserTel(resultSet.getString("user_tel"));
                usersList.add(user);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return usersList;
    }

    // Select by id Method.
    public UsersDTO selectOne(int id) {
        UsersDTO user = new UsersDTO();
        try(
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(String.format("SELECT * FROM users WHERE user_id=%s", id));
        ){
            resultSet.next();
            user.setUserId(resultSet.getInt("user_id"));
            user.setUserName(resultSet.getString("user_name"));
            user.setUserPassword(resultSet.getString("user_pw"));
            user.setUserTel(resultSet.getString("user_tel"));
        }catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    // Insert data Method.
    public void insertOne(UsersDTO user) {
        try(
                Connection connection = getConnection();
                Statement statement = connection.createStatement();
        ){
            String query = String.format("INSERT INTO users (user_name, user_pw, user_tel) VALUES ('%s', '%s', '%s')"
                    , user.getUserName(), user.getUserPassword(), user.getUserTel());
            statement.executeUpdate(query);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Update by id Method.
    public void updateOne(UsersDTO user) {
        try(
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
        ){
            String query = String.format("UPDATE users SET user_name='%s', user_pw='%s', user_tel='%s' WHERE user_id=%d"
                    , user.getUserName(), user.getUserPassword(), user.getUserTel(), user.getUserId());
            statement.executeUpdate(query);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Delete by id Method.
    public void deleteOne(int id) {
        try(
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
        ){
            String query = String.format("DELETE FROM users WHERE user_id='%s'", id);
            statement.executeUpdate(query);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

}
