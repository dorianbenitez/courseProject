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
		
		//CustomerDao customerDao = new CustomerDaoImpl();
		
		CheckoutDao c = new CheckoutDao();
		String price = request.getParameter("price");
		String title = request.getParameter("title");
		String link = request.getParameter("link");
		String submitType = request.getParameter("Add to cart");
		c.add(title, price, link);
		
		
		if(submitType.equals("Add to cart")) {
			request.getRequestDispatcher("table.jsp").forward(request, response);
		}
		

	}

}
