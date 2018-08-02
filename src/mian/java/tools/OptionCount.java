package tools;

/**
 * @author lk
 * 2018/8/1 9:29
 * @description:
 */
public class OptionCount {
    private Integer optionId;
    private Integer optionNum;

    public Integer getOptionId() {
        return optionId;
    }

    public void setOptionId(Integer optionId) {
        this.optionId = optionId;
    }

    public Integer getOptionNum() {
        return optionNum;
    }

    public void setOptionNum(Integer optionNum) {
        this.optionNum = optionNum;
    }

    @Override
    public String toString() {
        return "OptionCount{"
                + "optionId=" + optionId
                + ", optionNum=" + optionNum
                + '}';
    }
}
