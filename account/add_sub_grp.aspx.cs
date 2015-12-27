using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["gp"] != "" && Request.QueryString["gp"] != null)
            {
                bl.grp_id = Convert.ToInt32(Request.QueryString["gp"].ToString());
                DataSet ds = new DataSet();
                ds = dl.slect_brocker_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txt_nm.Text = ds.Tables[0].Rows[0]["grp_name"].ToString();

                    dwd_grp.Text = ds.Tables[0].Rows[0]["ac_ty_id"].ToString();


                    btn_up.Visible = true;
                    btn_sub.Visible = false;

                }

            }
            fillgrid();
            grp_bind();
            dwd_grp.Items.Insert(0, new ListItem("---Select Group---", "0"));
        }
    }
    public void grp_bind()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.select_grp(bl);
            dwd_grp.DataSource = ds_state;
            dwd_grp.DataTextField = "grp_name";
            dwd_grp.DataValueField = "grp_id";
            dwd_grp.DataBind();
        }
        catch (Exception ex)
        {
        }
    }


    public void fillgrid()
    {
        try
        {


            GridView1.DataSource = dl.select_grp_grd(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void btn_sub_Click(object sender, EventArgs e)
    {
        try
        {
            bl.grp_nm = txt_nm.Text;
            bl.grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            dl.insetsubgrp(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Sub Group Created successfully'); window.location='add_sub_grp.aspx';", true);

        }
        catch (Exception)
        {
        }
    }
    protected void btn_up_Click(object sender, EventArgs e)
    {
        try
        {
            bl.grp_id = Convert.ToInt32(Request.QueryString["gp"].ToString());
            bl.grp_nm = txt_nm.Text;
            bl.ac_ty_id = dwd_grp.SelectedValue.ToString();
            dl.update_grp(bl);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Update Sub Group Created successfully'); window.location='add_sub_grp.aspx';", true);

        }
        catch (Exception)
        {
        }
    }
}