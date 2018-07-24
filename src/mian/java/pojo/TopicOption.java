package pojo;

/**
 * 题目选项关联类，同时关联投票
 */
public class TopicOption {
    /**
     * 题目选项连接的id，主键
     */
    private Long topicOptionId;
    /**
     * 题目id，外键
     */
    private Long topicId;
    /**
     * 投票的id，外键，题目所属的投票
     */
    private Long voteId;
    /**
     * 选项id，外键
     */
    private Long optionId;

    /**
     * 获取题目选项连接的id
     * @return Long类型id
     */
    public Long getTopicOptionId() {
        return topicOptionId;
    }

    /**
     * 设置主键id
     * @param topicOptionId Long对象主键id
     */
    public void setTopicOptionId(Long topicOptionId) {
        this.topicOptionId = topicOptionId;
    }

    /**
     * 获取外键题目id
     * @return Long对象题目id
     */
    public Long getTopicId() {
        return topicId;
    }

    /**
     * 设置外键题目id
     * @param topicId Long对象题目id
     */
    public void setTopicId(Long topicId) {
        this.topicId = topicId;
    }

    /**
     * 获取投票外键id
     * @return Long对象投票id
     */
    public Long getVoteId() {
        return voteId;
    }

    /**
     * 设置投票id
     * @param voteId Long对象投票id
     */
    public void setVoteId(Long voteId) {
        this.voteId = voteId;
    }

    /**
     * 获取选项id
     * @return Long对象选项id
     */
    public Long getOptionId() {
        return optionId;
    }

    /**
     * 设置选项id
     * @param optionId Long对象id
     */
    public void setOptionId(Long optionId) {
        this.optionId = optionId;
    }

    @Override
    public String toString() {
        return "TopicOption{"
                + "topicOptionId=" + topicOptionId
                + ", topicId=" + topicId
                + ", voteId=" + voteId
                + ", optionId=" + optionId
                + '}';
    }
}
