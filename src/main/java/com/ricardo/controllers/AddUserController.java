package com.ricardo.controllers;

import com.ricardo.models.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/users/add")
public class AddUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("***** Entra en doGet!!");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/jsp/create_user.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user_name = req.getParameter("user_name");
        String user_email = req.getParameter("user_email");

        System.out.println("***** Entra en doPost!!" + user_name + "::" + user_email);

        User newuser = new User(user_name, user_email);

        // si valido -> insertar en bbdd & redirigir a home
        //si no -> mostar form con errores
        if (newuser.isValid()) {
            //almacenar en bbddd
            resp.sendRedirect(req.getContextPath() + "/home");
        } else {
            req.setAttribute("error","Completa el formulario con todos los datos en formato correcto!");
            req.setAttribute("usuario",newuser);
            doGet(req, resp);
        }
    }

}
