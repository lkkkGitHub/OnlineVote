package tools;

import java.util.List;

/**
 * @author lk
 * 2018/7/31 11:19
 * @description: 记录一个投票的投票总数，以及投票选项的数量，计算投票的最后结果信息
 */
public class VoteCount {
    /**
     * 记录该投票的总投票人数
     */
    private double countPeople;
    /**
     * 投票id
     */
    private Integer voteId;
    /**
     * 记录OptionCount集合，OptionCount中为optionId，以及该optionId的数量
     */
    private List<OptionCount> countList;

    /**
     * 获取投票id
     * @return 投票id
     */
    public Integer getVoteId() {
        return voteId;
    }

    /**
     * 设置投票id
     * @param voteId 投票id
     */
    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
    }

    /**
     * 获取存取了OptionCount集合list
     * @return 返回集合list
     */
    public List<OptionCount> getCountList() {
        return countList;
    }

    /**
     * 设置list集合的信息
     * @param countList 集合信息
     */
    public void setCountList(List<OptionCount> countList) {
        this.countList = countList;
    }

    /**
     * 获取投票的总人数
     * @return 投票的总人数
     */
    public double getCountPeople() {
        return countPeople;
    }

    /**
     * 设置投票的总人数
     * @param countPeople 投票总人数
     */
    public void setCountPeople(double countPeople) {
        this.countPeople = countPeople;
    }

    @Override
    public String toString() {
        return "VoteCount{"
                + "countPeople=" + countPeople
                + ", voteId=" + voteId
                + ", countList=" + countList
                + '}';
    }
}
