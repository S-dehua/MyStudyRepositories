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
import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.impl.ProduceServiceImpl;
import edu.etime.peasantdataplan.services.interfaces.ProduceService;

/**
 * 农产品管理的servlet控制层
 * @author coffee
 *
 */
@WebServlet("/baseinfo/produce")
public class ProduceServlet extends HttpServlet{

	private ProduceService service = new ProduceServiceImpl();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		if(cmd!=null){
			if(cmd.equals("add")){
				insertProduce(request,response);
			}else if(cmd.equals("query")) {
				queryProduce(request,response);
			}else if(cmd.equals("delete")){
				deleteProduce(request,response);
			}else if(cmd.equals("update")) {
				updateProduce(request,response);
			}else if(cmd.equals("edit")) {
//				if("on".equals(request.getParameter("sureAgain"))) {
				if(request.getParameter("producename")!=""&&request.getParameter("producenaddr")!=""&&request.getParameter("produceprice")!="") {
					editProduce(request,response);
				}else {
					request.setAttribute("msg", "全部或部分输入为空！");
					request.getRequestDispatcher("/baseinfo/produce?cmd=query").forward(request, response);
				}
				
//				}else {
//					request.setAttribute("msg", "可能是误触了吧！");
//					request.getRequestDispatcher("/baseinfo/produce?cmd=query").forward(request, response);
//				}
			}
		}
	}

	/**
	 * 增加农产品
	 * @param request 请求对象
	 * @param response 响应对象
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void insertProduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1）获取表单数据
		String producename = request.getParameter("producename");
		String produceaddr = request.getParameter("produceaddr");
		double produceprice = Double.parseDouble(request.getParameter("produceprice"));
		//2）调用IdWork对象生成一个雪花id，并赋值给Peasant对象
		IdWorker idworker = new IdWorker();
		Long id = idworker.nextId();
		//3）将表单数据封装到一个Peasant实体对象中
		Produce p = new Produce(id,producename,produceaddr,produceprice);
		//4)调用service方法PeasantService.insertPeasant()插入数据；
		int rtn = service.insertProduce(p);
		//5）判断service方法的执行结果，如果返回0，则提示：“增加农户失败”;否则，重定向到列表页面；
		if(rtn==0){
			request.setAttribute("msg", "增加农产品失败");
			request.getRequestDispatcher("/baseinfo/produce/add.jsp").forward(request, response);
		}else{
			//进入到列表页面（暂时返回到增加页面，并且提示成功）
			request.setAttribute("msg", "增加农产品成功");
			request.getRequestDispatcher("/baseinfo/produce?cmd=query").forward(request, response);
		}
	}
	
	/**
	 * 查询所有农产品
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryProduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List allProduces = service.queryAllProduce();
		request.setAttribute("produces", allProduces);
		request.getRequestDispatcher("/baseinfo/produce/list.jsp").forward(request, response);
	}

	
	/**
	 * 删除一件农产品
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void deleteProduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Produce produce = service.queryOneProduce(new BigDecimal(id));
		service.deleteOneProduct(new BigDecimal(id));
		request.setAttribute("msg", produce.getProducename()+"删除成功！");
		request.getRequestDispatcher("/baseinfo/produce?cmd=query").forward(request, response);
	}
	
	/**
	 * 跳转至编辑界面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void updateProduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Produce produce = service.queryOneProduce(new BigDecimal(id));
		request.setAttribute("produce",produce);
		request.setAttribute("id", id);
		request.getRequestDispatcher("/baseinfo/produce/edit.jsp").forward(request, response);
	}
	
	/**
	 * 农产品编辑功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void editProduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long id = Long.parseLong(request.getParameter("id"));
		String producename = request.getParameter("producename");
		String produceaddr = request.getParameter("produceaddr");
		double produceprice = Double.parseDouble(request.getParameter("produceprice"));
		
		//保存至数据库
		//用户不填的确保补全
		Produce rawProduce = service.queryOneProduce(new BigDecimal(id));
		if("".equals(producename)) {
			producename = rawProduce.getProducename();
		}
		if("".equals(produceaddr)) {
			produceaddr = rawProduce.getProduceaddr();
		}
		if("".equals(produceprice)) {
			produceprice = rawProduce.getProduceprice();
		}
		Produce produce = new Produce(id,producename,produceaddr,produceprice);
		service.updateProduce(produce);
		request.setAttribute("msg", "修改成功！");
		request.getRequestDispatcher("/baseinfo/produce?cmd=query").forward(request, response);
	}
}
