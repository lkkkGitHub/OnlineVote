package pojo;

import java.util.List;

/**
 * 题目选项关联类，同时关联投票
 */
public class TopicOption {
    /**
     * 题目选项连接的id，主键
     */
    private Integer topicOptionId;
    /**
     * 题目id，外键
     */
    private Integer topicId;
    /**
     * 投票的id，外键，题目所属的投票
     */
    private Integer voteId;
    /**
     * 选项id，外键
     */
    private Integer optionId;

    /**
     * 投票对题目选项为一对多
     */
    private List<Vote> voteList;

    /**
     * 一对一关联题目信息
     */
    private Topic topic;
    /**
     * 一对一关联选项信息
     */
    private Option option;

    /**
     * 获取题目信息
     * @return 题目信息
     */
    public Topic getTopic() {
        return topic;
    }

    /**
     * 设置题目信息
     * @param topic 题目信息
     */
    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    /**
     * 获取选项信息
     * @return 选项信息
     */
    public Option getOption() {
        return option;
    }

    /**
     * 设置选项信息
     * @param option 选项信息
     */
    public void setOption(Option option) {
        this.option = option;
    }

    /**
     * 获取投票list
     * @return 投票list
     */
    public List<Vote> getVoteList() {
        return voteList;
    }

    /**
     * 设置投票list
     * @param voteList 投票list
     */
    public void setVoteList(List<Vote> voteList) {
        this.voteList = voteList;
    }

    /**
     * 获取题目选项连接的id
     * @return Long类型id
     */
    public Integer getTopicOptionId() {
        return topicOptionId;
    }

    /**
     * 设置主键id
     * @param topicOptionId Long对象主键id
     */
    public void setTopicOptionId(Integer topicOptionId) {
        this.topicOptionId = topicOptionId;
    }

    /**
     * 获取外键题目id
     * @return Long对象题目id
     */
    public Integer getTopicId() {
        return topicId;
    }

    /**
     * 设置外键题目id
     * @param topicId Long对象题目id
     */
    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    /**
     * 获取投票外键id
     * @return Long对象投票id
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
     * 获取选项id
     * @return Long对象选项id
     */
    public Integer getOptionId() {
        return optionId;
    }

    /**
     * 设置选项id
     * @param optionId Long对象id
     */
    public void setOptionId(Integer optionId) {
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
