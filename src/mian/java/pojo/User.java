package pojo;

/**
 * 用户类
 */
public class User {

    private Long userId;
    private String userName;
    private String userSex;
    private Long userAge;
    private String userLoginId;
    private String userLoginPwd;


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }


    public Long getUserAge() {
        return userAge;
    }

    public void setUserAge(Long userAge) {
        this.userAge = userAge;
    }


    public String getUserLoginId() {
        return userLoginId;
    }

    public void setUserLoginId(String userLoginId) {
        this.userLoginId = userLoginId;
    }


    public String getUserLoginPwd() {
        return userLoginPwd;
    }

    public void setUserLoginPwd(String userLoginPwd) {
        this.userLoginPwd = userLoginPwd;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userSex='" + userSex + '\'' +
                ", userAge=" + userAge +
                ", userLoginId='" + userLoginId + '\'' +
                ", userLoginPwd='" + userLoginPwd + '\'' +
                '}';
    }
}
