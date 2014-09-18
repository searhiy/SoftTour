package com.softserveinc.softtour.service.Impl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.softserveinc.softtour.repository.UserDao;
import com.softserveinc.softtour.entity.Role;
import com.softserveinc.softtour.entity.User;
import com.softserveinc.softtour.entity.template.Sex;
import com.softserveinc.softtour.service.UserService;

/**
 * @author Andriy
 * 	Contains the methods for work with table User in the SoftTour database
 *  Supports a transaction
 */
@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly = true)
public class UserServiceImpl implements UserService {

	private UserDao userDao;

	/**
	 * Sets the userDao object
	 * @param userDao - object of the class UserDaoImpl
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * Saves the object user to the table User
	 * Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void save(String name, String email, String password, Date birthday,
			byte age, Sex sex, String phone, Role role) {
		userDao.save(name, email, password, birthday, age, sex, phone, role);
	}

	/**
	 *  Updates the object user with the specified id
	 *  id - id of the object user which will updated
	 *  Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void update(long id, String name, String email, String password,
			Date birthday, byte age, Sex sex, String phone, Role role) {

		userDao.update(id, name, email, password, birthday, age, sex, phone,
				role);
	}

	/**
	 *  Deletes the object user with the specified id
	 *  id - id of the object user which will deleted
	 *  Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void delete(long id) {
		userDao.delete(id);
	}

	/**
	 *  Returns the object user with the specified id
	 *  id - id of the object user which will returned
	 *  Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public User findById(long id) {
		return userDao.findById(id);
	}

	/**
	 *  Returns list of the objects user with the specified name or names
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByName(String...name) {
		return userDao.findByName(name);
	}
	
	/**
	 *  Returns list of the objects user with the specified email or emails
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByEmail(String... email) {
		return userDao.findByEmail(email);
	}
	
	/**
	 *  Returns list of the objects user with the specified password or passwords
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByPassword(String... password) {
		return userDao.findByPassword(password);
	}
	
	/**
	 *  Returns list of the objects user with the specified birthday or birthdays
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByBirthday(Date... birthday) {
		return userDao.findByBirthday(birthday);
	}
	
	/**
	 *  Returns list of the objects user with the specified age
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByAge(Byte... age) {
		return userDao.findByAge(age);
	}
	
	/**
	 *  Returns list of the objects user with the specified sex
	 *   Supports a transaction
	 */
		@Override
		@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findBySex(Sex sex) {
		return userDao.findBySex(sex);
	}
		
	/**
	 *  Returns list of the objects user with the specified phone or phones
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByPhone(String... phone) {
		return userDao.findByPhone(phone);
	}
		
	/**
	 *  Returns the list of the objects user which contain the specified object or objects role
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findByRole(Role...role) {
		return userDao.findByRole(role);
	}
	
	/**
	 *  Returns the list of all objects user which are contained in the table User
	 *   Supports a transaction
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> getAll() {
		return userDao.getAll();
	}

}
