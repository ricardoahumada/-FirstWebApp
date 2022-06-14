package com.ricardo.controllers;

import com.ricardo.models.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/home")
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User pedro = new User(1L, "Peter", "p@p.com");
        User juana = new User(2L, "Juana", "j@j.com");

        String userId = req.getParameter("user");
        Long userIdL = 0L;
        String mensajeError=null;

        try {
            userIdL = Long.parseLong(userId);
        } catch (Exception e) {
            System.out.println("Error:" + e);
            mensajeError="Has introducido un identificador incorrecto!";
        }

        User usuarioAmostrar = null;
        if (userIdL == 1L) usuarioAmostrar = pedro;
        else if (userIdL == 2L) usuarioAmostrar = juana;

        req.setAttribute("unMensaje", mensajeError);
        req.setAttribute("unUsuario", usuarioAmostrar);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/jsp/home_el.jsp");
        dispatcher.forward(req, resp);
    }


}
