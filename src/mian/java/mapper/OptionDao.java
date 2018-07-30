package mapper;

import pojo.Option;

/**
 * 选项dao接口，插入选项，查询选项
 */
public interface OptionDao {
    /**
     * 添加选项，信息，并将自增的主键id返回导实体类中的id中
     *
     * @param option 封装了选项， 信息；以及返回的自增主键id
     * @return 返回影响行数，以及返回到实体类中的主键id
     */
    int insert(Option option);
//    /**
//     * 多条选项内容插入
//     * @return 多个自增id主键
//     */
//    List<Option> insertList(List<Option> optionList);

    /**
     * 查询选项通过选项id optionId，封装到选项表中
     * @param optionId 题目选项dao中查询到的optionId连接查询
     * @return 返回option类封装了信息
     */
    Option findOptionById(Integer optionId);
}
