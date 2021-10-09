package edu.etime.peasantdataplan.servlets.baseinfo;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.etime.peasantdataplan.common.IdWorker;
import edu.etime.peasantdataplan.pojo.Income;
import edu.etime.peasantdataplan.services.impl.IncomeServiceImpl;
import edu.etime.peasantdataplan.services.interfaces.IncomeService;

@WebServlet("/baseinfo/income")
public class IncomeServlet extends HttpServlet{
	
	private IncomeService incomeService = new IncomeServiceImpl();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		if(cmd != null) {
			if(cmd.equals("add")) {
				insertIncome(request,response);
			}else if (cmd.equals("query")) {
				queryIncome(request, response);
			}else if (cmd.equals("delete")) {
				deleteIncome(request, response);
			}
		}
	}
	/**
	 * 插入收入信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void insertIncome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//1）获取表单数据
				String peasantname = request.getParameter("peasantname");
				String typename = request.getParameter("typename");
				double salary = Double.parseDouble(request.getParameter("salary"));
				//2）
				IdWorker idworker = new IdWorker();
				Long id = idworker.nextId();
				//3）将表单数据封装到一个Peasant实体对象中
				Income i = new Income(id,peasantname,typename,salary);
				//4)调用service方法PeasantService.insertPeasant()插入数据；
				int rtn = incomeService.insertIncome(i);
				//5）判断service方法的执行结果，如果返回0，则提示：“增加农户收入信息失败”;否则，重定向到列表页面；
				if(rtn==0){
					request.setAttribute("msg", "增加农户收入信息失败");
					request.getRequestDispatcher("/baseinfo/income/add.jsp").forward(request, response);
				}else{
					//进入到列表页面（暂时返回到增加页面，并且提示成功）
					request.setAttribute("msg", "增加农户收入信息成功");
					request.getRequestDispatcher("/baseinfo/income?cmd=query").forward(request, response);
				}
	}
	/**
	 * 删除收入信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void deleteIncome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		incomeService.deleteOneIncome(new BigDecimal(id));
		request.setAttribute("msg", "删除成功！");
		request.getRequestDispatcher("/baseinfo/income?cmd=query").forward(request, response);
	}
	/**
	 * 查询收入信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void queryIncome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List incomes = incomeService.queryAllIncome();
		request.setAttribute("incomes", incomes);
		request.getRequestDispatcher("/baseinfo/income/list.jsp").forward(request, response);
	}

}
