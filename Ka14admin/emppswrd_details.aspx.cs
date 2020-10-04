using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using BLL;
using System.Data;
using System.Data.SqlClient;

namespace Ka14admin
{
    public partial class emppswrd_details : System.Web.UI.Page
    {
        personalBEL objBEL = new personalBEL();
        personalBLL objBLL = new personalBLL();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                
               
                if (!Page.IsPostBack)
                {
                    bindlogindata();
                }
            }
            else
            {
                Response.Redirect("Admin_login.aspx");
            }
        }
        private void bindlogindata()
        {
            personalBLL objBLL = new personalBLL();
            DataSet ds = new DataSet();
            try
            {
                ds = objBLL.getemployelogindata();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    grdemploypswrdview.DataSource = ds;
                    grdemploypswrdview.DataBind();
                }
                else
                {
                    grdemploypswrdview.DataSource = null;
                    grdemploypswrdview.DataBind();
                }

              }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                objBEL = null;
                objBLL = null;
            }
       }
        

        protected void btnprsnldt_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_edit.aspx");
        }

        protected void btnwrkdt_Click(object sender, EventArgs e)
        {
            Response.Redirect("wrk_details.aspx");
        }

        protected void grdemploypswrdview_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdemploypswrdview.PageIndex = e.NewPageIndex;
            bindlogindata();


        }

        protected void grdemploypswrdview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdemploypswrdview.EditIndex = -1;
            bindlogindata();

        }

        protected void grdemploypswrdview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdemploypswrdview.EditIndex = e.NewEditIndex;
            bindlogindata();

        }

        protected void grdemploypswrdview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objBEL.employid = ((TextBox)(grdemploypswrdview.Rows[e.RowIndex].FindControl("txtlgnidEdit"))).Text.Trim();
            objBEL.loginpassword = ((TextBox)(grdemploypswrdview.Rows[e.RowIndex].FindControl("txtlgnpswrd"))).Text.Trim();

            int retrval;
            try
            {
                retrval = objBLL.updatelogindata(objBEL);
                if (retrval > 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "updated data sucessfully";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    clearcontrol();
                    grdemploypswrdview.EditIndex = -1;
                    bindlogindata();
                }
                else
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "updated data was unsucessfull";
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
        private void clearcontrol()
        {
            txtlgnid.Text = string.Empty;
            txtpassword.Text = string.Empty;
        }

        protected void btnsbmt_Click(object sender, EventArgs e)
        {
            objBEL.employid = txtlgnid.Text.Trim();
            objBEL.loginpassword = txtpassword.Text.Trim();
            int retval;
                try
            {
                retval = objBLL.insertemploylogindata(objBEL);
                if (retval > 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "inserted data was sucessfull";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    bindlogindata();
                }
                else
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "inserted data was unsucessfull";
                    lblcomment.ForeColor = System.Drawing.Color.Red;
                }
            }
           
            catch (SqlException ex)
            {
                if (ex.Errors.Count > 0)
                {
                    switch (ex.Errors[0].Number)
                    {
                        case 547:
                            clearcontrols();
                            lblcomment.Visible = true;
                            lblcomment.Text = "there is no such EmployId in our company...!";
                            lblcomment.ForeColor = System.Drawing.Color.Red;
                            break;
                        default:
                            throw;
                    }
                }
                
            }
            finally
            {
                objBEL = null;
                objBLL = null;
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search_employee.aspx");
        }
        private void clearcontrols()
        {
            txtlgnid.Text = string.Empty;
            txtpassword.Text = string.Empty;
        }

        protected void btnbck_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Admin_login.aspx");
        }
    }
}