
package Book;




public interface BookDao {
	public int register(Book b);
	public int delete(Book f);
	
	/*
	 * Retrieve the book object from the database
	 */
	public Book validateBook(String title, String author, String isbn, double price);

	public void delete(String title);
	
	
}
