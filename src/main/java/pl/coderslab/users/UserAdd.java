package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;
import pl.coderslab.utils.Validator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPassword = request.getParameter("userPassword");
        Validator validator=new Validator();

        if (userName.isEmpty() || userEmail.isEmpty() || userPassword.isEmpty()) {
            validator.setNotEmptyParameters(request, userName, userEmail, userPassword);
            validator.setWarningMessage(request,"Wszystkie pola muszą być wypełnione.");
            getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
        } else {
            User newUser = new User();
            newUser.setUserName(userName);
            newUser.setEmail(userEmail);
            newUser.setPassword(userPassword);
            newUser = userDao.create(newUser);
            response.sendRedirect(request.getContextPath() + "/user/list");
        }
    }


}
