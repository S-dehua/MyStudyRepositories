package edu.etime.peasantdataplan.services.impl;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.dao.PeasantDao;
import edu.etime.peasantdataplan.pojo.Peasant;
import edu.etime.peasantdataplan.services.interfaces.PeasantService;

/**
 * 农户管理service层实现类
 * @author coffee
 *
 */
public class PeasantServiceImpl implements PeasantService {

	private PeasantDao dao = new PeasantDao();
	
	/**
	 * 调用PeasantDao中的insertPeasant（）方法。
	 */
	@Override
	public int insertPeasant(Peasant p) {
		
		return dao.insertPeasant(p);
	}

	@Override
	public Peasant queryPeasantByName(String name) {
		return dao.queryPeasantByName(name);
	}

	@Override
	public List queryAllPeasant() {
		return dao.queryAllPeasant();
	}

	@Override
	public Peasant queryOnePeasant(BigDecimal id) {
		return dao.queryOnePeasant(id);
	}

	@Override
	public int editPeasant(Peasant peasant) {
		return dao.editPeasant(peasant);
	}

}
