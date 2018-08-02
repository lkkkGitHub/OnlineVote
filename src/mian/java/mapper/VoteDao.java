package mapper;

import pojo.Vote;

import java.util.List;


/**
 * 投票
 */
public interface VoteDao {

    /**
     * 添加投票信息，并将自增的主键id返回导实体类中的id中
     *
     * @param vote 封装了投票信息的主键id
     * @return 返回影响行数，以及返回到实体类中的主键id
     */
    int insert(Vote vote);

    /**
     * 查询状态为 1 （未到截至时间的投票）
     * 联合用户表查询投票信息，将用户信息封装到user类中
     *
     * @return vote类
     */
    List<Vote> findVoteStateOne();

    /**
     * 根据传入的投票信息，更新投票信息中的状态
     *
     * @param vote 封装了投票信息的vote
     * @return 返回影响的行数
     */
    int updateState(Vote vote);

    /**
     * 联合用户表查询投票信息，将用户信息封装到user类中
     *
     * @return vote类
     */
    List<Vote> findAllVote();

    /**
     * 根据用户id，查询用户参与过的投票，以及投票的具体信息
     * 并且链接查询创建该投票的用户信息
     *
     * @param userId 用户id
     * @return 返回封装了投票信息的list集合
     */
    List<Vote> findUserVoted(Integer userId);
}
