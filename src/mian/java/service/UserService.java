package service;

import mapper.UserDao;
import org.springframework.stereotype.Service;
import pojo.User;

import javax.annotation.Resource;

/**
 * service 连接dao接口和controller类，完成信息封装以及逻辑判断
 */
@Service
public class UserService {

    /**
     * 自动导入userDao接口对象
     */
    @Resource
    private UserDao userDao;

    /**
     * 登陆service，传入用户的登陆账号，密码；
     * 通过传入账号给dao接口查询信息，查询到了账号信息及返回一个account对象；未查询到信息返回一个空，信息为空时便返回一个空给controller
     * 当查询到的信息
     *
     * @param userLoginId  登陆账号，传入dao接口中查询信息
     * @param userLoginPwd 登陆密码，与查询到的信息进行匹配
     * @param message      带回给controller信息的反馈；
     *                     "0"即表示账号错误查询不到信息；"1"即表示密码错误;"2"即表示账号及密码正确
     * @return 账号正确时：密码正确即返回给controller正确的信息，密码错误即返回一个空；账号错误，即返回空
     */
    public User login(String userLoginId, String userLoginPwd, StringBuffer message) {
        User user = userDao.login(userLoginId);
        if (user == null) {
            message.append("0");
            return null;
        } else {
            if (userLoginPwd.equals(user.getUserLoginPwd())) {
                message.append("2");
                return user;
            } else {
                message.append("1");
                return null;
            }
        }
    }

    /**
     * 根据注册页面，用户输的id进行数据库查询，判断该账号是否被注册；
     * 根据是否查询到信息返回不同的值——查询到信息返回 1，没有查询到信息返回 0
     *
     * @param userLoginId 字符串类型用户账号id
     * @return 根据查询信息返回不同的值
     */
    public int registerConfirm(String userLoginId) {
        User user = userDao.login(userLoginId);
        if (user == null) {
            return 0;
        } else {
            return 1;
        }
    }

    public int register(User user) {
        return userDao.register(user);
    }
}
