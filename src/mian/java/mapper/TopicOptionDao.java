package mapper;

import pojo.TopicOption;

import java.util.List;

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

    /**
     * 通过投票id 查询投票得题目，选项id，再将两个id传入到各自得dao
     * 中查询题目，选项的内容返回到TopicOption类中的属性中，再通过list集合返回信息
     * @param voteId 投票id
     * @return 封装信息的list集合
     */
    List<TopicOption> findTopicOption(Integer voteId);

    /**
     * 根据题目选项id来查询题目投票信息
     * @param topicOptionId 题目选项id
     * @return 返回封装了信息的TopicOption的list集合
     */
    List<TopicOption> findTopicOptionByTopicOptionId(Integer topicOptionId);
}
