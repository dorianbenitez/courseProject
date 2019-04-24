package Book;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/addBook")
public class addBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookDao bdao = new BookDaoImpl();
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String isbn = request.getParameter("ISBN");
		String price = request.getParameter("price");
		String link = request.getParameter("link");
		

		String submitType = request.getParameter("submit");
		
		/*
		
		if(submitType.equals("submit") && b!=null && b.getTitle()!="" && b.getAuthor()!="" && b.getISBN()!="" && b.getLink()!="" && b.getPrice()!=""){ 
			request.setAttribute("yesMessage", b.getTitle() +" by " + b.getAuthor()+ " (ISBN: "+b.getISBN() + ") has been added successfully!");
			request.getRequestDispatcher("addBook.jsp").forward(request, response);		
		}
		*/
		
		if(submitType.equals("submit") && title!="" && author !="" && isbn!="" && link!="" && price!=""){ 
			Book b = new Book(title, author, isbn, price, link);
			
			bdao.register(b);
			request.setAttribute("yesMessage", b.getTitle() +" by " + b.getAuthor()+ " (ISBN: "+b.getISBN() + ") has been added successfully!");
			request.getRequestDispatcher("addBook.jsp").forward(request, response);		
		}
		else{
		request.setAttribute("noMessage", "Unsuccessful entry. Please try again (make sure to fill out all fields)");
		request.getRequestDispatcher("addBook.jsp").forward(request, response);
			}
	}
}