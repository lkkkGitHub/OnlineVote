package pojo;




/**
 * 用户类
 */
public class User {
    /**
     * 用户id，主键，自增
     */
    private Integer userId;
    /**
     * 用户名
     */

    private String userName;
    /**
     * 用户性别
     */

    private String userSex;
    /**
     * 用户年龄
     */

    private Integer userAge;
    /**
     * 用户登陆账号
     */

    private String userLoginId;
    /**
     * 用户登陆密码
     */

    private String userLoginPwd;

    /**
     * 获取主键id
     *
     * @return 返回Long类型的用户主键id
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * 设置主键id值
     *
     * @param userId Long对象的主键id
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * 获取用户名
     *
     * @return 字符对象的用户名
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置用户名
     *
     * @param userName 字符串类型的用户名
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * 获取用户性别，‘m’表示男  ‘w’表示女
     *
     * @return 字符对象的用户性别
     */
    public String getUserSex() {
        return userSex;
    }

    /**
     * 设置性别
     *
     * @param userSex 字符类型的性别
     */
    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    /**
     * 获取用户年龄对象
     *
     * @return 返回Long对象的年龄
     */
    public Integer getUserAge() {
        return userAge;
    }

    /**
     * 设置年龄
     *
     * @param userAge 传入Long对象的年龄
     */
    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    /**
     * 获取用户登陆账号
     *
     * @return 字符串类型的用户账号
     */
    public String getUserLoginId() {
        return userLoginId;
    }

    /**
     * 设置用户登陆账号
     *
     * @param userLoginId 字符串类型的用户账号
     */
    public void setUserLoginId(String userLoginId) {
        this.userLoginId = userLoginId;
    }

    /**
     * 获取用户登陆密码
     *
     * @return 返回字符串类型的用户密码
     */
    public String getUserLoginPwd() {
        return userLoginPwd;
    }

    /**
     * 设置用户登陆密码
     *
     * @param userLoginPwd 字符串类型的用户密码
     */
    public void setUserLoginPwd(String userLoginPwd) {
        this.userLoginPwd = userLoginPwd;
    }

    @Override
    public String toString() {
        return "User{"
                + "userId=" + userId
                + ", userName='" + userName + '\''
                + ", userSex='" + userSex + '\''
                + ", userAge=" + userAge
                + ", userLoginId='" + userLoginId + '\''
                + ", userLoginPwd='" + userLoginPwd + '\''
                + '}';
    }
}
