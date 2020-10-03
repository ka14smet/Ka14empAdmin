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
    public partial class Search_employee : System.Web.UI.Page
    {
        personalBEL objBEL = new personalBEL();
        personalBLL objBLL = new personalBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnprsnldt_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_edit.aspx");
        }

        protected void btnwrkdt_Click(object sender, EventArgs e)
        {
            Response.Redirect("wrk_details.aspx");
        }

        protected void btnlgnpswrd_Click(object sender, EventArgs e)
        {
            Response.Redirect("emppswrd_details.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            personalBEL objBEL = new personalBEL();
            personalBLL objBLL = new personalBLL();
            DataSet ds = new DataSet();
            objBEL.employid = txtsearch.Text.Trim();
            try
            {
                ds = objBLL.searchdata(objBEL);
                string id = txtsearch.Text.Trim();
                if (ds != null)
                {
                    grdprsnlview.DataSource = ds.Tables[0];
                    grdprsnlview.DataBind();
                    grdwrkdtlsview.DataSource = ds.Tables[1];
                    grdwrkdtlsview.DataBind();
                    txtsearch.Text = string.Empty;
                    lblcomment.Visible = true;
                    lblcomment.Text = id;
                    lblcomment.ForeColor = System.Drawing.Color.BlueViolet;
                }
                else
                {
                    txtsearch.Text = string.Empty;
                    grdprsnlview.DataSource = null;
                    grdprsnlview.DataBind();
                    grdwrkdtlsview.DataSource = null;
                    grdwrkdtlsview.DataBind(); 
                    lblcomment.Visible = true;
                    lblcomment.Text = ("Employees details with "+id+" id does not exists....!");
                    lblcomment.ForeColor = System.Drawing.Color.Red;
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
    
    }
}