package com.company.project.service.admin.home;

import com.company.project.common.model.CommonResultModel;
import com.company.project.domains.admin.home.entity.User;

/**
 * Created by Viki.Feng on 01/02/2016.
 */
public interface IUserService {
    /**
     * Verify User Credential
     *
     * @param user
     * @return CommonResultModel
     */
    CommonResultModel verifyCredential(User user);
}