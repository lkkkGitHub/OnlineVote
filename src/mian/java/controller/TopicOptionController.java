package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.TopicOption;
import pojo.Vote;
import service.TopicOptionService;

import javax.servlet.http.HttpSession;
import java.util.List;

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

    /**
     * 通过页面连接获取到投票的 voteId，传入到service中查询到题目选项信息，以list集合返回
     * 同时将本次的题目选项类（TopicOption）传入到session中名字为（topicOptions）以便投票时，获取投票的最大选项
     * 将list集合返回到页面命名为（topicOptions），返回到投票页面
     *
     * @param vote    获取投票id voteId
     * @param model   将list集合以 “topicOptions” 返回到页面
     * @param session 将单一TopicOption类添加到session
     * @return 返回到页面voting
     */
    @RequestMapping("/findTopicOption")
    public ModelAndView findTopicOption(Vote vote, Model model, HttpSession session) {
        List<TopicOption> list = topicOptionService.findTopicOption(vote.getVoteId());
        session.setAttribute("topicOption", list.get(0));
        model.addAttribute("topicOptions", list);
        return new ModelAndView("voting");
    }
}
