package tw.com.msig.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import tw.com.msig.entity.Leave;
import tw.com.msig.entity.Policy;
import tw.com.msig.entity.Security;

public class LeaveDao {

	private SessionFactory factory;

	public List<Leave> findAll() {
		Session session = factory.getCurrentSession();
		return (List<Leave>) session.createQuery("from Leave").list();
	}

	public void insert(Leave leave) {
		factory.getCurrentSession().save(leave);
	}

	public void update(Leave leave) {
		factory.getCurrentSession().update(leave);
	}

	public void delete(Leave leave) {
		factory.getCurrentSession().delete(leave);
	}

	public Policy findOne(String id) {
		Session session = factory.getCurrentSession();
		return (Policy) session.get(Security.class, id);
	}
}
