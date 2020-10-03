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
    public partial class admin_edit : System.Web.UI.Page
    {
        personalBEL objBEL = new personalBEL();
        personalBLL objBLL = new personalBLL();
            
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Bindpersonaldata();
            }

        }

        private void Bindpersonaldata()
        {
            personalBLL objBLL = new personalBLL();

            DataSet ds = new DataSet();
            try
            {

                ds = objBLL.getdata();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    grdprsnlview.DataSource = ds;
                    grdprsnlview.DataBind();

                }
                else
                {
                    grdprsnlview.DataSource = null;
                    grdprsnlview.DataBind();
                }

            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                ds = null;
            }
        }





        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objBEL.employfullname = txtname.Text.Trim();
            objBEL.employdob = txtdob.Text.Trim();
            objBEL.employgender = txtgender.Text.Trim();
            objBEL.employbloodgrp = txtbldgrp.Text.Trim();
            objBEL.employmobno1 = txtmob1.Text.Trim();
            objBEL.employmobno2 = txtmob2.Text.Trim();
            objBEL.employmailid = txtmailid.Text.Trim();
            objBEL.employaddress = txtadrs.Text.Trim();
            objBEL.employqualification = txtqal.Text.Trim();
            objBEL.employdesignation = txtdesg.Text.Trim();

            int retrval;

            try
            {
                retrval = objBLL.insertdata(objBEL);
                if (retrval != 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "inserted data succesfully";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    Bindpersonaldata();
                }
                else
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "inserted data was not  succesfull";
                    lblcomment.ForeColor = System.Drawing.Color.Red;
                }
               
            }
            catch(Exception ex)
            {
                
                Response.Write("ERROR"+ex.Message);

            }
            finally
            {
                objBEL = null;
                objBLL = null;
            }
            

        }
        protected void grdprsnlview_RowEditing(object sender,GridViewEditEventArgs e)
        {
            grdprsnlview.EditIndex = e.NewEditIndex;
            Bindpersonaldata();
        }
        protected void grdprsnlview_RowCancelingEdit(object sender,GridViewCancelEditEventArgs e)
        {
            grdprsnlview.EditIndex = -1;
            Bindpersonaldata();
        }
        protected void grdprsnlview_PageIndexChanging(object sender,GridViewPageEventArgs e)
        {
            grdprsnlview.PageIndex =e.NewPageIndex;
            Bindpersonaldata();
        }
        protected void grdprsnlview_RowDeleting(object sender,GridViewDeleteEventArgs e)
        {
            string id = grdprsnlview.DataKeys[e.RowIndex].Value.ToString();
            objBEL.employid=id;

            try
            {
                int dltresult = objBLL.deletedata(objBEL);
                if (dltresult > 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "deleted succesfully";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    clearcontrols();
                    grdprsnlview.EditIndex = -1;
                    Bindpersonaldata();
                }
                else
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "deleted was unsuccesfull";
                    lblcomment.ForeColor = System.Drawing.Color.Red;
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                objBEL = null;
                objBLL = null;
            }

        }
        protected void grdprsnlview_RowUpdating(object sender,GridViewUpdateEventArgs e)
        {
            objBEL.employid = grdprsnlview.DataKeys[e.RowIndex].Value.ToString();
            objBEL.employfullname = ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtnameEdit"))).Text.Trim();
            objBEL.employdob= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtDOBEdit"))).Text.Trim();
            objBEL.employgender= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtgenderEdit"))).Text.Trim();
            objBEL.employbloodgrp=((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtbldgrpEdit"))).Text.Trim();
            objBEL.employmobno1= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtmob1Edit"))).Text.Trim();
            objBEL.employmobno2= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtmob2Edit"))).Text.Trim();
            objBEL.employmailid= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtmailidEdit"))).Text.Trim();
            objBEL.employaddress= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtadrEdit"))).Text.Trim();
            objBEL.employqualification= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtqalEdit"))).Text.Trim();
            objBEL.employdesignation= ((TextBox)(grdprsnlview.Rows[e.RowIndex].FindControl("txtdesgnEdit"))).Text.Trim();

           
            try
            {
                int updtresult = objBLL.updatedata(objBEL);
                if (updtresult > 0)
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "Updated sucessfully";
                    lblcomment.ForeColor = System.Drawing.Color.Green;
                    clearcontrols();
                    grdprsnlview.EditIndex = -1;
                    Bindpersonaldata();

                }
                else
                {
                    lblcomment.Visible = true;
                    lblcomment.Text = "Updated was unsucessfull";
                    lblcomment.ForeColor = System.Drawing.Color.Red;

                }
                   
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                objBEL = null;
                objBLL = null;
            } 
        }
        private void clearcontrols()
        {
            txtname.Text = string.Empty;
            txtdob.Text = string.Empty;
            txtgender.Text= string.Empty;
            txtbldgrp.Text = string.Empty;
            txtmob1.Text = string.Empty;
            txtmob2.Text = string.Empty;
            txtmailid.Text = string.Empty;
            txtmailid.Text = string.Empty;
            txtadrs.Text = string.Empty;
            txtqal.Text = string.Empty;
            txtdesg.Text = string.Empty;
        }

        protected void btnwrkdt_Click(object sender, EventArgs e)
        {
            Response.Redirect("wrk_details.aspx");
        }

        protected void btnemppswrd_Click(object sender, EventArgs e)
        {
            Response.Redirect("emppswrd_details.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search_employee.aspx");
        }
    }
}