package mapper;

import pojo.Vote;


/**
 * 投票
 */
public interface VoteDao {

    /**
     * 添加投票信息，并将自增的主键id返回导实体类中的id中
     *
     * @param vote 封装了投票信息的主键id
     * @return 返回影响行数，以及返回到实体类中的主键id
     */
    int insert(Vote vote);

//    int insertSelective(@Param("pojo") Vote pojo);
//
//    int insertList(@Param("pojos") List<Vote> pojo);
//
//    int update(@Param("pojo") Vote pojo);
}
