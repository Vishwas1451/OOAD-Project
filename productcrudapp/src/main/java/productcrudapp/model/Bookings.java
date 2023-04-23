package productcrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bookings {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String studName = "Vinti Agarwal";
	private String eventName;
	private String price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudName() {
		return studName;
	}
	public void setStudName(String studName) {
		this.studName = studName;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Bookings [id=" + id + ", studName=" + studName + ", eventName=" + eventName + ", price=" + price + "]";
	}
	public Bookings() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bookings(int id, String studName, String eventName, String price) {
		super();
		this.id = id;
		this.studName = studName;
		this.eventName = eventName;
		this.price = price;
	}
	
	
}
