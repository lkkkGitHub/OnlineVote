package mapper;

import pojo.UserVote;

import java.util.List;

/**
 * dao用户投票
 */
public interface UserVoteDao {

    /**
     * 用户投票，因为存在多选信息，插入信息封装成list，查询list集合
     * list集合封装了用户id，以及投票topicoptionid
     * @param userVoteList list集合封装了用户id，以及投票topicoptionid
     * @return 影响的行数
     */
    int insertList(List<UserVote> userVoteList);
}
