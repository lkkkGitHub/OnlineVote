package service;

import mapper.OptionDao;
import mapper.TopicDao;
import mapper.TopicOptionDao;
import mapper.VoteDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Option;
import pojo.Topic;
import pojo.TopicOption;
import pojo.Vote;

import javax.annotation.Resource;
import java.util.List;

/**
 * 投票service
 */
@Service
public class VoteService {
    /**
     * 自动导入投票dao接口
     */
    @Resource
    private VoteDao voteDao;
    /**
     * 自动导入题目dao
     */
    @Resource
    private TopicDao topicDao;
    /**
     * 自动导入选项的dao
     */
    @Resource
    private OptionDao optionDao;
    /**
     * 自动导入题目选项表dao接口
     */
    @Resource
    private TopicOptionDao topicOptionDao;

    /**
     * 将题目，选项，投票分别插入导题目，选项，投票表中；再将题目，选项，投票id主键加入题目选项表中进行关联；
     * 应该启用了事务管理，发现有未插入的信息，即回滚事务
     *
     * @param vote       封装了投票信息
     * @param topic      封装了题目信息
     * @param optionList 封装了选项信息
     */
    @Transactional
    public void insert(Vote vote, Topic topic, List<Option> optionList) {
        //k 用来判断是否添加进去
        int k1 = topicDao.insert(topic);
        int k2 = voteDao.insert(vote);
        int voidId = vote.getVoteId();
        int topicId = topic.getTopicId();
        for (int i = 0; i < optionList.size(); i++) {
            optionDao.insert(optionList.get(i));
            TopicOption topicOption = new TopicOption();
            topicOption.setOptionId(optionList.get(i).getOptionId());
            topicOption.setTopicId(topicId);
            topicOption.setVoteId(voidId);
            int k3 = topicOptionDao.insertVote(topicOption);
            if (k1 != 1 || k2 != 1 || k3 != 1) {
                int j = 1 / 0; //抛异常
            }
        }
    }

}
