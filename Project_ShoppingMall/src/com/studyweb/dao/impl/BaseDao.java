package com.studyweb.dao.impl;

import com.studyweb.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public abstract class BaseDao {

    //使用DbUtils操作数据库
    private QueryRunner queryRunner = new QueryRunner();

    /**
     * @MethodName update
     * @Author coffee
     * @Description  此方法用来执行insert、update、delete语句
     * @Param [sql, args]
     * @return int类型。若返回-1.则执行失败；返回其他表示影响的行数。
     **/
    public int update(String sql,Object... args) {
        Connection connection = JdbcUtils.getConnection();
        try {
            connection.setAutoCommit(false);
            return queryRunner.update(connection,sql,args);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("sdehua自定义未知错误",e);
        }finally {
            try {
                connection.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * @MethodName queryForOne
     * @Author coffee
     * @Description 查询返回一个JavaBean的sql语句
     * @Param [type, sql, args]
     * @return java.lang.Object
     **/
    public <T> T queryForOne(Class<T> type,String sql,Object... args){
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection,sql,new BeanHandler<T>(type),args);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    /**
     * @MethodName queryForList
     * @Author coffee
     * @Description  查询返回多个JavaBean的sql语句
     * @Param [type, sql, args]
     * @return java.util.List<T>
     **/
    public <T>List<T> queryForList(Class<T> type, String sql, Object... args){
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection,sql,new BeanListHandler<T>(type),args);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    /**
     * @MethodName queryForSingleValue
     * @Author coffee
     * @Description 执行返回一行一列的sql语句
     * @Param [sql, args]
     * @return java.lang.Object
     **/
    public Object queryForSingleValue(String sql,Object... args){
        Connection connection = JdbcUtils.getConnection();

        try {
            return queryRunner.query(connection,sql,new ScalarHandler(),args);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}