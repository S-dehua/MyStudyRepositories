using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;

namespace LUT_CarSystem.Models
{
    public class DBUtils
    {


        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        SqlDataAdapter dp;
    
        void connectionString(string name)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings[name].ConnectionString;
        }

        /*
         返回1 表示正确 , 则用户名或密码错误
         */
        public int GetUserByUsernameAndPwd(string Name, string Password)
        {
            connectionString("LoginContext");
            con.Open();
            com.Connection = con;
            com.CommandText = "select * from Driver  where Name='" + Name + "' and Password='" + Password + "'";

            dr = com.ExecuteReader();
    
          
            if (dr.Read())
            {
                con.Close();
                return 1;
            }
            else
            {
                con.Close();
                return 0;
            }

        }

        //如果用户名可用返回ture,则返回false
        public bool canUse(string Name) {

            connectionString("LoginContext");
            con.Open();
            com.Connection = con;
            com.CommandText = "select * from Driver  where Name='" + Name + "'";

            dr = com.ExecuteReader();


            if (dr.Read())
            {
                con.Close();
                return false;
            }
            else
            {
                con.Close();
                return true;
            }



        }

        public Driver getDriver(string Name, string Password)
        {

            try
            {
                connectionString("LoginContext");
                con.Open();
                com.Connection = con;
                string sql = "select * from Driver  where Name='" + Name + "' and Password='" + Password + "'";
                DataSet idxDs = new DataSet();
                dp = new SqlDataAdapter(sql, con);
                dp.Fill(idxDs);
                Driver d = DataSetToEntity<Driver>(idxDs, 0);
                con.Close();

                return d;
            }
            catch (SqlException ex)
            {
                con.Close();
                return null;
            }
            finally {
                con.Close();
            }

        }
        public static T DataSetToEntity<T>(DataSet p_DataSet, int p_TableIndex)
        {
            if (p_DataSet == null || p_DataSet.Tables.Count < 0)
                return default(T);
            if (p_TableIndex > p_DataSet.Tables.Count - 1)
                return default(T);
            if (p_TableIndex < 0)
                p_TableIndex = 0;
            if (p_DataSet.Tables[p_TableIndex].Rows.Count <= 0)
                return default(T);

            DataRow p_Data = p_DataSet.Tables[p_TableIndex].Rows[0];
            // 返回值初始化
            T _t = (T)Activator.CreateInstance(typeof(T));
            PropertyInfo[] propertys = _t.GetType().GetProperties();
            foreach (PropertyInfo pi in propertys)
            {
                if (p_DataSet.Tables[p_TableIndex].Columns.IndexOf(pi.Name.ToUpper()) != -1 && p_Data[pi.Name.ToUpper()] != DBNull.Value)
                {
                    pi.SetValue(_t, p_Data[pi.Name.ToUpper()], null);
                }
                else
                {
                    pi.SetValue(_t, null, null);
                }
            }
            return _t;
        }

        public static IList<T> DataSetToEntityList<T>(DataSet p_DataSet, int p_TableIndex)
         {
            if (p_DataSet == null || p_DataSet.Tables.Count< 0)
                return default(IList<T>);
            if (p_TableIndex > p_DataSet.Tables.Count - 1)
                 return default(IList<T>);
             if (p_TableIndex< 0)
                p_TableIndex = 0;
             if (p_DataSet.Tables[p_TableIndex].Rows.Count <= 0)
                return default(IList<T>);
 
            DataTable p_Data = p_DataSet.Tables[p_TableIndex];
            // 返回值初始化
             IList<T> result = new List<T>();
             for (int j = 0; j<p_Data.Rows.Count; j++)
             {
                 T _t = (T)Activator.CreateInstance(typeof(T));
                 PropertyInfo[] propertys = _t.GetType().GetProperties();
                  foreach (PropertyInfo pi in propertys)
                 {
                     if (p_Data.Columns.IndexOf(pi.Name.ToUpper()) != -1 && p_Data.Rows[j][pi.Name.ToUpper()] != DBNull.Value)
                     {
                          pi.SetValue(_t, p_Data.Rows[j][pi.Name.ToUpper()], null);
                      }
                   else
                    {
                         pi.SetValue(_t, null, null);
                      }
                  }
                 result.Add(_t);
             }
              return result;
         }



        public bool add(Driver driver) {


            connectionString("LoginContext");
            con.Open();
            try
            {
                com.Connection = con;
              
                    string sqlstr = "insert into Driver values('" + driver.DriverId + "','" + driver.Name + "','" + driver.Password +
                         "','" + driver.Gender + "','" + driver.Phone + "','" + driver.Email + "','" + driver.Address + "','" + 0 + "')";

                
                com.CommandText = sqlstr;
              com.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("error" + ex);
                return false;

            }
            finally
            {
                con.Close();//关闭连接

            }

        }

        public IList<Order> getOrderByDriverId(long driverId) {
           
            try
            {
                connectionString("LoginContext");
                con.Open();
                com.Connection = con;
                string sql = "select * from \"Order\" where DriverId='" + driverId +"'";
                DataSet idxDs = new DataSet();
                
                dp = new SqlDataAdapter(sql, con);
                dp.Fill(idxDs);
                IList<Order> list = DataSetToEntityList<Order>(idxDs, 0);
             
                return list;
            }
            catch (SqlException ex)
            {
                con.Close();
                System.Diagnostics.Debug.WriteLine("=======sql============" + ex);
                return null ;
            }
            finally {
                con.Close();
            }

        }
    }
}