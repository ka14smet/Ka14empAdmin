using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using BEL;
using DAL;



namespace BLL
{
    public class personalBLL
    {
        PersonalDAL objDAL = new PersonalDAL();

        public int insertdata(personalBEL objBEL)
        {
            int result;
            try
            {
                
                result = objDAL.insertdata(objBEL);
               if ( result!= 0)
                {
                    return result;
                }
                else
                {
                    return 0;
                }


            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objBEL = null;
                objDAL = null;
            }
            
            
        }
        public DataSet getdata()
        {
            try
            {
                return objDAL.getdata();
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objDAL = null;
            }
        }
        public int updatedata(personalBEL objBEL)
        {
            try
            {
                int updtresult = objDAL.updatedata(objBEL);
                if (updtresult > 0)
                {
                    return updtresult;
                }
                else
                {
                    return 0;
                }

            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objDAL = null;
                objBEL = null;
            }
        }
        public int deletedata(personalBEL objBEL)
        {
            int dltresult;
            dltresult = objDAL.deletedata(objBEL);
            try
            {
                if (dltresult > 0)
                {
                    return dltresult;
                }
                else
                {
                    return 0;
                }
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objDAL = null;
                objBEL = null;
            }
        }
        //workdetails
        public int insertwrkdata(personalBEL objBEL)
        {
            int wrkresult;
            try
            {
                wrkresult = objDAL.insertwrkdata(objBEL);
                if (wrkresult > 0)
                {
                    return wrkresult;
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
                objBEL = null;
                objDAL = null;
            }
        }
        public DataSet getwrkdata()
        {
            DataSet ds = new DataSet();
            try
            {
                ds = objDAL.getwrkdata();
                return ds;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                objDAL = null;
            }
        }
        public int updatewrkdata(personalBEL objBEL)
        {
            int updtwrkresult;
            try
            {
                updtwrkresult = objDAL.updatewrkdata(objBEL);
                if (updtwrkresult > 0)
                {
                    return updtwrkresult;
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
                objBEL = null;
                objDAL = null;
            }

        }
        //public int deletewrkdata(personalBEL objBEL)
        //{
        //    int delwrkresult;
        //    try
        //    {
        //        delwrkresult = objDAL.deletedata(objBEL);
        //        if (delwrkresult > 0)
        //        {
        //            return delwrkresult;
        //        }
        //        else
        //        {
        //            return 0;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw;
        //    }
        //    finally
        //    {
        //        objBEL = null;
        //        objDAL = null;
        //    }
        //}

        //for employee login
        public int insertemploylogindata(personalBEL objBEL)
        {
            int resultinstlogin;
            try
            {
                resultinstlogin = objDAL.insertemploylogindata(objBEL);
                if(resultinstlogin>0)
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
                objBEL = null;
                objDAL = null;
            }

        }
        public DataSet getemployelogindata()
        {
            DataSet ds = new DataSet();
            try
            {
                ds = objDAL.getemployelogindata();
                    return ds;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                
                objDAL = null;
            }
        }
        public int updatelogindata(personalBEL objBEL)
        {
            int resultupdatelgndata;
            try
            {
                resultupdatelgndata = objDAL.updatelogindata(objBEL);
                if (resultupdatelgndata > 0)
                {
                    return resultupdatelgndata;
                }
                else
                {
                    return 0;
                }
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                objBEL = null;
                objDAL = null;
            }
        }

        //for search
        public DataSet searchdata(personalBEL objBEL)
        {
            DataSet ds = new DataSet();
           
            try
            {
                ds = objDAL.searchdata(objBEL);
                return ds;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                objDAL = null;
                objBEL = null;
            }
        }
        public DataSet getadmnlgnpsrd(personalBEL objBEL)
        {
            DataSet ds = new DataSet();
            try
            {
                ds = objDAL.getadmnlgnpsrd(objBEL);
                return ds;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                objDAL = null;
                objBEL = null;
            }
        }
    }
}
