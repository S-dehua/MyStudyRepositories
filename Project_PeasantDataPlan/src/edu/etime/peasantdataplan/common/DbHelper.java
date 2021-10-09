package edu.etime.peasantdataplan.common;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * 封装数据库操作对象
 * @author zw
 *
 */
public class DbHelper {
	//创建DataSource，使用c3p0连接池
	private static DataSource datasource;
	static {
		try {
			/* 1、使用C3P0连接池的配置文件名称必须是：c3p0-config.xml
			 * 2、读取配置文件由连接池自动完成
			 * 3、只需要在ComboPooledDataSource("mysql")指定使用那个配置项。
			 *    <named-config name="mysql">  
			 * 4、加载驱动类，创建连接等操作都由连接池自动完成。
			 */
			datasource = new ComboPooledDataSource("mysql");
			//手动设置连接池属性
			//ComboPooledDataSource cpd = new ComboPooledDataSource();
			//cpd.setJdbcUrl("");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 获取数据库链接
	 * @return
	 */
	public static Connection getConn(){
		Connection conn = null;	
		try {
			conn = datasource.getConnection();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 执行SQL语句（增加，修改，删除SQL语句）
	 * @param sql SQL语句
	 * @param objects SQL参数
	 * @return 0失败，1成功
	 */
	public static Integer executeUpdate(String sql,Object ...objects){
		//调用getConn方法，建立数据库链接
		Connection conn = getConn();
		//dbutils组建提供的执行SQL语句的对象
		QueryRunner qr = new QueryRunner(true);
		Integer rtn = 0;
		try {
			if(objects == null){
				rtn = qr.update(conn, sql);
			}else{
				rtn = qr.update(conn, sql, objects);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}	
		return rtn;
	}
	
	public static Integer executeUpdate(String sql){
		return executeUpdate(sql, null);
	}
	/**
	 * 查询SQL
	 * @param <T> 对应实体泛型
	 * @param sql SQL语句
	 * @param cls
	 * @param objects
	 * @return
	 */
	public static <T> List<T> executeQuery(String sql,Class<T> cls,Object ...objects){

		Connection conn = getConn();
		List<T> list = null;
		try{
			QueryRunner rq = new QueryRunner();
			if(objects == null){
				list = rq.query(conn, sql,new BeanListHandler<T>(cls)); 
			}else{
				list = rq.query(conn, sql,new BeanListHandler<T>(cls),objects); 
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}	
		return list;
	}
	
	public static <T> List<T> executeQuery(String sql,Class<T> cls){
		return executeQuery(sql,cls,null);
	}
	
	/**
	 * 带分页的查询
	 * @param sql SQL语句
	 * @param pc 分页控制对象，需要传递参数：当前第几页（currentindex）,每页显示多少行：(pagesize)
	 * 分页控件显示多少也：showpcount
	 * @return
	 */
	/*public static <T> Pager<T> executeQuery(String sql, PageControl pc, Class<T> cls, Object... objs) {
		// 获取总记录数sql
		String sqlcount = "select count(*) as rscount from (" + sql + ") a";
		// 获取具体数据的SQL语句
		String sqllist = "select * from ("+sql+") as t limit "
				+(pc.getCurrentindex()-1)*pc.getPagesize()+","+pc.getPagesize() ;		
		Pager<T> pager = new Pager<T>();		
		Connection conn = getConn();
		QueryRunner qr = new QueryRunner();
		List<T> list = null;
		try {
			if(objs!=null){
				//执行获取总记录数的sql语句
				PageControl pc1 = qr.query(conn,sqlcount, new BeanHandler<>(PageControl.class),objs);
				pc.setRscount(pc1.getRscount());
				list = qr.query(conn, sqllist, new BeanListHandler<>(cls), objs);
			}else{
				//执行获取总记录数的sql语句
				PageControl pc1 = qr.query(conn,sqlcount, new BeanHandler<>(PageControl.class));
				pc.setRscount(pc1.getRscount());
				list = qr.query(conn, sqllist, new BeanListHandler<>(cls));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}	
		pager.setList(list);
		pc = dealpage(pc);
		pager.setPagectrl(pc);
		return pager;
	}
	
	public static <T> Pager<T> executeQuery(String sql, PageControl pc, Class<T> cls){
		return executeQuery(sql, pc, cls,null);
	}*/
	
	/**
	 * 处理分页参数
	 * @param pc
	 * @return
	 */
	/*private static PageControl dealpage(PageControl pc){
		//获取总页数
		Integer pagecount = pc.getRscount()/pc.getPagesize();
		if(pc.getRscount()%pc.getPagesize()>0){
			pagecount++;
		}
		pc.setPagecount(pagecount);	
		
		//计算最大(最小)显示页数
		Integer showpcount = pc.getShowpcount();//分页一次显示多少页
		Integer maxpage = 0;//当前显示最大页码
		Integer minpage = 0;
		Integer index = pc.getCurrentindex();//当前第几页
		if(pagecount<=showpcount){//当总页数小于等于显示的页数时
			maxpage = pagecount;
			minpage = 1;
		}else{
			Integer buff = showpcount/2; //取中间数。maxpage=index+buff
			buff = index+buff;
			if(buff<=showpcount){
				maxpage = showpcount;
				minpage = 1;
			}else if(buff<pagecount){
				maxpage = buff;
				minpage = maxpage - showpcount + 1;
				
			}else if(buff>=pagecount){
				maxpage = pagecount;
				minpage = maxpage - showpcount + 1;
			}
		}
		pc.setMaxpage(maxpage);	
		pc.setMinpage(minpage);
		return pc;
	}*/
	
}
