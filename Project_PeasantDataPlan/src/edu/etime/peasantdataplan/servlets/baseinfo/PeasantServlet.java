package edu.etime.peasantdataplan.servlets.baseinfo;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.etime.peasantdataplan.common.IdWorker;
import edu.etime.peasantdataplan.pojo.Peasant;
import edu.etime.peasantdataplan.pojo.Produce;
import edu.etime.peasantdataplan.services.impl.PeasantServiceImpl;
import edu.etime.peasantdataplan.services.interfaces.PeasantService;

/**
 * 农户管理的servlet控制层
 * @author zw
 *
 */
@WebServlet("/baseinfo/peasant")
public class PeasantServlet extends HttpServlet{

	private PeasantService service = new PeasantServiceImpl();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		if(cmd!=null){
			if(cmd.equals("add")){
				insertPeasant(request,response);
			}else if(cmd.equals("query")) {
				queryPeasant(request, response);
			}else if(cmd.equals("edit")) {
				editPeasant(request, response);
			}else if(cmd.equals("moveEdit")) {
				moveEditPeasant(request, response);
			}
		}
	}

	/**
	 * 增加农户
	 * @param request 请求对象
	 * @param response 响应对象
	 * 1）获取表单数据
		2）将表单数据封装到一个Peasant实体对象中；
		3）调用IdWork对象生成一个雪花id，并赋值给Peasant对象。
		4）调用service方法PeasantService.insertPeasant()插入数据；
		5）判断service方法的执行结果，如果返回0，则提示：“增加农户失败”;否则，重定向到列表页面；
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void insertPeasant(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1）获取表单数据
		String peasantname = request.getParameter("peasantname");
		String peasantaddr = request.getParameter("peasantaddr");
		Integer peasantstate = Integer.parseInt(request.getParameter("peasantstate"));
		//2）将表单数据封装到一个Peasant实体对象中
		Peasant p = new Peasant();
		p.setPeasantname(peasantname);
		p.setPeasantaddr(peasantaddr);
		p.setPeasantstate(peasantstate);
		//3）调用IdWork对象生成一个雪花id，并赋值给Peasant对象
		IdWorker idworker = new IdWorker();
		Long id = idworker.nextId();
		p.setPeasantid(id);
		//4)调用service方法PeasantService.insertPeasant()插入数据；
		int rtn = service.insertPeasant(p);
		//5）判断service方法的执行结果，如果返回0，则提示：“增加农户失败”;否则，重定向到列表页面；
		if(rtn==0){
			request.setAttribute("msg", "增加农户失败");
			request.getRequestDispatcher("/baseinfo/peasant/add.jsp").forward(request, response);
		}else{
			//进入到列表页面（暂时返回到增加页面，并且提示成功）
			request.setAttribute("msg", "增加农户成功");
			request.getRequestDispatcher("/baseinfo/peasant?cmd=query").forward(request, response);
		}
	}
	
	private void editPeasant(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		String peasantname = request.getParameter("peasantname");
		String peasantaddr = request.getParameter("peasantaddr");
		Integer peasantstate = Integer.parseInt(request.getParameter("peasantstate"));
		
		//保存至数据库
		//用户不填的确保补全
		Peasant raw = service.queryOnePeasant(new BigDecimal(id));
		if("".equals(peasantaddr)) {
			peasantaddr = raw.getPeasantaddr();
		}
		if("".equals(peasantname)) {
			peasantname = raw.getPeasantname();
		}
		Peasant peasant = new Peasant(id,peasantname,peasantaddr,peasantstate);
		service.editPeasant(peasant);
		request.setAttribute("msg", "修改成功！");
		request.getRequestDispatcher("/baseinfo/peasant?cmd=query").forward(request, response);
	
	}
	
	private void queryPeasant(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = ""; 
		if(request.getParameter("queryByName")!=null) {
			name=request.getParameter("queryByName");
		}
		if(name!="") {
			Peasant peasant = service.queryPeasantByName(name);
			List lists = new ArrayList();
			
			
			if(peasant == null) {
				request.setAttribute("lists", lists);
				request.getRequestDispatcher("/baseinfo/peasant/list.jsp").forward(request, response);	
			}else {
				lists.add(peasant);
				request.setAttribute("lists", lists);
				request.getRequestDispatcher("/baseinfo/peasant/list.jsp").forward(request, response);	
			}
			
			
		}else {
			List<?> lists = service.queryAllPeasant();
			request.setAttribute("lists", lists);
			request.getRequestDispatcher("/baseinfo/peasant/list.jsp").forward(request, response);	
		}
	}
	
	private void moveEditPeasant(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Peasant peasant = service.queryOnePeasant(new BigDecimal(id));
		request.setAttribute("peasant",peasant);
		request.setAttribute("id", id);
		request.getRequestDispatcher("/baseinfo/peasant/edit.jsp").forward(request, response);
	}

	
}
