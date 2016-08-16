package com.company.project.domains.admin.home;

import com.company.project.domains.admin.home.entity.User;

import java.util.List;

/**
 * Created by Viki.Feng on 01/02/2016.
 */
public interface UserMapper {
    /**
     * Select User by Name
     *
     * @param name
     * @return user list
     */
    List<User> selectUserByName(String name);
}
