package edu.etime.peasantdataplan.dao;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.common.DbHelper;
import edu.etime.peasantdataplan.pojo.Income;

/**
 * 农户收入dao层
 * @author coffee
 *
 */
public class IncomeDao {
	
	public List queryAllIncome() {
		String sql = "select * from base_income";
		List<Income> result = DbHelper.executeQuery(sql, Income.class);
		return result;
	}
	
	public int insertIncome(Income i) {
		String sql = "insert into base_income(peasantid,peasantname,typename,salary) " + 
				"VALUES(?,?,?,?)";
		Integer row = DbHelper.executeUpdate(sql, i.getPeasantid(),i.getPeasantname(),i.getTypename(),i.getSalary());
		return row;
	}
	
	public int deleteIncome(BigDecimal id) {
		String sql ="delete from base_income where peasantid=?";
		Integer row = DbHelper.executeUpdate(sql, id);
		return row;
	}
	
	
}
