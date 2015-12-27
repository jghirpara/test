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
        if(!IsPostBack)
        {
            if (Request.QueryString["gwd"] != "" && Request.QueryString["gwd"] != null)
            {
                bl.godow_id = Convert.ToInt32(Request.QueryString["gwd"].ToString());
                DataSet ds = new DataSet();
                ds = dl.slect_gwd_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txt_nm.Text = ds.Tables[0].Rows[0]["godw_nm"].ToString();




                    Button2.Visible = true;
                    Button1.Visible = false;

                }

            }
            fillgrid();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.godown_nm = txt_nm.Text;
            dl.insertitegodawon(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Godown Created successfully'); window.location='godown.aspx';", true);
        }
        catch
        {
        }
    }
    public void fillgrid()
    {
        try
        {


            GridView1.DataSource = dl.selectgodown(bl);
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
            bl.godow_id = Convert.ToInt32(Request.QueryString["gwd"].ToString());
            bl.godown_nm = txt_nm.Text;
            dl.update_godown_id(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Godown Update successfully'); window.location='godown.aspx';", true);
        }
        catch
        {
        }
    }
}