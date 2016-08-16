package com.company.project.service.admin.home.impl;

import com.company.project.common.constant.home.UserResultCodes;
import com.company.project.common.model.CommonResultModel;
import com.company.project.common.util.EncryptUtil;
import com.company.project.domains.admin.home.UserMapper;
import com.company.project.domains.admin.home.entity.User;
import com.company.project.service.admin.home.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Viki.Feng on 01/02/2016.
 */
@Service
public class UserServiceImpl implements IUserService {
    private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    UserMapper userMapper;

    /**
     * Verify User Credential
     *
     * @return CommonResultModel
     */
    public CommonResultModel verifyCredential(User user) {
        CommonResultModel result = new CommonResultModel();

        // check user object
        if(user == null) {
            result.setCode(UserResultCodes.PARAM_NULL);
            result.setMessage("Invalid user credential");
            return result;
        }

        try {
            List<User> users = userMapper.selectUserByName(user.getUsername());
            // check username
            if (users != null && users.size() > 0) {
                // check password
                if (users.get(0).getPassword().equals(EncryptUtil.getMD5(user.getPassword()))) {
                    result.setCode(UserResultCodes.SUCCESS);
                } else {
                    result.setCode(UserResultCodes.PASSWORD_ERROR);
                    result.setMessage("Invalid password");
                }
            } else {
                result.setCode(UserResultCodes.USERNAME_ERROR);
                result.setMessage("Invalid username");
            }
        } catch (Exception e) {
            result.setCode(UserResultCodes.ERROR);
            result.setMessage("Server error");
        }

        return result;
    }
}
