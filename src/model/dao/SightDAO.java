package model.dao;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import model.dto.SightDTO;
import model.entity.Sight;
import util.DBUtil;

public class SightDAO {
	public static List<SightDTO> selectAll() throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> all = null;
		System.out. println(1);

		try {
			all = (List<SightDTO>) em.createQuery("select s from Sight s").getResultList();
		} finally {
			em.close();
			em = null;
		}

		return all;
	}

	public static List<SightDTO> selectNullString(String Category, String Region) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> all = null;
		System.out.println(2);

		try {
			all = (List<SightDTO>) em.createQuery("select s from Sight s where sightRegion= " + Region + " and sightCategory= " + Category).getResultList();
		} finally {
			em.close();
			em = null;
		}

		return all;
	}

	public static List<SightDTO> selectRegionall(String category, String searchString) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		System.out.println(3);

		try {
			some = (List<SightDTO>) em.createQuery("select s from Sight s where sightCategory= " + category + " and sightname like '" + searchString + "%' or sightname like '%" + searchString + "' or sightname like '%" + searchString + "%'or sightcategory like '" + searchString + "%' or sightcategory like '%" + searchString + "' or sightcategory like '%" + searchString + "%'").getResultList();
		} finally {
			em.close();
			em = null;
		}

		return some;
	}

	public static List<SightDTO> selectCategoryall(String Region, String SearchString) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;

		try {
			some = (List<SightDTO>) em.createQuery("select s from Sight s where sightRegion= " + Region + " and sightname like '" + SearchString + "%' or sightname like '%" + SearchString + "' or sightname like '%" + SearchString + "%'or sightRegion like '" + SearchString + "%'" + "or sightRegion like '%" + SearchString + "'" + "or sightRegion like '%" + SearchString + "%'").getResultList();
			System.out.println(4);
		} finally {
			em.close();
			em = null;
		}

		return some;
	}

	public static List<SightDTO> selectOnlyString(String SearchString) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;

		try {
			some = (List<SightDTO>) em.createQuery("select s from Sight s where sightname like '" + SearchString + "%' or sightname like '%" + SearchString + "' or sightname like '%" + SearchString + "%' or sightRegion like '" + SearchString + "%' or sightRegion like '%" + SearchString + "' or sightRegion like '%" + SearchString + "%' or sightcategory like '" + SearchString + "%' or sightcategory like '%" + SearchString + "' or sightcategory like '%" + SearchString + "%'").getResultList();
			System.out.println(5);
		} finally {
			em.close();
			em = null;
		}

		return some;
	}

	public static List<SightDTO> selectOnlyRegion(String SearchString) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;

		try {
			some = (List<SightDTO>) em.createQuery("select s from Sight s where sightRegion= " + SearchString).getResultList();
			System.out.println(6);
		} finally {
			em.close();
			em = null;
		}

		return some;
	}

	public static List<SightDTO> selectOnlyCategory(String Category) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		try {
			some = (List<SightDTO>) em.createQuery("select s from Sight s where sightCategory= " + Category).getResultList();
			System.out.println(7);
		} finally {
			em.close();
			em = null;
		}

		return some;
	}

	public static List<SightDTO> select(String Region, String Category, String SearchString) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;

		try {
			some = (List<SightDTO>) em.createQuery("select s from Sight s where sightRegion= " + Region + " and sightCategory= " + Category + " and sightname like '" + SearchString + "%' or sightname like '%" + SearchString + "' or sightname like '%" + SearchString + "%'").getResultList();
			System.out.println(8);
		} finally {
			em.close();
			em = null;
		}

		return some;
	}

	public static void insert(String id, String name, String Region, String Category, String url) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		
		try {
			if (em.find(Sight.class, id) == null) {
				tx.begin();
				Sight s1 = new Sight(id, name, Region, Category, url);
				em.persist(s1);
				tx.commit();
				System.out.println(em.find(Sight.class, id));
			} else {
				System.out.println("망했어요");
				System.out.println(em.find(Sight.class, id));
			}
	
		} catch(Exception e) {
				tx.rollback();
		} finally {
			em.close();
			em = null;
		}
	
	}
}
