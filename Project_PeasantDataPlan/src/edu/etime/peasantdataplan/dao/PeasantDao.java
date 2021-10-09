package edu.etime.peasantdataplan.dao;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.common.DbHelper;
import edu.etime.peasantdataplan.pojo.Peasant;

/**
 * 农户管理dao层
 * @author coffee
 *
 */
public class PeasantDao {

	/**
	 * 功能概述：构建插入农户记录的sql语句
		参数描述：Peasant实体对象,并且需要为所有的属性进行赋值
		算法描述：
		1）构建插入农户表（basePeasant）的sql语句。插入所有的字段。
		2)调用SqlHelper.executsql（）方法，执行sql语句
		返回值描述：
		返回int类型的数据，1-插入成功；0-插入失败
	 */
	public int insertPeasant(Peasant peasant){
		String sql = "Insert into base_peasant(peasantId,peasantName, "
				+ "peasantAddr,peasantState) values(?,?,?,?)";
		int rtn = DbHelper.executeUpdate(sql, peasant.getPeasantid(),
				peasant.getPeasantname(),peasant.getPeasantaddr(),
				peasant.getPeasantstate());
		return rtn;
	}
	
	public Peasant queryPeasantByName(String name) {
		String sql = "select * from base_peasant where peasantname=?";
		List<Peasant> p = DbHelper.executeQuery(sql, Peasant.class, name);
		if (p.isEmpty()){
			return null;
		}
		return p.get(0);
	}
	
	public List queryAllPeasant(){
		String sql = "select * from base_peasant";
		List<Peasant> resultSet = DbHelper.executeQuery(sql, Peasant.class);
		return resultSet;	

}	
	
	public Peasant queryOnePeasant(BigDecimal id){
		String sql = "select * from base_peasant where peasantid=?";
		Peasant resultSet = DbHelper.executeQuery(sql, Peasant.class,id).get(0);
		return resultSet;	

}	
	
	public int editPeasant(Peasant peasant){
		String sql = "update base_peasant set peasantstate=?,peasantname=?, "
				+ "peasantaddr=? where peasantid=?";
		int rtn = DbHelper.executeUpdate(sql,peasant.getPeasantstate() ,
				peasant.getPeasantname(),peasant.getPeasantaddr(),
				peasant.getPeasantid());
		return rtn;

}	
}
