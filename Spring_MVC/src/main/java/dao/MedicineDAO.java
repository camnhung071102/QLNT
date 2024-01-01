package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.Medicine;
import util.HibernateUtil;

import java.util.List;

@Repository
public class MedicineDAO {

    @Autowired
    private static SessionFactory sessionFactory;

    public void saveMedicine(Medicine medicine) {
        Session session = sessionFactory.getCurrentSession();
        session.save(medicine);
    }

    public static List<Medicine> getAllMedicine() {
        Session session = sessionFactory.getCurrentSession();
        Query<Medicine> query = session.createQuery("FROM Medicine", Medicine.class);
        return query.getResultList();
    }

    // Các phương thức khác như updateMedicine(), deleteMedicine(),...

}