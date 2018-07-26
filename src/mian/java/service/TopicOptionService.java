package service;

import mapper.TopicOptionDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

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
