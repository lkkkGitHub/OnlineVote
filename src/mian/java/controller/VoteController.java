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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
    @RequestMapping(value = "/createVote", method = {RequestMethod.GET})
    public ModelAndView createVote() {
        return new ModelAndView("createVote");
    }

    /**
     * 创建投票：获取用户在页面中输入的信息，题目，投票信息封装到实体类中，选项单个获取；
     * 新建标记：
     * check = 0  判断数据是否合法，合法即++ 不合法不做操作
     * checkConfig 值=5 ；仅当插入三个表的数据都合法时（check=5）才能将所有数据发送到service中进行插入数据
     * maxCookieAge 设置最大的cookie存在时间 300s
     * 将页面所有的信息都存入cookie中，方便用户输入创建投票
     * 对数据信息判断：
     * 1.投票数据、判断投票的主题是否为空：
     * 为空即返回页面错误信息； msgTopic
     * 不为空，即标记check++，再将创建该投票的用户主键id设置到封装了投票主题的vote类中
     * 2.题目数据、判断是否为空：
     * 题目为空即返回错误信息到页面；msgTopicContent
     * 不为空，即标记check++，
     * 3.选项信息进行封装打包：
     * 创建四个option类对象，所有传入选项的信息，再用list集合封装四个类对象；
     * 设置type = 0标记， 记录不为空的选项数量
     * 利用循环判断list集合中四个类对象的题目选项内容是否为空，不为空即type++，为空不做操作
     * 对type进行判断，当type <= 1 时 返回提示错误 msgOptionContent 最少两个选项
     * type < topicMax 题目最大选项 提示错误msgTopicMax 至少比最大选项多1
     * 4.对最多能选项进行判断：
     * 最多能选项为空即返回错误信息到页面；msgTopicMax
     * 不为空，即标记check++，
     * 数据插入：当check==4 即将所有信息返回到service中，对信息进行插入，否则不传入信息
     * 最后如果数据没有错误，即返回到创建成功界面
     *
     * @param option1      选项1
     * @param option2      选项2
     * @param option3      选项3
     * @param option4      选项4
     * @param vote         封装了投票主题的vote对象
     * @param topic        封装了投票的题目内容的topic类对象
     * @param request      获取session对象中的user信息
     * @param model        返回错误信息
     * @param response     向页面发送cookie值
     * @param deadlineTime 获取前台截至日期天数
     * @return 返回到查询显示投票页面
     */
    @RequestMapping(value = "/createVote", method = {RequestMethod.POST})
    public ModelAndView createVote(String option1, String option2, String option3, String option4, Vote vote,
                                   Topic topic, HttpServletRequest request, Model model,
                                   HttpServletResponse response, String deadlineTime) {
        final int minCookieAge = 0;
        final int maxCookieAge = 300;
        final int checkConfig = 5;
        int check = 0;
        int type = 0;
        Cookie cookieTopicContent = new Cookie("cookieTopicContent", topic.getTopicContent());
        Cookie cookieTopic = new Cookie("cookieTopic", vote.getTopic());
        Cookie cookieDeadline = new Cookie("cookieDeadline", deadlineTime);
        Cookie cookieOption1 = new Cookie("cookieOption1", option1);
        Cookie cookieOption2 = new Cookie("cookieOption2", option2);
        Cookie cookieOption3 = new Cookie("cookieOption3", option3);
        Cookie cookieOption4 = new Cookie("cookieOption4", option4);
        cookieOption1.setMaxAge(maxCookieAge);
        cookieOption2.setMaxAge(maxCookieAge);
        cookieOption3.setMaxAge(maxCookieAge);
        cookieOption4.setMaxAge(maxCookieAge);
        cookieTopic.setMaxAge(maxCookieAge);
        cookieDeadline.setMaxAge(maxCookieAge);
        cookieTopicContent.setMaxAge(maxCookieAge);
        response.addCookie(cookieOption1);
        response.addCookie(cookieOption2);
        response.addCookie(cookieOption3);
        response.addCookie(cookieOption4);
        response.addCookie(cookieDeadline);
        response.addCookie(cookieTopic);
        response.addCookie(cookieTopicContent);
        if (deadlineTime != null) {
            int i = Integer.parseInt(deadlineTime);
            Calendar ca = Calendar.getInstance();
            Date now = ca.getTime();
            ca.add(Calendar.DAY_OF_MONTH, i);
            Date fu = ca.getTime();
            java.sql.Date sqlDate = new java.sql.Date(fu.getTime());
            vote.setDeadline(sqlDate);
            check++;
        } else {
            model.addAttribute("msgDeadline", "请输入截至天数");
            return new ModelAndView("createVote");
        }
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
        if (topic.getTopicMax() != null) {
            check++;
        } else {
            model.addAttribute("msgTopicMax", "请选择最多能选项");
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
        for (int i = 0; i < optionList.size(); i++) {
            if (optionList.get(i).getOptionContent() != null) {
                type++;
            }
        }
        if (type <= 1) {
            model.addAttribute("msgOptionContent", "最少输入两个选项");
            return new ModelAndView("createVote");
        } else if (type <= topic.getTopicMax()) {
            model.addAttribute("msgTopicMax", "选项至少比多选多一个");
            return new ModelAndView("createVote");
        } else {
            for (int i = optionList.size(); i > type; i--) {
                optionList.remove(i - 1);
            }
            check++;
        }
        if (check == checkConfig) {
            voteService.insert(vote, topic, optionList);
        }
        cookieOption1.setMaxAge(minCookieAge);
        cookieOption2.setMaxAge(minCookieAge);
        cookieOption3.setMaxAge(minCookieAge);
        cookieOption4.setMaxAge(minCookieAge);
        cookieTopic.setMaxAge(minCookieAge);
        cookieTopicContent.setMaxAge(minCookieAge);
        cookieDeadline.setMaxAge(minCookieAge);
        response.addCookie(cookieOption1);
        response.addCookie(cookieOption2);
        response.addCookie(cookieOption3);
        response.addCookie(cookieOption4);
        response.addCookie(cookieDeadline);
        response.addCookie(cookieTopic);
        response.addCookie(cookieTopicContent);
        return new ModelAndView("createSuccess");
    }

    /**
     * 查询投票信息封装成list，再将用户id---userId传入到user表中查询创建该投票的信息，封装到Vote类中的user属性中
     * @param model 向页面传错误参数，以及传list集合信息
     * @return 返回到页面
     */
    @RequestMapping("/findVote")
    public String findVote(Model model) {
        List<Vote> voteList = voteService.findVote();
        if (voteList == null) {
            model.addAttribute("当前没有投票信息", "msgNullVote");
            return "printVote";
        } else {
            model.addAttribute("votes", voteList);
            return "printVote";
        }
    }
}
