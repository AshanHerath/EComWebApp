package com.app.db;


import com.app.entity.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import java.util.Properties;


public class HibernateUtil {
    private static HibernateUtil hibernateUtil;
    private final static SessionFactory sessionFactory=buildSessionFactory();
    private HibernateUtil(){}
    public static HibernateUtil getInstance(){
        return (hibernateUtil==null?hibernateUtil=new HibernateUtil():hibernateUtil);
    }
    private static SessionFactory buildSessionFactory(){
        StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder()
                .configure("hibernate.cfg.xml")
                .build();
        Metadata metadata = new MetadataSources(standardRegistry)
                .addAnnotatedClass(User.class)
                .addAnnotatedClass(Employee.class)
                .addAnnotatedClass(Customer.class)
                .addAnnotatedClass(Cart.class)
                .addAnnotatedClass(CartItem.class)
                .addAnnotatedClass(Category.class)
                .addAnnotatedClass(Order.class)
                .addAnnotatedClass(OrderItem.class)
                .addAnnotatedClass(Product.class)
                .addAnnotatedClass(Status.class)
                .addAnnotatedClass(Payment.class)
                .addAnnotatedClass(Shipment.class)
                .getMetadataBuilder()
                .applyImplicitNamingStrategy(ImplicitNamingStrategyJpaCompliantImpl.INSTANCE)
                .build();
        return metadata.getSessionFactoryBuilder()
                .build();
    }
    public Session openSession(){
        return sessionFactory.openSession();
    }
}
