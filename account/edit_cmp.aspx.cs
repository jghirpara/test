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
        if(!IsPostBack)
        {
            grid();
        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.selectcomapnymaster(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
}