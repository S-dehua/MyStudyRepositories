package cn.sdehua.crud.test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.sdehua.crud.bean.Department;
import cn.sdehua.crud.dao.DepartmentMapper;
import cn.sdehua.crud.dao.EmployeeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class MapperTest {
	
	@Autowired
	DepartmentMapper departmentMapper;
	@Autowired
	EmployeeMapper employeeMapper;
	@Autowired
	SqlSession sqlSession;
	/**
	 * 测试DepartmentMapper
	 */
	@Test
	public void testCrud() {
//		ClassPathXmlApplicationContext ioc = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//		DepartmentMapper bean = ioc.getBean(DepartmentMapper.class);
//		System.out.println(bean);
	
//		System.out.println(employeeMapper.selectByPrimaryKeyWithDept(1));
		System.out.println(departmentMapper.selectByExample(null));
	}
}
