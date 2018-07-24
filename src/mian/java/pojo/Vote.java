package pojo;

/**
 * 投票类
 */
public class Vote {
    /**
     * 投票id，主键
     */
    private Long voteId;
    /**
     * 创建投票id
     */
    private Long userId;
    /**
     * 投票的主题
     */
    private String topic;

    /**
     * 获取id
     * @return 返回Longid
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
     * 获取用户id
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

    /**
     * 获取投票主题
     * @return 字符串类型投票主题
     */
    public String getTopic() {
        return topic;
    }

    /**
     * 设置投票主题
     * @param topic 字符串类型投票主题
     */
    public void setTopic(String topic) {
        this.topic = topic;
    }

    @Override
    public String toString() {
        return "Vote{"
                + "voteId=" + voteId
                + ", userId=" + userId
                + ", topic='" + topic + '\''
                + '}';
    }
}
