package com.codegym;

import javax.servlet.RequestDispatcher;
        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;
@WebServlet(name = "CustomerServlet", urlPatterns = "/login")
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("123456")) {
            RequestDispatcher rq = request.getRequestDispatcher("/list.jsp");
            rq.forward(request, response);
        } else {
            String error = "tai khoan hoac mat khau khong dung";
            request.setAttribute("error", error);
            RequestDispatcher rq = request.getRequestDispatcher("/index.jsp");
            rq.forward(request, response);
        }
    }
}
