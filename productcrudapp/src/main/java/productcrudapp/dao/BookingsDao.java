package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Bookings;

@Component
public class BookingsDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createBooking(Bookings booking) {
		this.hibernateTemplate.save(booking);
	}
	
	//get all products
	public List<Bookings> getBookings(){
		List<Bookings> bookings = this.hibernateTemplate.loadAll(Bookings.class);
		return bookings;
	}
	
	//delete single product
	@Transactional
	public void deleteBooking(int bid) {
		Bookings b = this.hibernateTemplate.load(Bookings.class, bid);
		this.hibernateTemplate.delete(b);
	}
	
}
