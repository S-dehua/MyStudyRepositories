package edu.etime.peasantdataplan.services.impl;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.dao.ProduceDao;
import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.interfaces.ProduceService;

/**
 * 农产品管理service层实现类
 * @author coffee
 *
 */
public class ProduceServiceImpl implements ProduceService {

	private ProduceDao dao = new ProduceDao();
	
	/**
	 * 调用ProduceDao中的insertPeasant（）方法。
	 */
	@Override
	public int insertProduce(Produce p) {
		
		return dao.insertProduce(p);
	}

	@Override
	public List queryAllProduce() {
		return dao.queryAllProduce();
	}

	@Override
	public Produce queryOneProduce(BigDecimal id) {
		return dao.queryOneProduce(id);
	}

	@Override
	public int deleteOneProduct(BigDecimal id) {
		return dao.deleteOneProduce(id);
	}

	@Override
	public int updateProduce(Produce p) {
		return dao.updateProduce(p);
	}

}
