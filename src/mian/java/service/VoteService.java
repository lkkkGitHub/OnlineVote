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
     * 将题目，投票信息插入到表中，并且获取返回的自增id传入到各自的主键，同时将影响的行数返回分别存储再 k1 k2中
     * 再将选项的list集合进行循环插入到表中，每次插入即返回自增id，和影响的行数；再将投票，题目，选项各个返回的主键id信息插入到题目选项关联表中
     * 开启事务注解，判断如果每次插入的影响行数有一个不是1 即手手动抛异常，让事务回滚
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
