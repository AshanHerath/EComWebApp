package com.app.controller.user;

import com.app.dao.SystemUserDAO;
import com.app.dto.SystemUserDTO;
import com.app.entity.User;
import org.apache.log4j.Logger;

import javax.transaction.Transactional;

@Transactional
public class SystemUserController {

    private final SystemUserDAO userDAO;
    private static final Logger LOGGER = Logger.getLogger(SystemUserController.class);
    public SystemUserController(SystemUserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public SystemUserDTO authenticateUser(SystemUserDTO userDTO) {
        try {
            User user = userDAO.authenticate(userDTO.getEmail(), userDTO.getPassword());

            if (user != null) {
                SystemUserDTO authenticatedUser = new SystemUserDTO();
                authenticatedUser.setUserID(user.getUserID());
                authenticatedUser.setUsername(user.getUsername());
                authenticatedUser.setUserType(user.getUserType());
                authenticatedUser.setEmail(user.getEmail());
                return authenticatedUser;
            }
        } catch (Exception e) {
            LOGGER.error("Error during user authentication: " + e.getMessage(), e);
        }

        return null;
    }

}
