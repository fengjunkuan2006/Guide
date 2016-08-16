package com.company.project.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Viki.Feng on 21/01/2016.
 */
@Controller
@RequestMapping("/home")
public class HomeWebController {
    private static final Logger logger = LoggerFactory.getLogger(HomeWebController.class);

    /**
     * Display Index Page
     *
     * @return
     */
    @RequestMapping("/indexPage")
    public String getIndexPage() {
        return "/index";
    }

    /**
     * Display About Page
     *
     * @return
     */
    @RequestMapping("/aboutPage")
    public String getAboutPage() {
        return "/about";
    }
}
