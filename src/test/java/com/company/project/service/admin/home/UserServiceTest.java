package com.company.project.service.admin.home;

import com.company.project.common.constant.ResultCodes;
import com.company.project.common.model.CommonResultModel;
import com.company.project.domains.admin.home.entity.User;
import com.company.project.service.AbstractTestContext;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContext;

/**
 * Created by Viki.Feng on 02/02/2016.
 */
public class UserServiceTest extends AbstractTestContext {
    @Autowired
    IUserService userService;
    @Autowired
    ServletContext context;

    @Test
    public void getUserByName() {
        User user = new User();
        user.setUsername("admin");
        user.setPassword("123456");

        CommonResultModel result = userService.verifyCredential(user);

        Assert.assertTrue(result.getCode() == ResultCodes.SUCCESS);
    }

}