package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.BookingsDao;
import productcrudapp.dao.ProductDao;
import productcrudapp.dao.UserDao;
import productcrudapp.model.Bookings;
import productcrudapp.model.Product;
import productcrudapp.model.User;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private BookingsDao bookingsDao;
	
	@RequestMapping("/")
	public String base() {
		
		return "index";
	}
	
	@RequestMapping("/welcome-page")
	public String home(Model m) {
		return "welcome";
	}
	
	@RequestMapping("/editEvents")
	public String editEvents(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("products", products);
		
		
		return "editEvents";
	}
	
	@RequestMapping("/editBookings")
	public String editBookings(Model m) {
		List<Bookings> bookings = bookingsDao.getBookings();
		m.addAttribute("bookings", bookings);
		
		
		return "editEvents";
	}
	
	@RequestMapping("/editUsers")
	public String editUsers(Model m) {
		List<User> users = userDao.getUsers();
		m.addAttribute("users", users);
		
		
		return "editUsers";
	}
	
	@RequestMapping("/event-disp")
	public String eventDisp(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("products", products);
		
		
		return "events_disp";
	}
	
	@RequestMapping("/user-login")
	public String loginPage() {
		return "user_login";
	}
	
	@RequestMapping("/user-signup")
	public String signUpPage() {
		return "user_signup";
	}
	
	//handling login failed
	@RequestMapping("/login-failed")
	public String loginFail() {
		return "user_signup";
	}
	
//	handle add product form
	
	
	@RequestMapping(value="/handle-user-signup", method=RequestMethod.POST)
	public RedirectView addUser(@ModelAttribute User user, HttpServletRequest request, Model m) {
		System.out.println("THis is the user: "+user);
		userDao.createUser(user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/user-login");
		return redirectView;
	}
	
	@RequestMapping("/handle-user-login")
	public RedirectView handleUser(HttpServletRequest request, HttpServletResponse response, Model m) {
		RedirectView redirectView = new RedirectView();
		String username = request.getParameter("userId");
		String password = request.getParameter("userPwd");
		
		if(username!=null && ! username.equals("") && username.equals("vinti385") && password!=null && !password.equals("") && password.equals("vinti")) {
			
			redirectView.setUrl(request.getContextPath() + "/event-disp");
			return redirectView;
		}
		else {
			redirectView.setUrl(request.getContextPath() + "/login-failed");
		}
		return redirectView;
	}
	
	@RequestMapping("/handle-admin-login")
	public String handleAdmin(HttpServletRequest request, HttpServletResponse response, Model m) {
		String username = request.getParameter("adminId");
		String password = request.getParameter("adminPwd");
		if(username!=null && ! username.equals("") && username.equals("raghav375") && password!=null && !password.equals("") && password.equals("raghav")) {
			List<Product> products = productDao.getProducts();
			m.addAttribute("products", products);
			return "welcome";
		}
		else {
			return "login_failed";
		}
	}
	
	//show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m){
		m.addAttribute("title","Add Product");
		return "add_product_form";
	}
	
//	handle add product form
	
	@RequestMapping(value="/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request, Model m) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/welcome-page");
		return redirectView;
	}
	
	//view event handler
	@RequestMapping("/view-event/{productId}")
	public String viewEvent(@PathVariable("productId") int productId,HttpServletRequest request, Model m) {
		Product product = this.productDao.getProduct(productId);
		//System.out.println(product);
		m.addAttribute("product", product);
		return "view_event";
	}
	
	//bookings handler
		@RequestMapping(value = "/view-event/book-event", method = RequestMethod.POST)
		public RedirectView bookEvent(@ModelAttribute Bookings booking,HttpServletRequest request, Model m) {
			bookingsDao.createBooking(booking);
			//System.out.println(product);
			m.addAttribute("booking", booking);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/booking-Confirmed");
			return redirectView;
		}
	//booking confirmed page
		@RequestMapping("/booking-Confirmed")
		public String bookingConfirmed() {
			return "bookingConfirmed";
		}
	

	
	//delete event
	@RequestMapping("/deleteEvent/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
		this.productDao.deleteProduct(productId);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath() + "/editEvents");
		return redirectView;
	}
	
	//delete bookings
		@RequestMapping("/deleteBooking/{bookingId}")
		public RedirectView deleteBooking(@PathVariable("bookingId") int bookingId,HttpServletRequest request) {
			this.bookingsDao.deleteBooking(bookingId);
			
			RedirectView redirectView = new RedirectView();
			
			redirectView.setUrl(request.getContextPath() + "/editBookings");
			return redirectView;
		}
		
		//delete user
				@RequestMapping("/deleteUser/{userId}")
				public RedirectView deleteUser(@PathVariable("userId") int userId,HttpServletRequest request) {
					this.userDao.deleteUser(userId);
					
					RedirectView redirectView = new RedirectView();
					
					redirectView.setUrl(request.getContextPath() + "/editUsers");
					return redirectView;
				}
}
