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

            grp_bind();
            dwd_grp.Items.Insert(0, new ListItem("---Select Group---", "0"));
            
        }
    }
    public void grp_bind()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.select_grp(bl);
            dwd_grp.DataSource = ds_state;
            dwd_grp.DataTextField = "grp_name";
            dwd_grp.DataValueField = "grp_id";
            dwd_grp.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
   
   
    protected void dwd_grp_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dwd_grp.SelectedValue.ToString() == "17")
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
    }
}