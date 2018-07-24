package mapper;

import pojo.User;

/**
 * 用户表dao  查询用户信息，登陆，注册等功能
 */
public interface UserDao {
    /**
     * 根据用户账号，查询用户信息，进行登陆验证
     * @param userLoginId 字符类型用户账号
     * @return 返回一个封装了用户信息的用户类
     */
    User login(String userLoginId);

    /**
     *
     * @param user
     * @return
     */
    int register(User user);
}
