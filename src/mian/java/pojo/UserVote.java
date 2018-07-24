package pojo;

/**
 * 用户投票选择
 */
public class UserVote {

    /**
     * 用户投票id
     */
    private Long userVoteId;
    /**
     * 题目选项id，判断用户每道题的选项
     */
    private Long topicOptionId;
    /**
     * 用户id，投票用户
     */
    private Long userId;

    /**
     * 获取用户投票id
     * @return Long对象id
     */
    public Long getUserVoteId() {
        return userVoteId;
    }

    /**
     * 设置用户投票id
     * @param userVoteId Long对象用户投票
     */
    public void setUserVoteId(Long userVoteId) {
        this.userVoteId = userVoteId;
    }

    /**
     * 获取题目选项关联id
     * @return Long对象关联id
     */
    public Long getTopicOptionId() {
        return topicOptionId;
    }

    /**
     * 设置题目选项关联id
     * @param topicOptionId Long对象的选项题目id
     */
    public void setTopicOptionId(Long topicOptionId) {
        this.topicOptionId = topicOptionId;
    }

    /**
     * 获取投票用户id
     * @return Long对象用户id
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 设置用户id
     * @param userId Long对象用户id
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "UserVote{"
                + "userVoteId=" + userVoteId
                + ", topicOptionId=" + topicOptionId
                + ", userId=" + userId
                + '}';
    }
}
