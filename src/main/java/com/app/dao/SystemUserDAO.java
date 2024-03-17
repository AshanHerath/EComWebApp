package com.app.dao;

import com.app.db.HibernateUtil;
import com.app.entity.User;
import com.app.util.MD5Utils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.persistence.NoResultException;

@Transactional
public class SystemUserDAO {

    @PersistenceContext
    private EntityManager entityManager;

    public void saveUser(User user) {
        entityManager.persist(user);
    }

    public User getUserById(Long userId) {
        return entityManager.find(User.class, userId);
    }

    public User authenticate(String email, String password) {
        try (Session session = HibernateUtil.getInstance().openSession()) {
            Transaction transaction = session.beginTransaction();
            String passwordEncrypt = MD5Utils.passwordEncrypt(password);
            System.out.println("Authentication = " + "email" + email + "Password = " + password);

            Query<User> query = session.createQuery("FROM User WHERE email = :email AND password = :password", User.class);
            query.setParameter("email", email);
            query.setParameter("password", passwordEncrypt);

            try {
                User authenticatedUser = query.getSingleResult();
                transaction.commit();
                return authenticatedUser;
            } catch (NoResultException e) {
                transaction.rollback();
                return null;
            }
        }
    }

}
