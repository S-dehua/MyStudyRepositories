package com.studyweb.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;


public class JdbcUtils {
    private static DruidDataSource dataSource;
    private  static ThreadLocal<Connection> conns = new ThreadLocal<>();

    static {
        try {
            Properties properties = new Properties();
            //读取jdbc.properties属性配置文件
            InputStream inputStream = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            //从流中加载数据
            properties.load(inputStream);
            //创建了数据库连接池
            dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

/**
 * @MethodName GetConnection
 * @Author coffee
 * @Description 获取数据库连接池中的连接
 * @Param []
 * @Return java.sql.Connection
 **/
    public static Connection getConnection(){

        Connection conn = conns.get();

        if (conn == null){
            try {
                conn = dataSource.getConnection();//从数据库连接池中获取数据

                conns.set(conn);//保存到ThreadLocal对象中，供后面的jdbc操作使用；

                conn.setAutoCommit(false);//设置为手动管理事务

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return conn;
    }

    /**
     * @MethodName commitAndClose
     * @Author coffee
     * @Description 提交事务，并关闭释放连接
     * @Param []
     * @return void
     **/
    public static void commitAndClose(){
        Connection connection = conns.get();
        if (connection != null){
            try {
                connection.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        //一定要执行remove操作，否则会出错（因为Tomcat服务器底层使用了线程池技术）
        conns.remove();

    }
    /**
     * @MethodName commitAndClose
     * @Author coffee
     * @Description 回滚事务，并关闭释放连接
     * @Param []
     * @return void
     **/
    public static void rollbackAndColse(){
        Connection connection = conns.get();
        if (connection != null){
            try {
                connection.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        //一定要执行remove操作，否则会出错（因为Tomcat服务器底层使用了线程池技术）
        conns.remove();

    }

/**
 * @MethodName close
 * @Author coffee
 * @Description  关闭连接，返回数据库
 * @Param [conn]
 * @Return void
 **/
    public static void close(Connection conn){

        if (conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
