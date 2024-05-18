/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Urtils.JspUtils;
import Urtils.UrlUtils;
import java.io.IOException;
import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Player;
import service.AuthSevice;

/**
 *
 * @author Long Dinh
 */
@WebServlet(urlPatterns = UrlUtils.LOGIN)
public class AutheServlet extends HttpServlet {
    AuthSevice authService = new AuthSevice();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(JspUtils.LOGIN).forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        switch (req.getServletPath()) {
            case UrlUtils.LOGIN:
                String username = req.getParameter("username");
                String password = req.getParameter("password");
                // logic login
                Player player = authService.login(username, password);
                if(player == null) {
                    req.setAttribute("errors", "Username or password is not correct");
                    req.getRequestDispatcher(JspUtils.LOGIN).forward(req,resp);
                } else {
                    req.getSession().setAttribute("currentUser", player);
                    resp.sendRedirect(req.getContextPath() + UrlUtils.GAME);
                }
                break;
            default:
                break;
        }
    }
}
