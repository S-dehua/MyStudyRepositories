package edu.etime.peasantdataplan.services.interfaces;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.pojo.Produce;

/**
 * 农产品基本信息管理service层接口
 * @author sdehua
 *
 */
public interface ProduceService {

	/**
	 * 增加农产品
	 * @param  Produce实体对象，并且为所有属性赋值
	 * @return 返回int类型的数据，1-插入成功；0-插入失败
	 */
	int insertProduce(Produce p);
	
	List queryAllProduce();
	
	Produce queryOneProduce(BigDecimal id);
	
	int deleteOneProduct(BigDecimal id);
	
	int updateProduce(Produce p);
}
