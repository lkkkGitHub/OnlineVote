package service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import pojo.UserVote;
import mapper.UserVoteDao;

/**
 * 用户投票信息
 */
@Service
public class UserVoteService {
    /**
     * 实例化dao接口
     */
    @Resource
    private UserVoteDao userVoteDao;

    /**
     * 插入list集合投票信息
     * @param userVoteList 投票信息的集合
     * @return 返回影响行数
     */
    @Transactional
    public int insertList(List<UserVote> userVoteList) {
        return userVoteDao.insertList(userVoteList);
    }

}
