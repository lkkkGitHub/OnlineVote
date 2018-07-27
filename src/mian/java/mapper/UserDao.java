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
     * 注册，插入用户信息的，密码账号信息
     * @param user 封装了账号密码信息
     * @return 返回影响的行数
     */
    int register(User user);

    /**
     * 根据用户id查询用户信息，只返回用户个人信息，账号密码等不返回
     * @param userId 用户id
     * @return 封装了信息的user
     */
    User selectUserByUserId(Integer userId);
}
