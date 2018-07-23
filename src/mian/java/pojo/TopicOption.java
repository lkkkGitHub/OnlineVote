package pojo;

/**
 * 题目选项关联类，同时关联投票
 */
public class TopicOption {

    private Long topicOptionId;
    private Long topicId;
    private Long voteId;
    private Long optionId;


    public Long getTopicOptionId() {
        return topicOptionId;
    }

    public void setTopicOptionId(Long topicOptionId) {
        this.topicOptionId = topicOptionId;
    }


    public Long getTopicId() {
        return topicId;
    }

    public void setTopicId(Long topicId) {
        this.topicId = topicId;
    }


    public Long getVoteId() {
        return voteId;
    }

    public void setVoteId(Long voteId) {
        this.voteId = voteId;
    }


    public Long getOptionId() {
        return optionId;
    }

    public void setOptionId(Long optionId) {
        this.optionId = optionId;
    }

    @Override
    public String toString() {
        return "TopicOption{" +
                "topicOptionId=" + topicOptionId +
                ", topicId=" + topicId +
                ", voteId=" + voteId +
                ", optionId=" + optionId +
                '}';
    }
}
