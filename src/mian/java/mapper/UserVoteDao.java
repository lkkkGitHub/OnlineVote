package mapper;

import pojo.UserVote;
import tools.OptionCount;
import tools.VoteCount;

import java.util.List;

/**
 * dao用户投票
 */
public interface UserVoteDao {

    /**
     * 用户投票，因为存在多选信息，插入信息封装成list，查询list集合
     * list集合封装了用户id，以及投票topicoptionid
     *
     * @param userVoteList list集合封装了用户id，以及投票topicoptionid
     * @return 影响的行数
     */
    int insertList(List<UserVote> userVoteList);

    /**
     * 根据用户id该用户是否进行了投票，如果进行了投票将对题目选项表连接查询该投票的主键id
     * 从而判断用户是否对该投票进行过投票，防止二次投票
     * @param userId 登陆之后的session中id
     * @return 封装了题目选项信息，以及用户id的UserVote类型的list集合
     */
    List<UserVote> findUserVotedByUserId(Integer userId);

    /**
     * 查询
     * @param voteId
     * @return
     */
    VoteCount findVotedUserNum(Integer voteId);

    /**
     *
     * @param voteId
     * @return
     */
    List<OptionCount> findOptionNum(Integer voteId);
}
