using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            grid();
        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.selectcust(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            bl.cust_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            dl.delete_comapny(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Delete Successfully'); window.location='company_list.aspx';", true);

            grid();
        }
        catch (Exception ex)
        {
        }


    }


    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string item = e.Row.Cells[0].Text;
            foreach (Button button in e.Row.Cells[4].Controls.OfType<Button>())
            {
                if (button.CommandName == "Delete")
                {
                    button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                }
            }
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        grid();

    }
}