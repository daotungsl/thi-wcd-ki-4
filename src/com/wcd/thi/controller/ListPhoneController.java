package com.wcd.thi.controller;

import com.wcd.thi.entity.Phone;
import com.wcd.thi.model.PhoneModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListPhoneController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        PhoneModel phoneModel = new PhoneModel();
        List<Phone> listPhone = phoneModel.getAllPhone();
        req.setAttribute("listPhone", listPhone);
        req.getRequestDispatcher("listphone.jsp").forward(req, resp);
    }
}
