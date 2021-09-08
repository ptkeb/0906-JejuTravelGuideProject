package model.dao;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;

import model.dto.SightDTO;
import model.entity.Sight;
import util.DBUtil;

public class SightDAO {
	public static List<SightDTO> selectAll() throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> all = null;
		
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
			all = (List<SightDTO>)em.createQuery("select s from Sight s").getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return all;
	}
	
	public static List<SightDTO> selectNullString(String Category, String Region) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> all = null;
		
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
			all = (List<SightDTO>)em.createQuery("select s from Sight s where sightRegion= "+Region+" and sightCategory= "+Category).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return all;
	}
	
	public static List<SightDTO> selectRegionall(String Category, String SearchString) throws SQLException	{
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
//			some = (List<SightDTO>)em.createQuery("select from Dept where "+ C).getResultList();
			some = (List<SightDTO>)em.createQuery("select s from Sight s where sightCategory= "+Category+" and sightName= "+SearchString).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return some;
	}
	
	public static List<SightDTO> selectCategoryall(String Region, String SearchString) throws SQLException	{
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
//			some = (List<SightDTO>)em.createQuery("select from Dept where "+ C).getResultList();
			some = (List<SightDTO>)em.createQuery("select s from Sight s where sightRegion= "+Region+" and sightName= "+SearchString).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return some;
	}
	public static List<SightDTO> selectOnlyString(String SearchString) throws SQLException	{
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
//			some = (List<SightDTO>)em.createQuery("select from Dept where "+ C).getResultList();
			some = (List<SightDTO>)em.createQuery("select s from Sight s where sightName= "+SearchString).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return some;
	}
	
	public static List<SightDTO> selectOnlyRegion(String SearchString) throws SQLException	{
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
//			some = (List<SightDTO>)em.createQuery("select from Dept where "+ C).getResultList();
			some = (List<SightDTO>)em.createQuery("select s from Sight s where sightRegion= "+SearchString).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return some;
	}
	
	public static List<SightDTO> selectOnlyCategory(String Category) throws SQLException	{
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;
		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
//			some = (List<SightDTO>)em.createQuery("select from Dept where "+ C).getResultList();
			some = (List<SightDTO>)em.createQuery("select s from Sight s where sightCategory= "+Category).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return some;
	}
	
	public static List<SightDTO> select(String Region, String Category, String SearchString) throws SQLException	{
		EntityManager em = DBUtil.getEntityManager();
		List<SightDTO> some = null;

		try {
//			all = em.createNativeQuery("select * from Dept", Dept.class).getResultList();
//			some = (List<SightDTO>)em.createQuery("select from Dept where "+ C).getResultList();
			some = (List<SightDTO>)em.createQuery("select s from Sight s where sightRegion= "+Region+" and sightCategory= "+Category+" and sightName= "+SearchString).getResultList();
		} finally {
			em.close();
			em=null;
		}
		
		return some;
	}
	
}
