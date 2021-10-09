package edu.etime.peasantdataplan.services.interfaces;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.pojo.Income;

/**
 * 农户收入信息管理service层接口
 * @author sdehua
 *
 */
public interface IncomeService {

	/**
	 * 增加农户收入信息
	 * @param  Income实体对象，并且为所有属性赋值
	 * @return 返回int类型的数据，1-插入成功；0-插入失败
	 */
	int insertIncome(Income i);
	
	/**
	 * 查询农户收入信息
	 * @return Income类型的List集合
	 */
	List queryAllIncome();
	
	/**
	 * 删除一条农户收入信息
	 * @param id
	 * @return 返回int类型的数据，1-插入成功；0-插入失败
	 */
	int deleteOneIncome(BigDecimal id);
	
}
