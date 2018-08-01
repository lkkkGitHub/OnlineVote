package tools;

import java.util.List;

/**
 * @author lk
 * 2018/7/31 11:19
 * @description: 记录一个投票的投票总数，以及投票选项的数量，计算投票的最后结果信息
 */
public class VoteCount {
    private double countPeople;

    private Integer voteId;

    private List<OptionCount> countList;

    public Integer getVoteId() {
        return voteId;
    }

    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
    }

    public List<OptionCount> getCountList() {
        return countList;
    }

    public void setCountList(List<OptionCount> countList) {
        this.countList = countList;
    }

    public double getCountPeople() {
        return countPeople;
    }

    public void setCountPeople(double countPeople) {
        this.countPeople = countPeople;
    }

    @Override
    public String toString() {
        return "VoteCount{" +
                "countPeople=" + countPeople +
                ", voteId=" + voteId +
                ", countList=" + countList +
                '}';
    }
}
