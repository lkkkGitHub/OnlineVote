package pojo;

/**
 * 用户投票选择
 */
public class UserVote {

    /**
     * 用户投票id
     */
    private Integer userVoteId;
    /**
     * 题目选项id，判断用户每道题的选项
     */
    private Integer topicOptionId;
    /**
     * 用户id，投票用户
     */
    private Integer userId;
    /**
     * 一对一连接查询
     */
    private TopicOption topicOption;

    /**
     * 获取投票选项信息
     *
     * @return 返回信息
     */
    public TopicOption getTopicOption() {
        return topicOption;
    }

    /**
     * 设置投票选项信息
     *
     * @param topicOption 投票选项信息
     */
    public void setTopicOption(TopicOption topicOption) {
        this.topicOption = topicOption;
    }

    /**
     * 获取用户投票id
     *
     * @return Long对象id
     */
    public Integer getUserVoteId() {
        return userVoteId;
    }

    /**
     * 设置用户投票id
     *
     * @param userVoteId Long对象用户投票
     */
    public void setUserVoteId(Integer userVoteId) {
        this.userVoteId = userVoteId;
    }

    /**
     * 获取题目选项关联id
     *
     * @return Long对象关联id
     */
    public Integer getTopicOptionId() {
        return topicOptionId;
    }

    /**
     * 设置题目选项关联id
     *
     * @param topicOptionId Long对象的选项题目id
     */
    public void setTopicOptionId(Integer topicOptionId) {
        this.topicOptionId = topicOptionId;
    }

    /**
     * 获取投票用户id
     *
     * @return Long对象用户id
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * 设置用户id
     *
     * @param userId Long对象用户id
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "UserVote{"
                + "userVoteId=" + userVoteId
                + ", topicOptionId=" + topicOptionId
                + ", userId=" + userId
                + ", topicOption=" + topicOption
                + '}';
    }
}
