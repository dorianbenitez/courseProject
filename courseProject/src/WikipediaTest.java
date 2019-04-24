import org.junit.*;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import db.DbManager;

public class WikipediaTest {
WebDriver driver;


@Before
public void openWikipediaEnglishPage() throws InterruptedException{
System.setProperty("webdriver.chrome.driver","chromedriver");
driver = new ChromeDriver();
driver.get("http://localhost:8080/courseProject/login.jsp");
Assert.assertEquals("Login Page", driver.getTitle());
}


@Test	
public void customerUser() throws InterruptedException{

	Thread.sleep(2000);
	
	
	
//Sign in fail
	WebElement userBox = driver.findElement(By.id("username"));
	userBox.sendKeys("sign in fail");
	Thread.sleep(500);

	WebElement passBox = driver.findElement(By.id("password"));
	passBox.sendKeys("fail");
	Thread.sleep(3000);
	WebElement link = driver.findElement(By.id("send"));
	link.click();
	Thread.sleep(3000);
//End of sign in fail

	
//Register User
WebElement firstName = driver.findElement(By.id("first"));
firstName.sendKeys("Group");
Thread.sleep(300);

WebElement lastName = driver.findElement(By.id("last"));
lastName.sendKeys("9");
Thread.sleep(300);

WebElement  username = driver.findElement(By.id("user"));
username.sendKeys("group9");
Thread.sleep(300);

WebElement password = driver.findElement(By.id("pass1"));
password.sendKeys("group9");
Thread.sleep(300);

WebElement retype = driver.findElement(By.id("pass2"));
retype.sendKeys("group9");
Thread.sleep(3000);

WebElement register = driver.findElement(By.id("register"));
register.click();
Thread.sleep(3000);
// end of register



// Success sign in
WebElement user = driver.findElement(By.id("username"));
user.sendKeys("group9");
Thread.sleep(500);

WebElement pass = driver.findElement(By.id("password"));
pass.sendKeys("group9");
Thread.sleep(3000);
WebElement send = driver.findElement(By.id("send"));
send.click();
Thread.sleep(3000);
// End of success sign in



// Shop books
WebElement shop = driver.findElement(By.id("shop"));
shop.click();

Thread.sleep(2000);

((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, 600)");
Thread.sleep(2000);

List<WebElement> addToCart = driver.findElements(By.id("addToCart"));
WebElement add = addToCart.get(5);
add.click();
Thread.sleep(1000);


((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, 600)");
Thread.sleep(2000);


List<WebElement> addToCart2 = driver.findElements(By.id("addToCart"));
WebElement add2 = addToCart2.get(6);
add2.click();
Thread.sleep(2000);

((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, 1100)");
Thread.sleep(2000);


List<WebElement> addToCart3 = driver.findElements(By.id("addToCart"));
WebElement add3 = addToCart3.get(10);
add3.click();

Thread.sleep(3000);
WebElement checkout = driver.findElement(By.id("checkout"));
checkout.click();
// End of shop books



// Remove books from cart
Thread.sleep(2000);

((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(2000);

List<WebElement> removeCart = driver.findElements(By.id("remove"));
WebElement remove = removeCart.get(1);
remove.click();
Thread.sleep(2000);
// end of remove book from cart



// Final checkout click
((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");


Thread.sleep(3000);
WebElement finalCheckout = driver.findElement(By.id("finalCheckout"));
finalCheckout.click();
// End of final checkout page



//payment info

Thread.sleep(1000);
((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(2000);



WebElement cardType = driver.findElement(By.id("mastercard"));
cardType.click();
Thread.sleep(500);

WebElement nameOnCard = driver.findElement(By.id("nameOnCard"));
nameOnCard.sendKeys("Group 9");
Thread.sleep(500);

WebElement cardNo = driver.findElement(By.id("cardNo"));
cardNo.sendKeys("5275150189231538");
Thread.sleep(500);

WebElement  cardExpDate = driver.findElement(By.id("cardExpDate"));
cardExpDate.sendKeys("02/23");
Thread.sleep(500);

WebElement CVV = driver.findElement(By.id("cvv"));
CVV.sendKeys("256");
Thread.sleep(500);

WebElement email = driver.findElement(By.id("email"));
email.sendKeys("group9@gmail.com");
Thread.sleep(500);

WebElement phone = driver.findElement(By.id("phone"));
phone.sendKeys("555-412-6187");
Thread.sleep(500);

WebElement city = driver.findElement(By.id("city"));
city.sendKeys("Richardson");
Thread.sleep(500);

WebElement state = driver.findElement(By.id("texas"));
state.click();
Thread.sleep(500);

WebElement zip = driver.findElement(By.id("zip"));
zip.sendKeys("75080");
Thread.sleep(3000);


WebElement submitPayment = driver.findElement(By.id("submitPayment"));
submitPayment.click();

// End of payment info




// Successful Payment
Thread.sleep(4000);
WebElement goHome = driver.findElement(By.id("goHome"));
goHome.click();
// End of success payment 



// Customer logout
Thread.sleep(2000);
WebElement cLogout = driver.findElement(By.id("cLogout"));
cLogout.click();
// End of customer logout



// Admin portal and login
Thread.sleep(3500);
WebElement adminPortal = driver.findElement(By.id("adminPortal"));
adminPortal.click();

Thread.sleep(2000);

WebElement adminUser = driver.findElement(By.id("adminUser"));
adminUser.sendKeys("dorian");
Thread.sleep(600);

WebElement adminPass = driver.findElement(By.id("adminPass"));
adminPass.sendKeys("dorian");
Thread.sleep(2000);

WebElement adminLogin = driver.findElement(By.id("adminLogin"));
adminLogin.click();
// End of admin login







// admin browse books and sees book missing on third page

Thread.sleep(2000);



WebElement browse = driver.findElement(By.id("browseBooks"));
browse.click();
Thread.sleep(1500);


((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(1000);



WebElement page33 = driver.findElement(By.id("page3"));
page33.click();
Thread.sleep(2000);

((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(3000);


WebElement Back = driver.findElement(By.id("goBack2"));
Back.click();
Thread.sleep(1500);

WebElement Back2 = driver.findElement(By.id("goBack3"));
Back2.click();
Thread.sleep(1500);

// end of admin browse books 




//admin add book

Thread.sleep(2000);
WebElement updateBook = driver.findElement(By.id("updateBook"));
updateBook.click();
Thread.sleep(1000);


((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(1500);


WebElement title = driver.findElement(By.id("title"));
title.sendKeys("The Catcher in the Rye");
Thread.sleep(600);


WebElement author = driver.findElement(By.id("author"));
author.sendKeys("J.D. Salinger");
Thread.sleep(600);

WebElement isbn = driver.findElement(By.id("isbn"));
isbn.sendKeys("9789544430283");
Thread.sleep(600);

WebElement price = driver.findElement(By.id("price"));
price.sendKeys("12.99");
Thread.sleep(600);

WebElement cover = driver.findElement(By.id("link"));
cover.sendKeys("https://img.buzzfeed.com/buzzfeed-static/static/enhanced/webdr01/2013/3/25/12/enhanced-buzz-23705-1364227511-13.jpg?downsize=700:*&output-format=auto&output-quality=auto");
Thread.sleep(1500);

WebElement addBook = driver.findElement(By.id("addBook"));
addBook.click();

// end of add book



// admin browse books to see new book added to table
Thread.sleep(2000);


WebElement browseBooks = driver.findElement(By.id("browseBooks"));
browseBooks.click();
Thread.sleep(1500);


((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(1000);



WebElement page3 = driver.findElement(By.id("page3"));
page3.click();
Thread.sleep(2000);

((JavascriptExecutor) driver)
.executeScript("window.scrollTo(0, document.body.scrollHeight)");
Thread.sleep(2000);

List<WebElement> detail = driver.findElements(By.id("detail"));
WebElement stuff = detail.get(19);
stuff.click();
// end of admin browse books and checks details of newly added book

// admin logout
Thread.sleep(4000);

WebElement goBack = driver.findElement(By.id("goBack"));
goBack.click();
Thread.sleep(2000);

WebElement goBack2 = driver.findElement(By.id("goBack2"));
goBack2.click();
Thread.sleep(2000);


WebElement goBack3 = driver.findElement(By.id("goBack3"));
goBack3.click();
Thread.sleep(2000);


WebElement home = driver.findElement(By.id("home"));
home.click();
Thread.sleep(2000);

WebElement aLogout = driver.findElement(By.id("aLogout"));
aLogout.click();
Thread.sleep(1000);
// end of admin logout

}





}