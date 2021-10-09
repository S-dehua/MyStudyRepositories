package edu.etime.peasantdataplan.test;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import edu.etime.peasantdataplan.common.DbHelper;
import edu.etime.peasantdataplan.dao.PeasantDao;
import edu.etime.peasantdataplan.pojo.Peasant;
import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.impl.PeasantServiceImpl;
import edu.etime.peasantdataplan.services.impl.ProduceServiceImpl;
import edu.etime.peasantdataplan.services.interfaces.PeasantService;
import edu.etime.peasantdataplan.services.interfaces.ProduceService;

public class PeasantTest {
	public static void main(String[] args) {
		PeasantService service = new PeasantServiceImpl();
		PeasantDao pd = new PeasantDao();
//		Peasant p = new Peasant(177122663280545792L,"mike","北京",1);
//		service.editPeasant(p);
		Peasant peasant = service.queryPeasantByName("Te");
//		Peasant p = pd.queryPeasantByName("te");
//		String sql = "select * from base_peasant where peasantname=?";
//		String name = "Te";
//		List<Peasant> executeQuery = DbHelper.executeQuery(sql, Peasant.class, name);
//		System.out.println(executeQuery.isEmpty());
		System.out.println(peasant);
		
		List list = new ArrayList();
		list.add(null);
		System.out.println(list);
	}
}
