package mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.Vote;
import tools.SpringMybatisTest;

import java.util.List;

/**
 * @author lk
 * 2018/7/26 15:17
 * @description:
 */
public class VoteDaoTest extends SpringMybatisTest {

    @Autowired
    private VoteDao voteDao;

    @Test
    public void insert() {
        Vote vote = new Vote();
        vote.setUserId(2);
        vote.setTopic("a那时的弗兰克");
        int x = voteDao.insert(vote);
        System.out.println(x);
    }

    @Test
    public void findVote() {
        List<Vote> vote = voteDao.findVoteStateOne();
        System.out.println(vote);
    }

    @Test
    public void updateState() {
        Vote vote = new Vote();
        vote.setVoteId(5);
        vote.setState(0);
        voteDao.updateState(vote);
        System.out.println(vote);
    }

    @Test
    public void findUserVoted() {
        List<Vote> list = voteDao.findUserVoted(1);
    }
}