package edu.etime.peasantdataplan.services.impl;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.dao.IncomeDao;
import edu.etime.peasantdataplan.dao.ProduceDao;
import edu.etime.peasantdataplan.pojo.Income;
import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.interfaces.IncomeService;
import edu.etime.peasantdataplan.services.interfaces.ProduceService;

/**
 * 农户收入信息管理service层实现类
 * @author coffee
 *
 */
public class IncomeServiceImpl implements IncomeService {
	private IncomeDao incomedao = new IncomeDao();

	@Override
	public int insertIncome(Income i) {
		return incomedao.insertIncome(i);
	}

	@Override
	public List queryAllIncome() {
		return incomedao.queryAllIncome();
	}

	@Override
	public int deleteOneIncome(BigDecimal id) {
		return incomedao.deleteIncome(id);
	}

	

}
