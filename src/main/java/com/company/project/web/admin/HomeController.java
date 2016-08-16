package com.company.project.web.admin;

import com.company.project.common.constant.SystemConstants;
import com.company.project.common.model.CommonResultModel;
import com.company.project.domains.admin.home.entity.User;
import com.company.project.service.admin.home.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

/**
 * Created by Viki.Feng on 21/01/2016.
 */
@Controller
@RequestMapping("/admin/home")
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    IUserService userService;
    @Autowired
    CookieLocaleResolver resolver;

    /**
     * Display Index Page
     *
     * @return
     */
    @RequestMapping("/indexPage")
    public String getHomePage() {
        return "/admin/index";
    }

    /**
     * Display Login Page
     *
     * @return
     */
    @RequestMapping("/signInPage")
    public String getLoginPage() {
        return "/admin/signIn";
    }

    /**
     * Display Sign-Up Page
     *
     * @return
     */
    @RequestMapping("/signUpPage")
    public String getSignUpPage() {
        return "/admin/signUp";
    }

    /**
     * Display User Page
     *
     * @return
     */
    @RequestMapping("/userPage")
    public String getUserPage() {
        return "/admin/user";
    }

    /**
     * User Login
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public CommonResultModel login(@RequestBody User user) {
        return userService.verifyCredential(user);
    }

    @RequestMapping(value = "/language/{language}")
    public String changeLanguage(@PathVariable("language") String language, String originalUrl, HttpServletRequest request, HttpServletResponse response) {
        if (language == null || language.equals("")) {
            return "redirect:" + originalUrl;
        } else {
            if (language.equals(SystemConstants.LANGUAGE_CODE_ZH)) {
                resolver.setLocale(request, response, new Locale(language));
            } else {
                resolver.setLocale(request, response, Locale.ENGLISH);
            }
        }
        request.getSession().setAttribute(SystemConstants.LANGUAGE, language);
        return "redirect:" + originalUrl;
    }
}
