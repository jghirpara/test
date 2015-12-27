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

            if (Request.QueryString["itmgrp"] != "" && Request.QueryString["itmgrp"] != null)
            {
                bl.item_grp_id = Convert.ToInt32(Request.QueryString["itmgrp"].ToString());
                DataSet ds = new DataSet();
                ds = dl.selectitmegrp_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    txt_add_pro.Text = ds.Tables[0].Rows[0]["item_grp_nm"].ToString();
                    Button1.Visible = false;
                    Button2.Visible = true;
                }

            }
           


            grid();
            //DataSet dv = new DataSet();
            //dv = dl.selct_vat_cmp(bl);
            //if (dv.Tables[0].Rows.Count > 0)
            //{
            //    if (dv.Tables[0].Rows[0]["vat_tax"].ToString() != string.Empty)
            //    {
            //        dwd_vat.Text = dv.Tables[0].Rows[0]["vat_tax"].ToString();
            //    }
            //    if (dv.Tables[0].Rows[0]["add_vat"].ToString() != string.Empty)
            //    {
            //        DropDownList1.Text = dv.Tables[0].Rows[0]["add_vat"].ToString();
            //    }
                
            //}
            //else
            //{

            //}
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.item_grp_nm = txt_add_pro.Text;
            //bl.vat_1 = dwd_vat.Text;
            //bl.vat_2 = DropDownList1.Text;
            dl.insertitemgrp(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Item Group Created successfully'); window.location='itemgrp.aspx';", true);
        }
        catch
        {
        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.selectitemgrp(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            bl.item_grp_id = Convert.ToInt32(Request.QueryString["itmgrp"].ToString());
            bl.item_grp_nm = txt_add_pro.Text;
            dl.update_item_grp(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Item Group Upadte successfully'); window.location='itemgrp.aspx';", true);
        }
        catch
        {
        }
    }
    //protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (RadioButtonList1.SelectedItem.Text == "Not Applicable")
    //        {
    //            dwd_vat.Text = "0";
    //            DropDownList1.Text = "0";

    //        }
    //        else
    //        {
    //            DataSet dv = new DataSet();
    //            dv = dl.selct_vat_cmp(bl);
    //            if (dv.Tables[0].Rows.Count > 0)
    //            {
    //                if (dv.Tables[0].Rows[0]["vat_tax"].ToString() != string.Empty)
    //                {
    //                    dwd_vat.Text = dv.Tables[0].Rows[0]["vat_tax"].ToString();
    //                }
    //                if (dv.Tables[0].Rows[0]["add_vat"].ToString() != string.Empty)
    //                {
    //                    DropDownList1.Text = dv.Tables[0].Rows[0]["add_vat"].ToString();
    //                }

    //            }
    //            else
    //            {

    //            }
    //        }
    //    }
    //    catch
    //    {
    //    }
    //}
    protected void txt_add_pro_TextChanged(object sender, EventArgs e)
    {
        try
        {
            bl.item_grp_nm = txt_add_pro.Text;
            DataSet ds = new DataSet();
            ds = dl.secectsubgrp(bl);
            if (ds.Tables[0].Rows.Count > 0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('The Item Group Already Exists'); window.location='itemgrp.aspx';", true);
            }
            txt_add_pro.Focus();
        }
        catch (Exception )
        {
             
        }

    }
}