package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/*@WebServlet("/HelloServlet") // Servlet URI Annotation.*/
public class HelloServlet extends HttpServlet {

    // Constructor.
    public HelloServlet() {

    }

    // GET Method.
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Encoding, ContentType Settings.
        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html; charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        // Request Parameter.
        String name = req.getParameter("name");

        // Response Contents.
        out.println("<html><body>");
        out.println("<h2>doGet() Method</h2>");
        out.println("<h3>" + name + "</h3>");
        out.println("</body></html>");
        out.close();
    }

    // POST Method.
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Encoding, ContentType Settings.
        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html; charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        // Request Parameter.
        String name = req.getParameter("name");

        // Response Contents.
        out.println("<html><body>");
        out.println("<h2>doPost() Method</h2>");
        out.println("<h3>" + name + "</h3>");
        out.println("</body></html>");
        out.close();
    }

}
