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
            if (Request.QueryString["itm"] != "" && Request.QueryString["itm"] != null)
            {
                bl.item_id = Convert.ToInt32(Request.QueryString["itm"].ToString());
                DataSet ds = new DataSet();
                ds = dl.select_itm_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    fildwd();
                    fildwdunit();
                  //  TextBox1.Text = ds.Tables[0].Rows[0]["opening_qty"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["item_name"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["item_code"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["item_nik"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["item_des"].ToString();
                //    TextBox8.Text = ds.Tables[0].Rows[0]["mrp"].ToString();
                //    TextBox2.Text = ds.Tables[0].Rows[0]["opening_date"].ToString();
                    dwd_grp.Text = ds.Tables[0].Rows[0]["item_sub_id"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["unit_id"].ToString();

                    //dwd_vat.Text = ds.Tables[0].Rows[0]["tax"].ToString();
                    //dwd_vat_add.Text = ds.Tables[0].Rows[0]["add_tax"].ToString();
                    //DropDownList3.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                    //dwd_exc.Text = ds.Tables[0].Rows[0]["basic_duty"].ToString();
                    txt_hsn.Text = ds.Tables[0].Rows[0]["hsn_code"].ToString();
                    txt_tarif_no.Text = ds.Tables[0].Rows[0]["tariff_no"].ToString();
                    // DropDownList2.Text = ds.Tables[0].Rows[0]["tax"].ToString();
                    // DropDownList3.Text = ds.Tables[0].Rows[0]["cst"].ToString();




                    Button1.Visible = false;
                    Button2.Visible = true;
                }

            }
            fildwd();
            grid();
            dwd_grp.Items.Insert(0, new ListItem("---Select Group---", "0"));
            fildwdunit();
            DropDownList1.Items.Insert(0, new ListItem("---Select Unit---", "0"));
          
            //  DropDownList2.Items.Insert(0, new ListItem("---Select---", ""));
            // DropDownList3.Items.Insert(0, new ListItem("---Select---", ""));
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
            dwd_grp.Focus();
        }
        catch (Exception ex)
        {
        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.selectitem(bl);
            GridView1.DataBind();
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
            DropDownList1.Focus();
        }
        catch (Exception ex)
        {
        }
    }
    //protected void LinkButton2_Click(object sender, EventArgs e)
    ////{
    ////    try
    ////    {
    ////        bl.item_grp_nm = txt_add_pro.Text;
    ////        dl.insertitemgrp(bl);
    ////        Response.Redirect("~/item_msater.aspx");
    ////    }
    ////    catch
    ////    {
    ////    }
    ////}

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.item_name = TextBox4.Text;
            bl.item_grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.nick_nm = TextBox6.Text;
            bl.item_code = TextBox5.Text;
            bl.item_des = TextBox7.Text;
         //   bl.opening_qty = TextBox1.Text;
        //    bl.openinig_date = TextBox2.Text;
            bl.unit = DropDownList1.SelectedItem.ToString();
            bl.unit_id = DropDownList1.SelectedValue.ToString();
        //    bl.mrp = TextBox8.Text;
          //  bl.qty = TextBox1.Text;
            // bl.tax = DropDownList2.SelectedValue.ToString();
            // bl.cst = DropDownList3.SelectedValue.ToString();
            // bl.tax = dwd_vat.Text;
            // bl.tax_4 = dwd_vat_add.Text;
            //  bl.ecc = "";
            //  bl.cst = DropDownList3.Text;
            bl.hsn = txt_hsn.Text;
            //  bl.basic_duty = dwd_exc.Text;
            bl.tarif_no = txt_tarif_no.Text;
            dl.insertitem(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Item Created successfully'); window.location='item_msater.aspx';", true);
        }
        catch
        {

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            bl.item_id = Convert.ToInt32(Request.QueryString["itm"].ToString());
            bl.item_name = TextBox4.Text;
            bl.item_grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.nick_nm = TextBox6.Text;
            bl.item_code = TextBox5.Text;
            bl.item_des = TextBox7.Text;
         //   bl.opening_qty = TextBox1.Text;
        //    bl.openinig_date = TextBox2.Text;
            bl.unit = DropDownList1.SelectedItem.ToString();
            bl.unit_id = DropDownList1.SelectedValue.ToString();
        //    bl.mrp = TextBox8.Text;
        //    bl.qty = TextBox2.Text;
            //   bl.tax = dwd_vat.Text;
            // bl.tax_4 = dwd_vat_add.Text;
            //  bl.ecc = "";
            // bl.cst = DropDownList3.Text;
            bl.hsn = txt_hsn.Text;
            // bl.basic_duty = dwd_exc.Text;
            bl.tarif_no = txt_tarif_no.Text;
            // bl.tax = DropDownList2.SelectedValue.ToString();
            // bl.cst = DropDownList3.SelectedValue.ToString();


            dl.update_item(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Item Update successfully'); window.location='item_msater.aspx';", true);
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
    //            dwd_vat_add.Text = "0";

    //        }
    //        else
    //        {
    //            bl.item_grp_id =Convert.ToInt32(dwd_grp.SelectedValue.ToString());
    //            DataSet dv = new DataSet();
    //            dv = dl.selct_vat_itm_grp(bl);
    //            if (dv.Tables[0].Rows.Count > 0)
    //            {
    //                if (dv.Tables[0].Rows[0]["vat_tax"].ToString() != string.Empty)
    //                {
    //                    dwd_vat.Text = dv.Tables[0].Rows[0]["vat_tax"].ToString();
    //                }
    //                if (dv.Tables[0].Rows[0]["add_tax"].ToString() != string.Empty)
    //                {
    //                    dwd_vat_add.Text = dv.Tables[0].Rows[0]["add_tax"].ToString();
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
    protected void dwd_grp_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{
        //    if (RadioButtonList1.SelectedItem.Text == "Not Applicable")
        //    {
        //        dwd_vat.Text = "0";
        //        dwd_vat_add.Text = "0";


        //    }
        //    else
        //    {
        //        bl.item_grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
        //        DataSet dv = new DataSet();
        //        dv = dl.selct_vat_itm_grp(bl);
        //        if (dv.Tables[0].Rows.Count > 0)
        //        {
        //            if (dv.Tables[0].Rows[0]["vat_tax"].ToString() != string.Empty)
        //            {
        //                dwd_vat.Text = dv.Tables[0].Rows[0]["vat_tax"].ToString();
        //            }
        //            else
        //            {
        //                dwd_vat.Text = "0";
        //            }
        //            if (dv.Tables[0].Rows[0]["add_vat"].ToString() != string.Empty)
        //            {
        //                dwd_vat_add.Text = dv.Tables[0].Rows[0]["add_vat"].ToString();
        //            }
        //            else
        //            {
        //                dwd_vat_add.Text = "0";
        //            }

        //        }
        //        else
        //        {

        //        }
        //    }
        //}
        //catch
        //{
        //}
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            bl.item_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            dl.delete_item_master(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Delete Successfully'); window.location='item_msater.aspx';", true);

            grid();
        }
        catch (Exception ex)
        {
        }


    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

        bl.item_name = TextBox4.Text;
        DataSet ds = new DataSet();
        ds = dl.secectitmnam(bl);
        if (ds.Tables[0].Rows.Count > 0)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('The Item Name Already Exists'); window.location='item_msater.aspx';", true);
        }
        dwd_grp.Focus();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            grid();
        }
        catch
        {
        }

    }
}