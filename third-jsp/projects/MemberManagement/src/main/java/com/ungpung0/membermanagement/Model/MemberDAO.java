package com.ungpung0.membermanagement.Model;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {

    // Connection Method.
    private Connection getConnection() throws Exception {
        Class.forName("org.mariadb.jdbc.Driver");
        String dbUrl = "jdbc:mariadb://localhost:3306/study_db";
        String dbUser = "study_user";
        String dbPassword = "root";
        Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
        return connection;
    }

    // Select Method. (Overall)
    public ArrayList<MemberDTO> selectAll() {
        // Variable declaration.
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        ArrayList<MemberDTO> memberList = new ArrayList<>();

        try {
            connection = getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM users");
            // Add to list until no data exists.
            while (resultSet.next()) {
                MemberDTO member = new MemberDTO();
                member.setId(resultSet.getInt("user_id"));
                member.setName(resultSet.getString("user_name"));
                member.setPassword(resultSet.getString("user_pw"));
                member.setPhone(resultSet.getString("user_phone"));
                member.setEmail(resultSet.getString("user_email"));
                memberList.add(member);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resultSet, statement, connection.
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return memberList;
    }

    // Select Method. (One)
    public MemberDTO selectOne(String name) {
        // Variable declaration.
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        MemberDTO member = new MemberDTO();

        try {
            connection = getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(String.format("SELECT * FROM users WHERE user_id='%s'", name));
            // Add to Member obejct via resultSet.
            resultSet.next();
            member.setId(resultSet.getInt("user_id"));
            member.setName(resultSet.getString("user_name"));
            member.setPassword(resultSet.getString("user_pw"));
            member.setPhone(resultSet.getString("user_phone"));
            member.setEmail(resultSet.getString("user_email"));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resultSet, statement, connection.
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return member;
    }

    // Insert Method.
    public boolean insertOne(MemberDTO member) {
        // Variable declaration.
        Connection connection = null;
        Statement statement = null;
        boolean result = false;
        int condition = 0;

        try {
            String query = String.format("INSERT INTO users (user_name, user_pw, user_pw, user_phone, user_email) VALUES('%s', '%s', '%s', '%s', '%s')"
                    , member.getName(), member.getPassword(), member.getPhone(), member.getEmail());
            connection = getConnection();
            statement = connection.createStatement();
            condition = statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close statement, connection.
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            result = (condition != 0) ? true : false;
        }
        return result;
    }

    // Update Method.
    public boolean modifyOne(MemberDTO member) {
        // Variable declaration.
        Connection connection = null;
        Statement statement = null;
        boolean result = false;
        int condition = 0;

        try {
            String query = String.format("UPDATE users SET user_name='%s', user_pw='%s', user_phone='%s', user_email='%s' WHERE user_id=%d"
                    , member.getName(), member.getPassword(), member.getPhone(), member.getEmail(), member.getId());
            connection = getConnection();
            statement = connection.createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close statement, connection.
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            result = (condition != 0) ? true : false;
        }
        return result;
    }

    // Delete Method.
    public boolean deleteOne(String name) {
        // Variable declaration.
        Connection connection = null;
        Statement statement = null;
        boolean result = false;
        int condition = 0;

        try {
            String query = String.format("DELETE FROM users WHERE user_id=%d", name);
            connection = getConnection();
            statement = connection.createStatement();
            condition = statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close statement, connection.
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            result = (condition != 0) ? true : false;
        }
        return result;
    }

    // Login Validate Method.
    public boolean memberValidation(String name, String password) {
        // Variable declaration.
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        boolean condition = false;

        try {
            String query = String.format("SELECT * FROM users WHERE user_name='%s' AND user_pw='%s'", name, password);
            connection = getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            condition = resultSet.next(); // set 'true' if value exists.
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            // Close resultSet, statement, connection.
            if(resultSet != null) {
                try {
                    resultSet.close();
                }catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(statement != null) {
                try {
                    statement.close();
                }catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(connection != null) {
                try {
                    connection.close();
                }catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            return condition;
        }

    }

}
