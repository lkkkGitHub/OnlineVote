package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.TopicOptionService;

/**
 * @author lk
 * 2018/7/27 15:41
 * @description:
 */
@Controller
@RequestMapping("/topicOption")
public class TopicOptionController {
    /**
     * 实例化
     */
    @Autowired
    private TopicOptionService topicOptionService;
}
