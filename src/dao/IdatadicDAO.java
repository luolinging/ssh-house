package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojobean.Buyinfo;
import pojobean.Idatadic;

/**
 * Idatadic entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class IdatadicDAO  extends HibernateDaoSupport {


	protected void initDao() {
		// do nothing
	}

	public void save(Idatadic transientInstance) {
		log.debug("saving Idatadic instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Idatadic persistentInstance) {
		log.debug("deleting Idatadic instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Idatadic findById(java.lang.Integer id) {
		log.debug("getting Idatadic instance with id: " + id);
		try {
			Idatadic instance = (Idatadic) getHibernateTemplate().get("Idatadic",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Idatadic instance) {
		log.debug("finding Idatadic instance by example");
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
		log.debug("finding Idatadic instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Idatadic as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
 

	public List findAll() {
		log.debug("finding all Idatadic instances");
		try {
			String queryString = "from Idatadic";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Idatadic merge(Idatadic detachedInstance) {
		log.debug("merging Idatadic instance");
		try {
			Idatadic result = (Idatadic) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Idatadic instance) {
		log.debug("attaching dirty Idatadic instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Idatadic instance) {
		log.debug("attaching clean Idatadic instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static IdatadicDAO getFromApplicationContext(ApplicationContext ctx) {
		return (IdatadicDAO) ctx.getBean("IdatadicDAO");
	}
	private static final Log log = LogFactory.getLog(IdatadicDAO.class);
}