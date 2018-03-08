package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojobean.Buyinfo;
import pojobean.Lyb;

/**
 * Lyb entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class LybDAO  extends HibernateDaoSupport  {


	protected void initDao() {
		// do nothing
	}

	public void save(Buyinfo transientInstance) {
		log.debug("saving Lyb instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Lyb persistentInstance) {
		log.debug("deleting Lyb instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Lyb findById(java.lang.Integer id) {
		log.debug("getting Lyb instance with id: " + id);
		try {
			Lyb instance = (Lyb) getHibernateTemplate().get("Lyb",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Lyb instance) {
		log.debug("finding Lyb instance by example");
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
		log.debug("finding Lyb instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Lyb as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
 

	public List findAll() {
		log.debug("finding all Lyb instances");
		try {
			String queryString = "from Lyb";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Lyb merge(Lyb detachedInstance) {
		log.debug("merging Lyb instance");
		try {
			Lyb result = (Lyb) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Lyb instance) {
		log.debug("attaching dirty Lyb instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Lyb instance) {
		log.debug("attaching clean Lyb instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static LybDAO getFromApplicationContext(ApplicationContext ctx) {
		return (LybDAO) ctx.getBean("LybDAO");
	}
	private static final Log log = LogFactory.getLog(LybDAO.class);

}