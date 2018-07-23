package pojo;

/**
 * 题目实体类
 */
public class Topic {

    private Long topicId;
    private String topicContent;
    private Long topicMax;


    public Long getTopicId() {
        return topicId;
    }

    public void setTopicId(Long topicId) {
        this.topicId = topicId;
    }


    public String getTopicContent() {
        return topicContent;
    }

    public void setTopicContent(String topicContent) {
        this.topicContent = topicContent;
    }


    public Long getTopicMax() {
        return topicMax;
    }

    public void setTopicMax(Long topicMax) {
        this.topicMax = topicMax;
    }

    @Override
    public String toString() {
        return "Topic{" +
                "topicId=" + topicId +
                ", topicContent='" + topicContent + '\'' +
                ", topicMax=" + topicMax +
                '}';
    }
}
