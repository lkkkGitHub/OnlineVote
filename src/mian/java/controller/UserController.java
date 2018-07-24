package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pojo.User;
import service.UserService;
import tools.DrawPictures;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lk
 * 2018/7/23 19:15
 * @description: 用户控制器，登陆注册，查询，修改删除用户信息
 */
@Controller
@RequestMapping("/user")
public class UserController {
    /**
     * 实例化service
     */
    @Autowired
    private UserService userService;

    /**
     * 生成图片验证码，传入到页面，同时添加到session中
     *
     * @param request  获取session对象
     * @param response 向页面发送图片验证码
     */
    @RequestMapping("/setPicture")
    public void setPicture(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("images/jpeg"); //设置相应类型,告诉浏览器输出的内容为图片
        response.setHeader("Pragma", "No-cache"); //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        //调用编写的工具类生成验证码图片，传入到客户端以及session中
        DrawPictures drawPictures = new DrawPictures();
        try {
            drawPictures.randCode(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 跳转到登陆页面
     *
     * @return 返回login.jsp页面
     */
    @RequestMapping(value = "/login", method = {RequestMethod.GET})
    public ModelAndView login() {
        return new ModelAndView("login");
    }

    /**
     * 用户登陆post方法，先检验验证码是否输入正确，正确即进入密码，账号检查；验证码未填写，以及验证码错误将提示相应的错误
     * 传入账号信息到service中，根据service中的返回值和StringBuffer类型的message值来判断信息是否正确，
     * 以及将String类型msg对象设置相应的错误信息值，返回到页面中
     * message==0即账号错误，msg返回“账号未注册”信息；==1密码错误，msg返回“密码错误”信息；==2信息正确,不返回；
     * 不管账号、密码的正确与否,都会将账号信息存入cookie中，以便下次登陆；同时用户点击了下次自动登陆，即记住正确的密码到cookie中，
     * 账号密码正确时即传入到session中，利用session来存储用户的账号信息
     * @param userLoginId 用户输入账号id
     * @param userLoginPwd 用户输入账号密码
     * @param model 返回错误信息
     * @param rememberMe 记住密码按钮确认框
     * @param checkCode 用户输入图片验证码
     * @param response 将账号密码存入cookie中，方便用户输入信息；
     * @param request 获取session对象中的验证码，以及将正确的账号信息存入session中
     * @return 返回到页面中
     */
    @RequestMapping(value = "login", method = {RequestMethod.POST})
    public ModelAndView login(String userLoginId, String userLoginPwd,
                              Model model, String rememberMe, String checkCode,
                              HttpServletResponse response, HttpServletRequest request) {
        //msg将错误信息反馈给登陆界面
        String msg;
        //将cookie值存在时间设置为20s是为了之后测试方便
        final int maxTimeCookie = 20;
        Cookie cookieId = new Cookie("cookieId", userLoginId);
        Cookie cookiePwd = new Cookie("cookiePwd", userLoginPwd);
        cookieId.setMaxAge(maxTimeCookie);
        cookiePwd.setMaxAge(maxTimeCookie);
        if ((checkCode.toUpperCase()).equals(request.getSession().getAttribute("SessionPictures"))) {
            //从controller传入到service中，service根据查询到的信息进行赋值,带回信息返回给controller处理
            StringBuffer message = new StringBuffer();
            User user = userService.login(userLoginId, userLoginPwd, message);
            response.addCookie(cookieId);
            if (user == null) {
                if (message.toString().equals("0")) {
                    msg = "账号未注册";
                    model.addAttribute("msgId", msg);
                    return new ModelAndView("login");
                } else {
                    msg = "密码错误";
                    model.addAttribute("msgPwd", msg);
                    return new ModelAndView("login");
                }
            } else {
                //将用户账号信息存入session中，方便之后通过session来调用用户信息
                request.getSession().setAttribute("sessionAccount", user);
                if ("yes".equals(rememberMe)) {
                    response.addCookie(cookiePwd);
                }
                return new ModelAndView("index");
            }
        } else if (checkCode == "") {
            msg = "请输入验证码";
            model.addAttribute("msgCode", msg);
            return new ModelAndView("login");
        } else {
            msg = "验证码错误";
            model.addAttribute("msgCode", msg);
            return new ModelAndView("login");
        }
    }

    /**
     * 注销登陆，删除session中存储的信息
     * @param request 获取session对象
     * @return 返回到主页面
     */
    @RequestMapping("/exit")
    public ModelAndView exit(HttpServletRequest request) {
        request.getSession().removeAttribute("sessionAccount");
        return new ModelAndView("index");
    }
}
