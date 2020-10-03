using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using BEL;

namespace DAL
{
    public class PersonalDAL
    {
        personalBEL objBEL = new personalBEL();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);

        public int insertdata(personalBEL objBEL)
        {
            
            int result;
            SqlCommand cmd = new SqlCommand("spinsertdata",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", objBEL.employfullname);
            cmd.Parameters.AddWithValue("@dob", objBEL.employdob);
            cmd.Parameters.AddWithValue("@gender", objBEL.employgender);
            cmd.Parameters.AddWithValue("@bloodgroup", objBEL.employbloodgrp);
            cmd.Parameters.AddWithValue("@mobile1", objBEL.employmobno1);
            cmd.Parameters.AddWithValue("@mobile2", objBEL.employmobno2);
            cmd.Parameters.AddWithValue("@mailid", objBEL.employmailid);
            cmd.Parameters.AddWithValue("@address", objBEL.employaddress);
            cmd.Parameters.AddWithValue("@qualification", objBEL.employqualification);
            cmd.Parameters.AddWithValue("@designation", objBEL.employdesignation);
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                result = cmd.ExecuteNonQuery();
                
                return result;
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
                objBEL = null;
            }


        }  
        public DataSet getdata()
        {
            DataSet ds = new DataSet();

            try
            {
                SqlCommand cmd = new SqlCommand("spgetprsnldata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                cmd.Dispose();
                return ds;
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                
               
            }
                
        }
        public int updatedata(personalBEL objBEL)
        {
            int updtresult;
            SqlCommand cmd = new SqlCommand("spupdateprsnldata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBEL.employid);
            cmd.Parameters.AddWithValue("@name", objBEL.employfullname);
            cmd.Parameters.AddWithValue("@dob", objBEL.employdob);
            cmd.Parameters.AddWithValue("@gender", objBEL.employgender);
            cmd.Parameters.AddWithValue("@bloodgroup", objBEL.employbloodgrp);
            cmd.Parameters.AddWithValue("@mobile1", objBEL.employmobno1);
            cmd.Parameters.AddWithValue("@mobile2", objBEL.employmobno2);
            cmd.Parameters.AddWithValue("@mailid", objBEL.employmailid);
            cmd.Parameters.AddWithValue("@address", objBEL.employaddress);
            cmd.Parameters.AddWithValue("@qualification", objBEL.employqualification);
            cmd.Parameters.AddWithValue("@designation", objBEL.employdesignation);
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                updtresult = cmd.ExecuteNonQuery();
                return updtresult;
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
                objBEL = null;
            }



        }
        public int deletedata(personalBEL objBEL)
        {
            int dltresult;
            SqlCommand cmd = new SqlCommand("spdeletedata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBEL.employid);
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                dltresult = cmd.ExecuteNonQuery();
                return dltresult;
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objBEL = null;
            }


        }
        public int insertwrkdata(personalBEL objBEL)
        {
            int wrkresult;
            SqlCommand cmd = new SqlCommand("spinsertwrkdetails",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBEL.employid);
            cmd.Parameters.AddWithValue("@working", objBEL.workingon);
            cmd.Parameters.AddWithValue("@workstart", objBEL.wrkstrton);
            cmd.Parameters.AddWithValue("@workcomplete", objBEL.wrkcmplton);
            cmd.Parameters.AddWithValue("@trainingprogram", objBEL.trngprgm);

            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                wrkresult = cmd.ExecuteNonQuery();
                return wrkresult;
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objBEL = null;
             
            }
            
        }
        public DataSet getwrkdata()
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand("spgetwrkdata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                cmd.Dispose();
                return ds;
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                
            }
           }
        public int updatewrkdata(personalBEL objBEL)
        {
            int updtwrkresult;
            SqlCommand cmd = new SqlCommand("spupdatewrkdata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBEL.employid);
            cmd.Parameters.AddWithValue("@working", objBEL.workingon);
            cmd.Parameters.AddWithValue("@workstart", objBEL.wrkstrton);
            cmd.Parameters.AddWithValue("@workcomplete", objBEL.wrkcmplton);
            cmd.Parameters.AddWithValue("@trainingprogram", objBEL.trngprgm);
            try {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                updtwrkresult = cmd.ExecuteNonQuery();
                return updtwrkresult;

            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
                objBEL = null;
            }
        }
        //public int deletewrkdata(personalBEL objBEL)
        //{
        //    int delwrkresult;
        //    SqlCommand cmd = new SqlCommand("spdeletewrkdata", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@id", objBEL.employid);
        //    try
        //    {
        //        if (con.State != ConnectionState.Open)
        //        {
        //            con.Open();
        //        }
        //        delwrkresult = cmd.ExecuteNonQuery();
        //        return delwrkresult;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw;
        //    }
        //    finally
        //    {
        //        if (con.State != ConnectionState.Closed)
        //        {
        //            con.Close();
        //        }
        //        objBEL = null;
        //    }
        //}

        //for employelogin
        public int insertemploylogindata(personalBEL objBEL)
        {
            int resultinstlogin;
            SqlCommand cmd = new SqlCommand("spinsertlogindata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBEL.employid);
            cmd.Parameters.AddWithValue("@password", objBEL.loginpassword);

            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                resultinstlogin = cmd.ExecuteNonQuery();
                if (resultinstlogin > 0) 
                {
                    return resultinstlogin;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
                objBEL = null;
            }

        }

        public DataSet getemployelogindata()
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand("spgetlogindata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw;
            }
           finally
            {
                
            }
            
        }
        public int updatelogindata(personalBEL objBEL)
        {
            int resultupdatelgndata;
            SqlCommand cmd = new SqlCommand("spupdatelogindata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBEL.employid);
            cmd.Parameters.AddWithValue("@password", objBEL.loginpassword);
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                resultupdatelgndata = cmd.ExecuteNonQuery();
                return resultupdatelgndata;

            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
                objBEL = null;
            }

            
        }

        // for search
        public DataSet searchdata(personalBEL objBEL)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("spsearch",con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand.Parameters.AddWithValue("@id", objBEL.employid);
            try
            {
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    return ds;
                }
                else
                {
                    return null;
                }
            }
            catch(Exception)
            {
                throw;
            }
            finally
            {
                objBEL = null;
            }
        }
        public DataSet getadmnlgnpsrd(personalBEL objBEL)
        {
            DataSet ds = new DataSet(); 
            SqlDataAdapter sda = new SqlDataAdapter("adminpswrdlgn", con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand.Parameters.AddWithValue("@id", objBEL.adminlgnid);
            try
            {
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    return ds;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                objBEL = null;
            }
        }
       


    }
}
