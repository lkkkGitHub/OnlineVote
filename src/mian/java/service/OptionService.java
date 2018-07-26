package service;

import mapper.OptionDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 选项service
 */
@Service
public class OptionService {

    /**
     * 自动导入dao
     */
    @Resource
    private OptionDao optionDao;

}
