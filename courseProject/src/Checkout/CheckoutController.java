package Checkout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/CheckoutController")
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

    public CheckoutController() {}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CheckoutDao c = new CheckoutDao();
		CheckoutDao d = new CheckoutDao();
		
		String price = request.getParameter("price");
		String title = request.getParameter("title");
		String link = request.getParameter("link");
		String author = request.getParameter("author");
		String ISBN = request.getParameter("ISBN");
		String submitType = request.getParameter("Add to cart");
		
		
		if(submitType.equals("Add to cart")) {
			c.add(title, price, link, author, ISBN);
			request.getRequestDispatcher("table.jsp").forward(request, response);
		}	
		else if(submitType.equals("remove"))
		{
			d.delete(title);
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		}
	}
	

}
