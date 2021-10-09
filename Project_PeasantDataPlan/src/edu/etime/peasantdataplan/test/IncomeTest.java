package edu.etime.peasantdataplan.test;

import java.math.BigDecimal;
import java.util.List;

import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.impl.IncomeServiceImpl;
import edu.etime.peasantdataplan.services.interfaces.IncomeService;

public class IncomeTest {
	public static void main(String[] args) {
		IncomeService service = new IncomeServiceImpl();
		List r = service.queryAllIncome();
		System.out.println(r);
	}
}
