package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.TopicOption;
import pojo.Vote;
import service.TopicOptionService;
import service.UserVoteService;
import tools.VoteCount;

import javax.servlet.http.HttpServletRequest;
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
     * 用户投票service，用来查询用户参与过的投票的最后投票结果
     */
    @Autowired
    private UserVoteService userVoteService;
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
    public ModelAndView findTopicOption(Vote vote, Model model, HttpSession session, HttpServletRequest request) {
        List<TopicOption> list = null;
        VoteCount voteCount = null;
        int voteId;
        if (vote.getVoteId() == null) {
            voteId = (int) request.getSession().getAttribute("voteId");
            list = topicOptionService.findTopicOption(voteId);
            voteCount = userVoteService.findVotedUserNum(voteId);
        } else {
            list = topicOptionService.findTopicOption(vote.getVoteId());
            voteCount = userVoteService.findVotedUserNum(vote.getVoteId());
            session.setAttribute("voteId", vote.getVoteId());
        }
        session.setAttribute("topicOption", list.get(0));
        model.addAttribute("topicOptions", list);
        model.addAttribute("voteCount", voteCount);
        return new ModelAndView("voting");
    }
}
