package service;

import mapper.UserVoteDao;
import org.springframework.stereotype.Service;
import pojo.UserVote;
import tools.OptionCount;
import tools.VoteCount;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 用户投票信息
 */
@Service
public class UserVoteService {
    /**
     * 实例化dao接口
     */
    @Resource
    private UserVoteDao userVoteDao;

    /**
     * 插入list集合投票信息
     *
     * @param userVoteList 投票信息的集合
     * @return 返回影响行数
     */
    public int insertList(List<UserVote> userVoteList) {
        return userVoteDao.insertList(userVoteList);
    }

    /**
     * 根据用户id该用户是否进行了投票，如果进行了投票将对题目选项表连接查询该投票的主键id
     * 从而判断用户是否对该投票进行过投票，防止二次投票,如果查询到的信息为空，返回空；
     * 不为空即返回list集合
     *
     * @param userId 用户id
     * @return 查询到数据返回list，没有查询到返回空
     */
    public List<UserVote> findUserVotedByUserId(Integer userId) {
        List<UserVote> list = userVoteDao.findUserVotedByUserId(userId);
        if (list.size() == 0) {
            return null;
        } else {
            return list;
        }
    }

    public VoteCount findVotedUserNum(Integer voteId) {
       VoteCount voteCount = null;
       voteCount = userVoteDao.findVotedUserNum(voteId);
       if (voteCount == null) {
           voteCount = new VoteCount();
           OptionCount optionCount = new OptionCount();
           optionCount.setOptionId(0);
           optionCount.setOptionNum(0);
           List<OptionCount> list = new ArrayList<>();
           for (int i = 0; i < 4; i++) {
               list.add(optionCount);
           }
           voteCount.setCountPeople(0);
           voteCount.setCountList(list);
       }
       return voteCount;
    }
}
