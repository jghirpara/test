
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default4 : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //bind();
          fillvoucher();
            DropDownList1.Items.Insert(0, new ListItem("---Select Type---", "0"));
        }

    }
    public void fillvoucher()
    {

        try
        {
            DataSet ds = new DataSet();
            ds = dl.select_sales_vaoucher(bl);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "vch_nm";
            DropDownList1.DataValueField = "vch_id";
            DropDownList1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            bl.vch_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            GridView1.DataSource = dl.slect_vch_ich(bl);
            GridView1.DataBind();
        }
        catch
        {
        }
    }


    //public void bind()
    //{
    //    GridView1.DataSource = dl.slect_vch_ich1(bl);
    //    GridView1.DataBind();
    
    //}
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = dl.slect_vch_ich(bl);
            GridView1.DataBind();
        }
        catch
        {
        }
    }
}