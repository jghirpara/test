using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class addexpence : System.Web.UI.Page
{

    DAL1 dl = new DAL1();
    BAL1 bl = new BAL1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["id"] != "" && Request.QueryString["id"] != null)
            {
                bl.id = Convert.ToInt32(Request.QueryString["id"].ToString());
                DataSet ds = new DataSet();
                ds = dl.edit_expence(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    txt_expence.Text = ds.Tables[0].Rows[0]["ex_name"].ToString();
                    Button1.Visible = false;
                    Button2.Visible = true;
                }

            }
            grid();
        }
    }
    protected void txt_expence_TextChanged(object sender, EventArgs e)
    {
        bl.e_name = txt_expence.Text;
        DataSet ds = new DataSet();
        ds = dl.secectexpencname(bl);
        if (ds.Tables[0].Rows.Count > 0)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('The Expence Name Already Exists'); window.location='addexpence.aspx';", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            bl.id = Convert.ToInt32(Request.QueryString["id"].ToString());
            bl.e_name = txt_expence.Text;
            dl.update_expence(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Update Expence Name  successfully'); window.location='addexpence.aspx';", true);

        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.e_name = txt_expence.Text;
            dl.insert_expence(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Expence Name  Created successfully'); window.location='addexpence.aspx';", true);

        }
        catch (Exception)
        {

            throw;
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            bl.id =Convert .ToInt32 ( GridView1.DataKeys[e.RowIndex].Value.ToString());
            dl.delete_expence(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Delete successfully'); window.location='addexpence.aspx';", true);
            grid();
        }
        catch (Exception ex)
        {
        }


    }

    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.select_expence(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
}