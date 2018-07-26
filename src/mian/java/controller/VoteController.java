package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pojo.Option;
import pojo.Topic;
import pojo.User;
import pojo.Vote;
import service.VoteService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lk
 * 2018/7/26 8:25
 * @description: 投票controller，创建投票，查询投票等
 */
@Controller
@RequestMapping("/vote")
public class VoteController {

    /**
     * 自动导入投票service,创建投票
     */
    @Autowired
    private VoteService voteService;

    /**
     * 将客户端空白输入传入""转为null
     *
     * @param binder 不知道
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }

    /**
     * 初始化投票创建界面
     *
     * @return 返回到创建投票页面
     */
    @RequestMapping(value = "createVote", method = {RequestMethod.GET})
    public ModelAndView createVote() {
        return new ModelAndView("createVote");
    }

    /**
     * 创建投票，获取用户页面输入的选项信息，插入到选项表中；获取输入的题目信息，插入到题目表中；
     * 获取输入的投票信息，插入到投票表中；以及最后将三个表的主键id添加到题目选项表中，作为外键连接
     *
     * @param option1 选项1
     * @param option2 选项2
     * @param option3 选项3
     * @param option4 选项4
     * @param vote    封装了投票主题的vote对象
     * @param topic   封装了投票的题目内容的topic类对象
     * @param request 获取session对象中的user信息
     * @param model   返回错误信息
     * @return 返回到查询显示投票页面
     */
    @RequestMapping(value = "createVote", method = {RequestMethod.POST})
    public ModelAndView createVote(String option1, String option2, String option3, String option4, Vote vote,
                                   Topic topic, HttpServletRequest request, Model model) {
        int check = 0;
        //获取用户id，和投票主题，封装到vote类中，插入vote表中：创建投票
        if (vote.getTopic() != null) {
            User user = (User) request.getSession().getAttribute("sessionAccount");
            vote.setUserId(user.getUserId());
            check++;
        } else {
            model.addAttribute("msgTopic", "请输入投票的主题");
            return new ModelAndView("createVote");
        }
        if (topic.getTopicContent() != null) {
            check++;
        } else {
            model.addAttribute("msgTopicContent", "请输入投票的题目说明");
            return new ModelAndView("createVote");
        }
        Option optionA = new Option();
        Option optionB = new Option();
        Option optionC = new Option();
        Option optionD = new Option();
        optionA.setOptionContent(option1);
        optionB.setOptionContent(option2);
        optionC.setOptionContent(option3);
        optionD.setOptionContent(option4);
        List<Option> optionList = new ArrayList<>();
        optionList.add(optionA);
        optionList.add(optionB);
        optionList.add(optionC);
        optionList.add(optionD);
        //标记为0
        int type = 0;
        for (int i = 0; i < optionList.size(); i++) {
            if (optionList.get(i).getOptionContent() != null) {
                type++;
            }
        }
        if (type <= 1) {
            model.addAttribute("msgTopicContent", "最少输入两个选项");
            return new ModelAndView("createVote");
        } else {
            for (int i = optionList.size(); i > type; i--) {
                optionList.remove(i - 1);
            }
            check++;
        }
        if (check == 3) {
            voteService.insert(vote, topic, optionList);
        }
        return new ModelAndView("index");
    }
}
