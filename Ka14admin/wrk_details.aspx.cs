using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BEL;
using BLL;

namespace Ka14admin
{
    public partial class wrk_details : System.Web.UI.Page
    {
        personalBEL objBEL = new personalBEL();
        personalBLL objBLL = new personalBLL();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindworkdata();
            }
        }
        private void bindworkdata()
        {
            personalBLL objBLL = new personalBLL();
            DataSet ds = new DataSet();
            try
            {
                ds = objBLL.getwrkdata();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    grdwrkdtlsview.DataSource = ds;
                    grdwrkdtlsview.DataBind();
                }
                else
                {
                    grdwrkdtlsview.DataSource = null; 
                    grdwrkdtlsview.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                objBLL = null;
                objBEL = null;
            }

        }

        protected void btnprsnldt_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_edit.aspx");
        }

        protected void btnemppswrd_Click(object sender, EventArgs e)
        {
            Response.Redirect("emppswrd_details.aspx");
        }
        protected void grdwrkdtlsview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdwrkdtlsview.EditIndex = e.NewEditIndex;
            bindworkdata();
        }
        protected void grdwrkdtlsview_RowCancelingEdit(object sender,GridViewCancelEditEventArgs e)
        {
            grdwrkdtlsview.EditIndex = -1;
            bindworkdata();
        }
        protected void grdwrkdtlsview_PageIndexChanging(object sender,GridViewPageEventArgs e)
        {
            grdwrkdtlsview.PageIndex = e.NewPageIndex;
            bindworkdata();
        }
        //protected void grdwrkdtlsview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    personalBEL objBEL = new personalBEL();
        //    //GridViewRow row = grdwrkdtlsview.SelectedRow;

        //    //string id = grdwrkdtlsview.DataKeys[e.RowIndex].Values.ToString();

        //    string id =  ((TextBox)(grdwrkdtlsview.Rows[e.RowIndex].FindControl("txtwrkidEdit"))).Text.Trim();
        //    objBEL.employid = id;
        //    int retrval;
        //    try
        //    {
        //        retrval = objBLL.deletewrkdata(objBEL);
        //        if (retrval > 0)
        //        {
        //            lblcomment.Visible = true;
        //            lblcomment.Text = "Deleted data successfully";
        //            lblcomment.ForeColor = System.Drawing.Color.Green;
        //            clearcontrol();
        //            grdwrkdtlsview.EditIndex = -1;
        //            bindworkdata();

        //        }
        //        else
        //        {
        //            lblcomment.Visible = true;
        //            lblcomment.Text = "Deleted data was unsuccessfull";
        //            lblcomment.ForeColor = System.Drawing.Color.Red;
        //        }
        //    }
        //    catch(Exception ex)
        //    {
        //        Response.Write("Error" + ex.Message);
        //    }
        //    finally
        //    {
        //        objBEL = null;
        //        objBLL = null;
        //    }
        //}
        protected void grdwrkdtlsview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objBEL.employid = ((TextBox)(grdwrkdtlsview.Rows[e.RowIndex].FindControl("txtwrkidEdit"))).Text.Trim();
            objBEL.workingon= ((TextBox)(grdwrkdtlsview.Rows[e.RowIndex].FindControl("txtprjwrkonEdit"))).Text.Trim();
            objBEL.wrkstrton= ((TextBox)(grdwrkdtlsview.Rows[e.RowIndex].FindControl("txtwrkstrtonEdit"))).Text.Trim();
            objBEL.wrkcmplton= ((TextBox)(grdwrkdtlsview.Rows[e.RowIndex].FindControl("txtwrkcmpltonEdit"))).Text.Trim();
            objBEL.trngprgm= ((TextBox)(grdwrkdtlsview.Rows[e.RowIndex].FindControl("txttrngprgEdit"))).Text.Trim();

            int retrval;
            try
            {
                retrval = objBLL.updatewrkdata(objBEL);
                if (retrval > 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "updated data sucessfully";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    clearcontrol();
                    grdwrkdtlsview.EditIndex = -1;
                    bindworkdata();
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
            txtwrkid.Text = string.Empty;
            txtwrkingon.Text = string.Empty;
            txtwrkstrt.Text = string.Empty;
            txtwrkcmplt.Text = string.Empty;
            txttrngprg.Text = string.Empty;
        }

        protected void btnsbmt_Click(object sender, EventArgs e)
        {
            objBEL.employid = txtwrkid.Text.Trim();
            objBEL.workingon = txtwrkingon.Text.Trim();
            objBEL.wrkstrton = txtwrkstrt.Text.Trim();
            objBEL.wrkcmplton = txtwrkcmplt.Text.Trim();
            objBEL.trngprgm = txttrngprg.Text.Trim();

            int retval;
        try{
                retval = objBLL.insertwrkdata(objBEL);
                if (retval > 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "inserted data sucessfully";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    bindworkdata();
                }
                else
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "inserted data sucessfully";
                    lblcomment.ForeColor = System.Drawing.Color.Red;

                }

            }
            catch(SqlException ex)
            {
                if (ex.Errors.Count > 0)
                {
                    switch (ex.Errors[0].Number)
                    {
                        case 547:
                            clearcontrol();
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
    }
}
  