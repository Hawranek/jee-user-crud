package pl.coderslab.utils;

import javax.servlet.http.HttpServletRequest;

public class Validator {


    public void setWarningMessage(HttpServletRequest request, String message) {
        request.setAttribute("message", message);
    }

    public void setNotEmptyParameters(HttpServletRequest request, String userName, String userEmail, String userPassword) {
        if (!userName.isEmpty()) {
            request.setAttribute("userName", userName);
        }
        if (!userEmail.isEmpty()) {
            request.setAttribute("userEmail", userEmail);
        }
        if (!userPassword.isEmpty()) {
            request.setAttribute("userPassword", userPassword);
        }
    }
}