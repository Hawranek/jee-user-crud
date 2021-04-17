package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;
import pl.coderslab.utils.Validator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User readUser = userDao.read(Integer.parseInt(id));
        request.setAttribute("user", readUser);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        Validator validator = new Validator();
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPassword = request.getParameter("userPassword");
        String id = request.getParameter("id");
        User newUser = new User();
        newUser.setId(Integer.parseInt(id));
        newUser.setUserName(userName);
        newUser.setEmail(userEmail);
        newUser.setPassword(userPassword);
        if (userName.isEmpty() || userEmail.isEmpty() || userPassword.isEmpty()) {
            validator.setWarningMessage(request, "Wszystkie pola muszą być wypełnione.");
            request.setAttribute("user", newUser);
            getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);

        } else {
            userDao.update(newUser);
            response.sendRedirect(request.getContextPath() + "/user/list");

        }

    }
}
