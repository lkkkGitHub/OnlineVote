package pojo;

/**
 * 题目实体类
 */
public class Topic {
    /**
     * 自增，题目id
     */
    private Integer topicId;
    /**
     * 题目内容
     */
    private String topicContent;
    /**
     * 题目最多能选几项
     */
    private Integer topicMax;

    /**
     * 获取题目id
     * @return Long对象的题目id
     */
    public Integer getTopicId() {
        return topicId;
    }

    /**
     * 设置题目id
     * @param topicId Long类型的题目id
     */
    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    /**
     * 获取题目内容
     * @return 字符串类型题目内容
     */
    public String getTopicContent() {
        return topicContent;
    }

    /**
     * 设置题目内容
     * @param topicContent 字符串类型题目内容
     */
    public void setTopicContent(String topicContent) {
        this.topicContent = topicContent;
    }

    /**
     * 获取题目最多能选几项
     * @return Long对象的最多选几项
     */
    public Integer getTopicMax() {
        return topicMax;
    }

    /**
     * 设置最大选项
     * @param topicMax Long对象的最大选项
     */
    public void setTopicMax(Integer topicMax) {
        this.topicMax = topicMax;
    }

    @Override
    public String toString() {
        return "Topic{"
                + "topicId=" + topicId
                + ", topicContent='" + topicContent + '\''
//                + ", topicMax=" + topicMax
                + '}';
    }
}
