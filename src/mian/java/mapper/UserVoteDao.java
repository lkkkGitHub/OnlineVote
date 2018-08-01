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
     * 根据用户id查询用户参与过的投票的题目id以及选项id
     * @param userId 登陆之后的session中id
     * @return 封装了题目选项信息，以及用户id的UserVote类型的list集合
     */
    List<UserVote> findUserVotedByUserId(Integer userId);

    /**
     * 查询参与该投票的用户总数，链接查询该投票的题目选项选中的人数
     * @param voteId 投票id
     * @return 投票的总数
     */
    VoteCount findVotedUserNum(Integer voteId);

    /**
     * 查询该投票中的选项选中人数
     * @param voteId 投票id
     * @return 封装了选项id以及选项的选中人数信息的list集合
     */
    List<OptionCount> findOptionNum(Integer voteId);
}
