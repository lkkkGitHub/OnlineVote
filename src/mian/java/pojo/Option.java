package pojo;

/**
 * 题目选项实体类
 */
public class Option {

    private Long optionId;
    private String optionContent;

    public Long getOptionId() {
        return optionId;
    }

    public void setOptionId(Long optionId) {
        this.optionId = optionId;
    }


    public String getOptionContent() {
        return optionContent;
    }

    public void setOptionContent(String optionContent) {
        this.optionContent = optionContent;
    }

    @Override
    public String toString() {
        return "Option{" +
                "optionId=" + optionId +
                ", optionContent='" + optionContent + '\'' +
                '}';
    }
}
