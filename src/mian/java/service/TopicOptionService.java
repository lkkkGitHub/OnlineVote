package service;

import mapper.TopicOptionDao;
import org.springframework.stereotype.Service;
import pojo.TopicOption;

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

    /**
     * 通过controller传入的投票id voteId查询该投票的题目选项信息，同时将题目id topicId，以及选项id optionId
     * 传入到topicDao以及OptionDao中的方法连接查询题目、选项的具体信息；封装到TopicOption类中一起返回到list集合中
     * 当集合为空时，返回到contrtoller中空，不为空即返回list集合
     *
     * @param voteId 投票id
     * @return list为空返回空，不为空返回list
     */
    public List<TopicOption> findTopicOption(Integer voteId) {
        List<TopicOption> list = topicOptionDao.findTopicOption(voteId);
        if (list == null) {
            return null;
        } else {
            return list;
        }
    }
}
