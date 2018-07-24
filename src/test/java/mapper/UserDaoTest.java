package mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.User;
import tools.SpringMybatisTest;

import static org.junit.Assert.*;

/**
 * @author lk
 * 2018/7/24 20:05
 * @description:
 */
public class UserDaoTest extends SpringMybatisTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void register() {
        User user = new User();
        user.setUserLoginId("1234");
        user.setUserLoginPwd("1234");
        userDao.register(user);
    }
}