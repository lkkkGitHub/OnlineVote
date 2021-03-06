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
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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

    /**
     * 查询所有状态为 1 （表示未到截止日期） 的投票，封装到list集合中；
     * 再将用户id传入到用户表中连接查询创建投票的用户信息封装到vote类中的user属性中；
     * 同时对截至日期进行判断，将现在的时间和截止日期同时变换成字符串类型进行比较：
     * 截至日期大于等于现在的时间即添加到voteList中，返回到页面
     * 小于现在的时间，即对它的状态进行修改，改成 0 （到达截至日期）
     *
     * @return 查询到信息时返回list集合，未查到即返回空
     */
    public List<Vote> findVote() {
        List<Vote> list = voteDao.findVoteStateOne();
        List<Vote> voteList = new ArrayList<>();
        Calendar ca = Calendar.getInstance();
        Date now = ca.getTime();
        Date fu = ca.getTime();
        java.sql.Date sqlDate = new java.sql.Date(fu.getTime());
        if (list == null) {
            return null;
        } else {
            for (Vote vote : list) {
                if (vote.getDeadline().getTime() >= sqlDate.getTime()) {
                    voteList.add(vote);
                } else {
                    vote.setState(0);
                    voteDao.updateState(vote);
                }
            }
            return voteList;
        }
    }

//    /**
//     * 查询所有投票信息
//     * @return 返回携带了用户信息的全部投票信息
//     */
//    public List<Vote> findAllVote() {
//        return voteDao.findAllVote();
//    }

    /**
     * 根据用户id查询用户增进参与过的投票具体信息，以及创建该投票的用户信息
     *
     * @param userId 用户id
     * @return 根据查询信息，是否为返回list集合，为空即返回null
     */
    public List<Vote> findUserVoted(Integer userId) {
        List<Vote> list = voteDao.findUserVoted(userId);
        if (list.size() == 0) {
            return null;
        } else {
            return list;
        }
    }
}
