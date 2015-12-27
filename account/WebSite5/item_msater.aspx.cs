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
            fildwd();
            dwd_grp.Items.Insert(0, new ListItem("---Select Group---", "0"));
            fildwdunit();
            DropDownList1.Items.Insert(0, new ListItem("---Select Unit---", "0"));
        }

    }
    
    public void fildwd()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.selectitemgrp(bl);
            dwd_grp.DataSource = ds_state;
            dwd_grp.DataTextField = "item_grp_nm";
            dwd_grp.DataValueField = "item_grp_id";
            dwd_grp.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    public void fildwdunit()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.selectunit(bl);
            DropDownList1.DataSource = ds_state;
            DropDownList1.DataTextField = "unit_nm";
            DropDownList1.DataValueField = "unit_id";
            DropDownList1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            bl.item_grp_nm = txt_add_pro.Text;
            dl.insertitemgrp(bl);
            Response.Redirect("~/item_msater.aspx");
        }
        catch
        {
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.item_name = TextBox4.Text;
            bl.item_grp_id =Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.nick_nm = TextBox6.Text;
            bl.item_code = TextBox5.Text;

        }
        catch
        {

        }
    }
}