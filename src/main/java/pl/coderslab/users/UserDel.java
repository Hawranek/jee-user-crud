package pl.coderslab.users;

import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class UserDel extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        //przekazanie parametru user do widoku, w celu potwierdzenia usunięcia
        request.setAttribute("user", userDao.read(Integer.parseInt(id)));
        getServletContext().getRequestDispatcher("/users/del.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        userDao.delete(Integer.parseInt(id));           //usunięcie usera o podanym id
        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}
