package cn.sdehua.crud.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.sdehua.crud.bean.Employee;
import cn.sdehua.crud.bean.Msg;
import cn.sdehua.crud.service.EmployeeServcie;

/**
 * 处理员工CRUD请求
 * @author coffee
 *
 */
@Controller
public class EmployeeController {

	@Autowired
	EmployeeServcie employeeService;
	
	/**
	 * 员工删除
	 * 单个、批量二合一
	 * 批量删除：id1-id2-id3
	 * 单个删除：id
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/emp/{ids}",method=RequestMethod.DELETE)
	public Msg deleteEmpById(@PathVariable("ids")String ids) {
		
		if(ids.contains("-")) {
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			employeeService.deleteBatch(del_ids);
			
		}else {
			Integer id = Integer.parseInt(ids);
			employeeService.deleteEmp(id);
		}
		return Msg.success();
	}
	
	/**
	 * 员工更新
	 * @param employee
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/emp/{empId}",method=RequestMethod.PUT)
	public Msg saveEmp(Employee employee) {
		//System.out.println(employee);
		employeeService.updateEmp(employee);
		return Msg.success();
	}
	
	@RequestMapping(value="/emp/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getEmp(@PathVariable("id")Integer id) {
		Employee employee = employeeService.getEmp(id);
		return Msg.success().add("emp", employee);
	}
	
	/**
	 * 检查邮箱是否重复
	 * @param email
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/checkEmail")
	public Msg checkEmail(@RequestParam("email")String email) {
		
		String regex = "^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$";
		if(!email.matches(regex)) {
			return Msg.fail().add("va_msg", "邮箱格式有误，请检查");
		}
		//数据库重复校验
		if(employeeService.checkEmail(email)) {
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "该邮箱正在被使用");
		}
	}
	
	/**
	 * 员工保存
	 * 1. 支持JSR303校验
	 * 2. 导入Hibernate-Validator
	 * @return
	 */
	@RequestMapping(value="emp",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveEmp(@Valid Employee employee,BindingResult result) {
		if(result.hasErrors()) {
			//校验失败，返回失败，在模态框中显示校验失败的错误信息
			Map<String,Object> map = new HashMap();
			List<FieldError> errors = result.getFieldErrors();
			for (FieldError fieldError : errors) {
				System.out.println("错误的字段："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		}else {
			employeeService.saveEmp(employee);
			return Msg.success();
		}
		
	}
	
	/**
	 *  导入Jackson包
	 * @param pn
	 * @return
	 */
	@RequestMapping("/emps")
	@ResponseBody
	public Msg getEmpsWithJson(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		//引入分页插件
		PageHelper.startPage(pn,6);//startPage()后面紧跟的查询就是分页查询
		List<Employee> emps = employeeService.getAll();
		PageInfo page = new PageInfo(emps,7);//封装了详细的分页信息;连续显示7页
		return Msg.success().add("pageInfo", page);
	}
	
	/**
	 * 查询员工数据（分页查询）
	 * @return
	 */
//	@RequestMapping("/emps")
	public String getEmps(@RequestParam(value="pn",defaultValue="1")Integer pn,
			Model model) {
		//引入分页插件
		PageHelper.startPage(pn,5);//startPage()后面紧跟的查询就是分页查询
		List<Employee> emps = employeeService.getAll();
		PageInfo page = new PageInfo(emps,7);//封装了详细的分页信息;连续显示7页
		
		model.addAttribute("pageInfo",page);
		
		return "list";
	}
}
