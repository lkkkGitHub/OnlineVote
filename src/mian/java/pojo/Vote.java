package pojo;

import java.sql.Date;

/**
 * 投票类
 */
public class Vote {
    /**
     * 投票id，主键
     */
    private Integer voteId;
    /**
     * 创建投票id
     */
    private Integer userId;
    /**
     * 投票的主题
     */
    private String topic;
    /**
     * 投票截止日期
     */
    private Date deadline;
    /**
     * 用户信息，关联查询创建该投票的用户
     */
    private User user;

    /**
     * 获取用户
     * @return 用户
     */
    public User getUser() {
        return user;
    }

    /**
     * 设置用户信息
     * @param user 返回用户信息
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * 获取截至日期
     * @return 截止日期
     */
    public Date getDeadline() {
        return deadline;
    }

    /**
     * 设置截至日期
     * @param deadline 截止日期
     */
    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    /**
     * 获取id
     * @return 返回Longid
     */
    public Integer getVoteId() {
        return voteId;
    }

    /**
     * 设置投票id
     * @param voteId Long对象投票id
     */
    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
    }

    /**
     * 获取用户id
     * @return Long对象用户id
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * 设置用户id
     * @param userId Long对象用户id
     */
    public void setUserId(Integer userId) {
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
                + ", deadline=" + deadline
                + '}';
    }
}
