package edu.etime.peasantdataplan.dao;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.common.DbHelper;
import edu.etime.peasantdataplan.pojo.Produce;

/**
 * 农产品管理dao层
 * @author coffee
 *
 */
public class ProduceDao {
	/**
	 * 插入农产品的sql语句
	 */
	public int insertProduce(Produce produce) {
		String sql = "insert into base_produce(produceid,producename,produceaddr,produceprice) " + 
				"VALUES(?,?,?,?)";
		
		Integer row = DbHelper.executeUpdate(sql, produce.getProduceid(),
				produce.getProducename(),produce.getProduceaddr(),
				produce.getProduceprice());
		return row;
	}
	
	/**
	 * 查询所有农产品
	 */
	public List queryAllProduce() {
		String sql = "select * from base_produce";
		List<Produce> resultSet = DbHelper.executeQuery(sql, Produce.class);
		return resultSet;
	}
	
	/**
	 * 查询一件农产品
	 */
	public Produce queryOneProduce(BigDecimal produceid) {
		String sql = "select * from base_produce where produceid=?";
		Produce result = DbHelper.executeQuery(sql, Produce.class,produceid).get(0);
		return result;
	}
	
	public int deleteOneProduce(BigDecimal id) {
		String sql ="delete from base_produce where produceid=?";
		Integer row = DbHelper.executeUpdate(sql, id);
		return row;
	}
	
	public int updateProduce(Produce produce) {
		String sql ="update base_produce set producename=?,produceaddr=?,produceprice=? where produceid=?";
		Integer row = DbHelper.executeUpdate(sql, produce.getProducename(),produce.getProduceaddr(),produce.getProduceprice(),produce.getProduceid());
		return row;
	}
	
	
	
}
