package pojo;

/**
 * 题目选项实体类
 */
public class Option {
    /**
     * 选项id，主键
     */
    private Integer optionId;
    /**
     * 选项内容
     */
    private String optionContent;

    /**
     * 获取选项id
     * @return Long对象的选项id
     */
    public Integer getOptionId() {
        return optionId;
    }

    /**
     * 设置选项id
     * @param optionId Long对象的选项id
     */
    public void setOptionId(Integer optionId) {
        this.optionId = optionId;
    }

    /**
     * 获取选项内容
     * @return String类对象的选项内容
     */
    public String getOptionContent() {
        return optionContent;
    }

    /**
     * 设置选项内容
     * @param optionContent 字符串类型的选项内容
     */
    public void setOptionContent(String optionContent) {
        this.optionContent = optionContent;
    }

    @Override
    public String toString() {
        return "Option{"
                + "optionId=" + optionId
                + ", optionContent='" + optionContent + '\''
                + '}';
    }
}
