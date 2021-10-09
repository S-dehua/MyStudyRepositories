package edu.etime.peasantdataplan.services.interfaces;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.pojo.Peasant;

/**
 * 农户基本信息管理service层接口
 * @author zw
 *
 */
public interface PeasantService {

	/**
	 * 增加农户
	 * @param p Peasant实体对象，并且为所有属性赋值
	 * @return 返回int类型的数据，1-插入成功；0-插入失败
	 */
	int insertPeasant(Peasant p);
	
	Peasant queryPeasantByName(String name);
	
	List queryAllPeasant();
	
	Peasant queryOnePeasant(BigDecimal id);
	
	int editPeasant(Peasant peasant);
}
