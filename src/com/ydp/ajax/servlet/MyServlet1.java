package com.ydp.ajax.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class MyServlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String data = "{\"name\":\""+name+"\",\"age\":\""+age+"\"}";
//        String data1 = "{\"name\":\"zhangsan\",\"age\":\"18\"}";
        PrintWriter writer = resp.getWriter();
        writer.print(data);
        writer.flush();
    }
}
