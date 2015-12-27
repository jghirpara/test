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
            if (Request.QueryString["bck"] != "" && Request.QueryString["bck"] != null)
            {
                bl.brocker_id = Convert.ToInt32(Request.QueryString["bck"].ToString());
                DataSet ds = new DataSet();
                ds = dl.slect_brocker_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    fillstate();
                    TextBox1.Text = ds.Tables[0].Rows[0]["brock_nm"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["address_1"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["address_2"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["state_id"].ToString();

                    bl.state_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
                    DataSet ds_state = new DataSet();
                    ds_state = dl.selectcity(bl);
                    DropDownList2.DataSource = ds_state;
                    DropDownList2.DataTextField = "city_name";
                    DropDownList2.DataValueField = "city_id";
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, new ListItem("---Select City---", "0"));

                    DropDownList2.Text = ds.Tables[0].Rows[0]["city"].ToString();


                    Button1.Visible = false;
                    Button2.Visible = true;
                }

            }
            fillstate();
            DropDownList1.Items.Insert(0, new ListItem("---Select State---", "0"));
            DropDownList2.Items.Insert(0, new ListItem("---Select City---", "0"));
            grid();
        }
    }
    public void fillstate()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.selectstate(bl);
            DropDownList1.DataSource = ds_state;
            DropDownList1.DataTextField = "state_name";
            DropDownList1.DataValueField = "state_id";
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
            bl.state_id =Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            DataSet ds_state = new DataSet();
            ds_state = dl.selectcity(bl);
            DropDownList2.DataSource = ds_state;
            DropDownList2.DataTextField = "city_name";
            DropDownList2.DataValueField = "city_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("---Select City---", "0"));
        }
        catch (Exception ex)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.brocker_nm = TextBox1.Text;
            bl.contact_no = TextBox3.Text;
            bl.address1 = TextBox4.Text;
            bl.address2 = TextBox5.Text;
            bl.state_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            bl.city_id =Convert.ToInt32(DropDownList2.SelectedValue.ToString());
            dl.insertbrocker(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Brocker Created successfully'); window.location='brockre_master.aspx';", true);

        }
        catch
        {
        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.selectbrocker(bl);
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
            bl.brocker_id = Convert.ToInt32(Request.QueryString["bck"].ToString());
            bl.brocker_nm = TextBox1.Text;
            bl.contact_no = TextBox3.Text;
            bl.address1 = TextBox4.Text;
            bl.address2 = TextBox5.Text;
            bl.state_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            bl.city_id = Convert.ToInt32(DropDownList2.SelectedValue.ToString());
            dl.update_brocker(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Brocker update successfully'); window.location='brockre_master.aspx';", true);

        }
        catch
        {
        }
    }
}