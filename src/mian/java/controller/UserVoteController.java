package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.TopicOption;
import pojo.User;
import pojo.UserVote;
import service.UserVoteService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lk
 * 2018/7/28 14:30
 * @description:
 */
@Controller
@RequestMapping("/userVote")
public class UserVoteController {

    /**
     * 实例化service
     */
    @Autowired
    private UserVoteService userVoteService;

    /**
     * 投票功能：
     * 通过字符串数组得方式，获取页面复选框得传入值 topicOptionId 题目选项id，同时获取session中得登陆用户id（userId)，
     * 将userId和topicOptionId同时添加到list集合中，再对list集合进行判断，list.size()==0即表示用户没有选择复选框，
     * 再判断list.size()的大小是否==题目的最大选项，不等于即提示用户完成投票
     * 如果以上判断都满足再将用户投的票添加到service中进行插入
     *
     * @param topicOptionId 页面复选框的用户投票信息
     * @param request       获取session中的用户信息 userId 以及题目信息 topicMax 最多选项
     * @param model         根据list集合的size以及topicMax的大小返回不同的错误信息
     * @return 根据list集合的size以及topicMax的大小返回不同的错误信息
     */
    @RequestMapping("/voting")
    public ModelAndView voting(String[] topicOptionId, HttpServletRequest request, Model model) {
        if (topicOptionId == null) {
            model.addAttribute("msgVoting", "请投票");
            return new ModelAndView("forward:/topicOption/findTopicOption");
        } else {
            List<UserVote> list = new ArrayList<>();
            TopicOption topicOption = (TopicOption) request.getSession().getAttribute("topicOption");
            User user = (User) request.getSession().getAttribute("sessionAccount");
            for (String s : topicOptionId) {
                UserVote userVote = new UserVote();
                userVote.setUserId(user.getUserId());
                userVote.setTopicOptionId(Integer.parseInt(s));
                list.add(userVote);
            }
            if (topicOption.getTopic().getTopicMax() != list.size()) {
                model.addAttribute("msgVoting", "请完成所有投票");
                return new ModelAndView("forward:/topicOption/findTopicOption");
            } else {
                userVoteService.insertList(list);
                return new ModelAndView("forward:/topicOption/findTopicOption");
            }
        }
    }
}
