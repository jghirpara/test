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
            if (Request.QueryString["un"] != "" && Request.QueryString["un"] != null)
            {
                bl.unit_id = Request.QueryString["un"].ToString();
                DataSet ds = new DataSet();
                ds = dl.slect_unit_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txt_nm.Text = ds.Tables[0].Rows[0]["unit_nm"].ToString();

                    DropDownList1.Text = ds.Tables[0].Rows[0]["decimal_no"].ToString();


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
            bl.unit_name = txt_nm.Text;
            bl.decimal_no = DropDownList1.SelectedValue.ToString();
            dl.insertunit(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Unit Created successfully'); window.location='unit_master.aspx';", true);
        }
        catch (Exception ex)
        {
        }
    }
    public void fillgrid()
    {
        try
        {


            GridView1.DataSource = dl.selectunit(bl);
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
            bl.unit_id = Request.QueryString["un"].ToString();
            bl.unit_name = txt_nm.Text;
            bl.decimal_no = DropDownList1.SelectedValue.ToString();
            dl.update_unit(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Unit Update successfully'); window.location='unit_master.aspx';", true);
        }
        catch (Exception ex)
        {
        }
    }
}