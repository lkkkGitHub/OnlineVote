package mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.TopicOption;
import tools.SpringMybatisTest;

import static org.junit.Assert.*;

/**
 * @author lk
 * 2018/7/27 15:25
 * @description:
 */
public class TopicOptionDaoTest extends SpringMybatisTest {

    @Autowired
    private TopicOptionDao topicOptionDao;
}