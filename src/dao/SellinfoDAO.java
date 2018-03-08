package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojobean.Buyinfo;
import pojobean.Sellinfo;

/**
 * Sellinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class SellinfoDAO  extends HibernateDaoSupport {


	protected void initDao() {
		// do nothing
	}

	public void save(Sellinfo transientInstance) {
		log.debug("saving Sellinfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Sellinfo persistentInstance) {
		log.debug("deleting Sellinfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Sellinfo findById(java.lang.Integer id) {
		log.debug("getting Sellinfo instance with id: " + id);
		try {
			Sellinfo instance = (Sellinfo) getHibernateTemplate().get("Sellinfo",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Sellinfo instance) {
		log.debug("finding Sellinfo instance by example");
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
		log.debug("finding Sellinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Sellinfo as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
 

	public List findAll() {
		log.debug("finding all Sellinfo instances");
		try {
			String queryString = "from Sellinfo";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Sellinfo merge(Sellinfo detachedInstance) {
		log.debug("merging Sellinfo instance");
		try {
			Sellinfo result = (Sellinfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Sellinfo instance) {
		log.debug("attaching dirty Sellinfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Sellinfo instance) {
		log.debug("attaching clean Sellinfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static SellinfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (SellinfoDAO) ctx.getBean("SellinfoDAO");
	}
	private static final Log log = LogFactory.getLog(SellinfoDAO.class);

}