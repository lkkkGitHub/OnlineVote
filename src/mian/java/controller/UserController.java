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
import pojo.User;
import service.UserService;
import tools.DrawPictures;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
     * 将客户端空白输入传入""转为null
     *
     * @param binder 不知道
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }

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
     *
     * @param model      返回错误信息
     * @param rememberMe 记住密码按钮确认框
     * @param checkCode  用户输入图片验证码
     * @param response   将账号密码存入cookie中，方便用户输入信息；
     * @param request    获取session对象中的验证码，以及将正确的账号信息存入session中
     * @param user       封装了用户页面输入的账号数据
     * @param session    获取session对象
     * @return 返回到页面中
     */
    @RequestMapping(value = "login", method = {RequestMethod.POST})
    public ModelAndView login(User user, Model model, String rememberMe, String checkCode,
                              HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String userLoginId = user.getUserLoginId();
        String userLoginPwd = user.getUserLoginPwd();
//        if (result.hasErrors()) {
//            result.getFieldError().getDefaultMessage();
//            return new ModelAndView("register")
        //msg将错误信息反馈给登陆界面
        String msg;
        if (user.getUserLoginId() == null) {
            msg = "请输入账号";
            model.addAttribute("msgId", msg);
            return new ModelAndView("login");
        } else if (user.getUserLoginPwd() == null) {
            msg = "请输入密码";
            model.addAttribute("msgPwd", msg);
            return new ModelAndView("login");
        } else if (checkCode == null) {
            msg = "请输入验证码";
            model.addAttribute("msgCode", msg);
            return new ModelAndView("login");
        } else {
            //将cookie值存在时间设置为20s是为了之后测试方便
            final int maxTimeCookie = 200;
            Cookie cookieId = new Cookie("cookieId", userLoginId);
            Cookie cookiePwd = new Cookie("cookiePwd", userLoginPwd);
            cookieId.setMaxAge(maxTimeCookie);
            cookiePwd.setMaxAge(maxTimeCookie);
            if ((checkCode.toUpperCase()).equals(request.getSession().getAttribute("SessionPictures"))) {
                //从controller传入到service中，service根据查询到的信息进行赋值,带回信息返回给controller处理
                StringBuffer message = new StringBuffer();
                User user1 = userService.login(userLoginId, userLoginPwd, message);
                response.addCookie(cookieId);
                if (user1 == null) {
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
                    session.setAttribute("sessionAccount", user1);
                    if ("yes".equals(rememberMe)) {
                        response.addCookie(cookiePwd);
                    }
                    return new ModelAndView("index");
                }
            } else {
                msg = "验证码错误";
                model.addAttribute("msgCode", msg);
                return new ModelAndView("login");
            }
        }
    }

    /**
     * 注销登陆，删除session中存储的信息
     *
     * @param request 获取session对象
     * @return 返回到主页面
     */
    @RequestMapping("/exit")
    public ModelAndView exit(HttpServletRequest request) {
        request.getSession().removeAttribute("sessionAccount");
        return new ModelAndView("index");
    }

    /**
     * 用户注册，用户从页面输入账号，密码，以及确认密码；后台先通过jsr303效验判断输入的数据是否合法，
     * 不合法即将错误信息输入到注册界面，提示用户修改；
     * 合法即进行账号验证，判断账号是否被注册，被注册即跳转到注册界面提示用户该账号已经被注册；
     * 未被注册即判断用户两次输入的密码是否相同，相同即跳转到注册的dao中，进行注册；
     * 不相同即返回到注册界面，并提示用户输入密码不一致，重新输入密码；
     * 同时根据dao接口中返回的数值判断信息是否插入成功，插入成功即跳转到成功界面；失败跳到失败界面
     *
     * @param user                封装了用户输入的账号密码信息
     * @param userLoginPwdConfirm 用户输入的确认密码，判断两次密码输入是否相同
     * @param model               带回错误信息
     * @param response            将用户输入的信息存到cookie传入到客户端中
     * @return 根据判断，返回到不同界面
     */
    @RequestMapping("/register")
    public ModelAndView register(User user, String userLoginPwdConfirm, Model model,
                                 HttpServletResponse response) {
        String msg;
//        if (bindingResult.hasErrors()) {
//            Map<String, Object> map = new HashMap<>();
//            List<FieldError> errors = bindingResult.getFieldErrors();
//            for (FieldError fieldError : errors) {
//                System.out.println("错误的字段名：" + fieldError.getField());
//                System.out.println("错误信息：" + fieldError.getDefaultMessage());
//                map.put(fieldError.getField(), fieldError.getDefaultMessage());
//            }
//            //输入数据中有不合法的字符
//            return new ModelAndView("register", map);
        if (user.getUserLoginId() == null) {
            msg = "请输入账号";
            model.addAttribute("msgId", msg);
            return new ModelAndView("register");
        } else if (user.getUserLoginPwd() == null) {
            msg = "请输入密码";
            model.addAttribute("msgPwd", msg);
            return new ModelAndView("register");
        } else if (userLoginPwdConfirm == null) {
            msg = "请重新输入一次密码";
            model.addAttribute("msgPwdCon", msg);
            return new ModelAndView("register");
        } else {
            //cookie在服务器中存储的时间 20表示测试
            final int maxCookieAge = 20;
            Cookie cookieId = new Cookie("registerCookieId", user.getUserLoginId());
            Cookie cookiePwd = new Cookie("registerCookiePwd", user.getUserLoginPwd());
            Cookie cookieConPwd = new Cookie("registerCookieConPwd", userLoginPwdConfirm);
            cookieConPwd.setMaxAge(maxCookieAge);
            cookieId.setMaxAge(maxCookieAge);
            cookiePwd.setMaxAge(maxCookieAge);
            response.addCookie(cookieId);
            response.addCookie(cookiePwd);
            response.addCookie(cookieConPwd);
            int confirm = userService.registerConfirm(user.getUserLoginId());
            if (confirm == 0) {
                if (user.getUserLoginPwd().equals(userLoginPwdConfirm)) {
                    int type = userService.register(user);
                    if (type == 1) {
                        //返回注册成功界面
                        return new ModelAndView("index");
                    } else {
                        //注册失败，返回重新注册
                        return new ModelAndView("register");
                    }
                } else {
                    msg = "密码不一致，请重新输入";
                    model.addAttribute("msgPwdCon", msg);
                    return new ModelAndView("register");
                }
            } else {
                //账号已经被注册
                msg = "账号已经被注册";
                model.addAttribute("msgId", msg);
                return new ModelAndView("register");
            }
        }
    }

}
