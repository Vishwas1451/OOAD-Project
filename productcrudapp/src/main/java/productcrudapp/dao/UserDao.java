package productcrudapp.dao;



import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.User;

@Component
public class UserDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	//create
	@Transactional
	public void createUser(User user) {
		this.hibernateTemplate.save(user);
	}
	
	//get all users
	public List<User> getUsers(){
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		return users;
	}
	
	//get a single user
	public User getUser(int eid) {
		return this.hibernateTemplate.get(User.class, eid);
	}
	
	//delete the single product
		@Transactional
		public void deleteUser(int eid) {
			User u = this.hibernateTemplate.load(User.class, eid);
			this.hibernateTemplate.delete(u);
		}
}
