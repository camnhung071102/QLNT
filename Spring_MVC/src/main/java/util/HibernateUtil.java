package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
        	System.out.println("da tao tao sessionFactory");
            return new Configuration().configure().buildSessionFactory();
            
        } catch (Exception e) {
            System.out.println("loi khong the tao sessionFactory");
            return null;
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }
}