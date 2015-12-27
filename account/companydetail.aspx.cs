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

            
            fillstate();
            dwd_st.Items.Insert(0, new ListItem("---Select State---", "0"));
            dwd_ct.Items.Insert(0, new ListItem("---Select City---", "0"));

        }
    }
    public void fillstate()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.selectstate(bl);
            dwd_st.DataSource = ds_state;
            dwd_st.DataTextField = "state_name";
            dwd_st.DataValueField = "state_id";
            dwd_st.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void dwd_st_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            bl.state_id = Convert.ToInt32(dwd_st.SelectedValue.ToString());
            DataSet ds_state = new DataSet();
            ds_state = dl.selectcity(bl);
            dwd_ct.DataSource = ds_state;
            dwd_ct.DataTextField = "city_name";
            dwd_ct.DataValueField = "city_id";
            dwd_ct.DataBind();
            dwd_ct.Items.Insert(0, new ListItem("---Select City---", "0"));
        }
        catch (Exception ex)
        {
        }
    }
}