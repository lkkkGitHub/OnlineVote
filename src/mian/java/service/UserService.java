package service;

import mapper.UserDao;
import org.springframework.stereotype.Service;

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

}
