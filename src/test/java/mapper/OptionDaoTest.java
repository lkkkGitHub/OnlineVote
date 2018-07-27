package mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.Option;
import tools.SpringMybatisTest;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

/**
 * @author lk
 * 2018/7/26 18:32
 * @description:
 */
public class OptionDaoTest extends SpringMybatisTest {

    @Autowired
    private OptionDao optionDao;
    @Test
    public void insertList() {
        List<Option> list = new ArrayList<>();
        Option option = new Option();
        option.setOptionContent("aa");
        Option option1 = new Option();
        option1.setOptionContent("bb");
        Option option2 = new Option();
        option2.setOptionContent("bb");
        list.add(option);
        list.add(option1);
        list.add(option2);
        list.get(0).getOptionId();
    }
}