package mapper;

import pojo.TopicOption;

/**
 * 题目选项dao
 */
public interface TopicOptionDao {
    /**
     * 添加题目，选项，投票主键信息，并将自增的主键id返回导实体类中的id中
     *
     * @param topicOption 封装了题目，选项，投票 主键id 信息；以及返回的自增主键id
     * @return 返回影响行数，以及返回到实体类中的主键id
     */
    int insertVote(TopicOption topicOption);
}
