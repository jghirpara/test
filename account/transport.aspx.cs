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
            if (Request.QueryString["trp"] != "" && Request.QueryString["trp"] != null)
            {
                bl.trp_id = Convert.ToInt32(Request.QueryString["trp"].ToString());
                DataSet ds = new DataSet();
                ds = dl.selecttransport_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txt_nm.Text = ds.Tables[0].Rows[0]["trp_nm"].ToString();
                    txt_add.Text = ds.Tables[0].Rows[0]["trp_add"].ToString();
                    txt_phn.Text = ds.Tables[0].Rows[0]["phone_no"].ToString();

                   


                    btn_up.Visible = true;
                    btn_sub.Visible = false;

                }

            }
            fillgrid();

        }
    }

    protected void btn_sub_Click(object sender, EventArgs e)
    {
        try
        {
            bl.trp_naem = txt_nm.Text;
            bl.address1 = txt_add.Text;
            bl.phone = txt_phn.Text;
            dl.inserttransport(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Transport Created successfully'); window.location='transport.aspx';", true);
        }
        catch
        {
        }
    }
    public void fillgrid()
    {
        try
        {


            GridView1.DataSource = dl.selecttransport(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void btn_up_Click(object sender, EventArgs e)
    {
        try
        {
            bl.trp_id = Convert.ToInt32(Request.QueryString["trp"].ToString());
            bl.trp_naem = txt_nm.Text;
            bl.address1 = txt_add.Text;
            bl.phone = txt_phn.Text;
            dl.update_trp(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Transport Update successfully'); window.location='transport.aspx';", true);
        }
        catch
        {
        }
    }
}