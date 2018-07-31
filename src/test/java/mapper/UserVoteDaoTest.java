package mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.UserVote;
import tools.SpringMybatisTest;

import java.util.ArrayList;
import java.util.List;

/**
 * @author lk
 * 2018/7/28 14:16
 * @description:
 */
public class UserVoteDaoTest extends SpringMybatisTest {

    @Autowired
    private UserVoteDao userVoteDao;

    @Test
    public void insertList() {
        List<UserVote> list = new ArrayList<>();

        UserVote userVote = new UserVote();
        UserVote userVote1 = new UserVote();

        userVote.setUserId(1);
        userVote1.setUserId(2);

        userVote.setTopicOptionId(2);
        userVote1.setTopicOptionId(2);

        list.add(userVote);
        list.add(userVote1);

        userVoteDao.insertList(list);
        System.out.println(list);
    }

    @Test
    public void findUserVotedByUserId() {
        List<UserVote> userVote = userVoteDao.findUserVotedByUserId(1);
        System.out.println(userVote);
    }
}