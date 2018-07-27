package service;

import mapper.TopicOptionDao;
import org.springframework.stereotype.Service;
import pojo.TopicOption;
import pojo.Vote;

import javax.annotation.Resource;
import java.util.List;

/**
 * 题目选项service
 */
@Service
public class TopicOptionService {
    /**
     * 自动导入dao
     */
    @Resource
    private TopicOptionDao topicOptionDao;

}
