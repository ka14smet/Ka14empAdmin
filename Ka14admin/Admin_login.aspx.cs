using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BEL;
using BLL;

namespace Ka14admin
{
    public partial class Admin_login : System.Web.UI.Page
    {
        personalBEL objBEL = new personalBEL();
        personalBLL objBLL = new personalBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsbmt_Click(object sender, EventArgs e)
        {
            

            personalBLL objBLL = new personalBLL();
            personalBEL objBEL = new personalBEL();
            objBEL.adminlgnid = txtadmnid.Text.Trim();
            DataSet ds = new DataSet();
            ds = objBLL.getadmnlgnpsrd(objBEL);
            string pswrd = txtadmpswrd.Text.Trim();
            string valid;
            if (ds !=null)
            {
                DataTable dt = ds.Tables[0];
                valid = dt.Rows[0].Field<string>("adminpswrd");
            }
            else
            {
                 valid = null;
            }

            try {
                if (pswrd != valid)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "invalid ID and password";
                    lblcomment.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    lblcomment.Visible = false;
                    Session["id"] = txtadmnid.Text.Trim();
                    
                    {
                        Response.Redirect("admin_edit.aspx");
                    }
                   
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error" + ex.Message);
            }
            finally
            {
                objBEL = null;
                objBLL = null;
            }
        }

        protected void btnhme_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://ka14.me/");
        }
    }
}