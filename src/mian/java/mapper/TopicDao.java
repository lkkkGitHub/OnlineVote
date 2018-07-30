package mapper;

import pojo.Topic;

/**
 * 题目dao
 */
public interface TopicDao {
    /**
     * 添加题目，并将自增的主键id返回导实体类中的id中
     *
     * @param topic 封装了题目信息；以及返回的自增主键id
     * @return 返回影响行数，以及返回到实体类中的主键id
     */
    int insert(Topic topic);

    /**
     * 查询选项通过题目id topicId，封装到选项表中
     * @param topicId 题目题目dao中查询到的topicId连接查询
     * @return 返回topic类封装了信息
     */
    Topic findTopicById(Integer topicId);
}
