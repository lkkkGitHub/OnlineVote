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
     * 联合用户表查询用户信息，将用户信息封装到user类中
     *
     * @return vote类
     */
    List<Vote> findVote();
}
