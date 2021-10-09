package edu.etime.peasantdataplan.test;

import java.math.BigDecimal;

import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.impl.ProduceServiceImpl;
import edu.etime.peasantdataplan.services.interfaces.ProduceService;

public class ProduceTest {
	public static void main(String[] args) {
		ProduceService service = new ProduceServiceImpl();
		Produce produce = service.queryOneProduce(new BigDecimal("176770174295347200"));
		System.out.println(produce);
	}
}
