package pojo;

/**
 * 用户投票选择
 */
public class UserVote {

    private Long userVoteId;
    private Long topicOptionId;
    private Long userId;


    public Long getUserVoteId() {
        return userVoteId;
    }

    public void setUserVoteId(Long userVoteId) {
        this.userVoteId = userVoteId;
    }


    public Long getTopicOptionId() {
        return topicOptionId;
    }

    public void setTopicOptionId(Long topicOptionId) {
        this.topicOptionId = topicOptionId;
    }


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "UserVote{" +
                "userVoteId=" + userVoteId +
                ", topicOptionId=" + topicOptionId +
                ", userId=" + userId +
                '}';
    }
}
