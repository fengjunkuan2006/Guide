package com.company.project.common.util;

import com.company.project.common.constant.SystemConstants;
import com.company.project.domains.admin.home.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Viki.Feng on 10/03/2016.
 */
public class SessionUtil {
    private static final Logger logger = LoggerFactory.getLogger(SerializeUtil.class);

    public static User getSessionUser(HttpServletRequest request) {
        try {
            byte[] bytes = (byte[])request.getSession().getAttribute(SystemConstants.USER_SESSION);
            if (bytes != null) {
                return (User)SerializeUtil.unserialize(bytes);
            }
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        }

        return null;
    }
}
