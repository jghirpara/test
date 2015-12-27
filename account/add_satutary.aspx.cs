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

            if (Request.QueryString["strp"] != "" && Request.QueryString["strp"] != null)
            {
                bl.id = Convert.ToInt32(Request.QueryString["strp"].ToString());
                DataSet ds = new DataSet();
                ds = dl.select_stu_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    dwd_stu.Text = ds.Tables[0].Rows[0]["under_cls"].ToString();
                    txt_nm.Text = ds.Tables[0].Rows[0]["satutary_nm"].ToString();
                    txt_tax.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                    txt_add_vat.Text = ds.Tables[0].Rows[0]["add_vat"].ToString();
                    txt_date.Text = ds.Tables[0].Rows[0]["app_date"].ToString();
                    Button1.Visible = false;
                    Button2.Visible = true;
                    grid();
                    //  Panel1.Visible = true;
                    if (dwd_stu.Text == "Dutys And Taxes")
                    {
                        txt_add_vat.Enabled = false;

                        grid();
                    }
                    else
                    {
                        txt_add_vat.Enabled = true;

                    }
                }

            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.stu_name = dwd_stu.SelectedItem.Text;
            bl.vat_1 = txt_nm.Text;
            bl.vate = txt_tax.Text;
            if (txt_add_vat.Text != string.Empty)
            {
                bl.vat_2 = txt_add_vat.Text;
            }
            else
            {
                bl.vat_2 = " ";
            }
            bl.apppli_dt = txt_date.Text;
            dl.inset_statutory(bl);
            dl.slelct_stu_id(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Insert successfully'); window.location='add_satutary.aspx';", true);
        }
        catch
        {
        }
    }
    public void grid()
    {
        try
        {

            bl.stu_name = dwd_stu.SelectedItem.Text;
            GridView1.DataSource = dl.selct_stu_grp(bl);
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
            bl.id =Convert.ToInt32(Request.QueryString["strp"].ToString());
            bl.stu_name = dwd_stu.SelectedItem.Text;
            bl.vat_1 = txt_nm.Text;
            bl.vate = txt_tax.Text;
            if (txt_add_vat.Text != string.Empty)
            {
                bl.vat_2 = txt_add_vat.Text;
            }
            else
            {
                bl.vat_2 = " ";
            }
            bl.apppli_dt = txt_date.Text;
            dl.update_statutory(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('update successfully'); window.location='add_satutary.aspx';", true);
        }
        catch
        {
        }
    }
    
    protected void dwd_stu_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (dwd_stu.SelectedItem.Text == "Vat Class")
            {
                txt_add_vat.Enabled = true;
                grid();
                Button1.Visible = true;

            }
            else if (dwd_stu.SelectedItem.Text == "Dutys And Taxes")
            {
                txt_add_vat.Enabled = false;
                grid();
                Button1.Visible = false;
            }

            else
            {
                txt_add_vat.Enabled = false;
                grid();
                Button1.Visible = true;
            }
        }
        catch
        {
        }
    }
}