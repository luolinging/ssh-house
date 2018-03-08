package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojobean.Buyinfo;
import pojobean.Taolun;

/**
 * Taolun entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TaolunDAO  extends HibernateDaoSupport  {


	protected void initDao() {
		// do nothing
	}

	public void save(Taolun transientInstance) {
		log.debug("saving Taolun instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Taolun persistentInstance) {
		log.debug("deleting Taolun instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Taolun findById(java.lang.Integer id) {
		log.debug("getting Taolun instance with id: " + id);
		try {
			Taolun instance = (Taolun) getHibernateTemplate().get("Taolun",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Taolun instance) {
		log.debug("finding Taolun instance by example");
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
		log.debug("finding Taolun instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Taolun as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
 

	public List findAll() {
		log.debug("finding all Taolun instances");
		try {
			String queryString = "from Taolun";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Taolun merge(Taolun detachedInstance) {
		log.debug("merging Taolun instance");
		try {
			Taolun result = (Taolun) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Taolun instance) {
		log.debug("attaching dirty Taolun instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Taolun instance) {
		log.debug("attaching clean Taolun instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TaolunDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TaolunDAO) ctx.getBean("TaolunDAO");
	}
	private static final Log log = LogFactory.getLog(TaolunDAO.class);

}