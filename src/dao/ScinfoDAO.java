package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojobean.Buyinfo;
import pojobean.Scinfo;

/**
 * Scinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class ScinfoDAO  extends HibernateDaoSupport  {


	protected void initDao() {
		// do nothing
	}

	public void save(Scinfo transientInstance) {
		log.debug("saving Scinfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Scinfo persistentInstance) {
		log.debug("deleting Scinfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Scinfo findById(java.lang.Integer id) {
		log.debug("getting Scinfo instance with id: " + id);
		try {
			Scinfo instance = (Scinfo) getHibernateTemplate().get("Scinfo",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Scinfo instance) {
		log.debug("finding Scinfo instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Scinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Scinfo as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
 

	public List findAll() {
		log.debug("finding all Scinfo instances");
		try {
			String queryString = "from Scinfo";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Scinfo merge(Scinfo detachedInstance) {
		log.debug("merging Scinfo instance");
		try {
			Scinfo result = (Scinfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Scinfo instance) {
		log.debug("attaching dirty Scinfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Scinfo instance) {
		log.debug("attaching clean Scinfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ScinfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ScinfoDAO) ctx.getBean("ScinfoDAO");
	}
	private static final Log log = LogFactory.getLog(ScinfoDAO.class);

}