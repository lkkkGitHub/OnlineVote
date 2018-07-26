package service;

import mapper.TopicDao;
import org.springframework.stereotype.Service;
import pojo.Topic;

import javax.annotation.Resource;

/**
 * 题目service管理
 */
@Service
public class TopicService {
    /**
     * 自动导入dao
     */
    @Resource
    private TopicDao topicDao;

    /**
     * 插入题目信息，将自增主键id返回导Topic类中
     *
     * @param pojo 封装了题目信息的实体类对象
     * @return 影响行数，以及返回导实体类中的自增主键id
     */
    public int insert(Topic pojo) {
        return topicDao.insert(pojo);
    }

//    public int insertSelective(Topic pojo){
//        return topicDao.insertSelective(pojo);
//    }
//
//    public int insertList(List<Topic> pojos){
//        return topicDao.insertList(pojos);
//    }
//
//    public int update(Topic pojo){
//        return topicDao.update(pojo);
//    }
}
