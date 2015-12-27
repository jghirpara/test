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
            if (Request.QueryString["vch"] != "" && Request.QueryString["vch"] != null)
            {
                bl.vch_id = Convert.ToInt32(Request.QueryString["vch"].ToString());
                DataSet ds = new DataSet();
                ds = dl.slect_vcher_update(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    grp_bind(); ;
                    txt_nm.Text = ds.Tables[0].Rows[0]["vch_nm"].ToString();
                    dwd_grp.Text = ds.Tables[0].Rows[0]["ac_ty_id"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["ino_no_type"].ToString();
                    TextBox12.Text = ds.Tables[0].Rows[0]["ino_no_partan"].ToString();
                    Editor1.Content = ds.Tables[0].Rows[0]["term_condition"].ToString();
                    Editor2.Content = ds.Tables[0].Rows[0]["e_declare"].ToString();

                    Button2.Visible = true;
                    Button1.Visible = false;

                }

            }
            grid();
            grp_bind();
            dwd_grp.Items.Insert(0, new ListItem("---Select Group---", "0"));
        }
    }
    public void grp_bind()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.selectvavchertype(bl);
            dwd_grp.DataSource = ds_state;
            dwd_grp.DataTextField = "vch_nm";
            dwd_grp.DataValueField = "vch_id";
            dwd_grp.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.vch_nm = txt_nm.Text;
            bl.vch_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.inv_no = DropDownList1.SelectedValue.ToString();
            bl.ino_no_partan = TextBox12.Text;
            bl.term_condition = Editor1.Content;
            bl.e_declare = Editor2.Content;
            dl.insetsubvacher(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Vocher Type Created successfully'); window.location='vavchertype.aspx';", true);


        }
        catch
        {

        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.selectvavchertypegrid(bl);
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
            bl.vch_id = Convert.ToInt32(Request.QueryString["vch"].ToString());
            bl.vch_nm = txt_nm.Text;
            bl.ac_ty_id = dwd_grp.SelectedValue.ToString();
            bl.inv_no = DropDownList1.SelectedValue.ToString();
            bl.ino_no_partan = TextBox12.Text;
            bl.term_condition = Editor1.Content;
            bl.e_declare = Editor2.Content;
            dl.update_vch_grp(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Vocher Type update successfully'); window.location='vavchertype.aspx';", true);


        }
        catch
        {

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "Custom")
        {
            Label1.Visible = true;
            TextBox12.Visible = true;
        }
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string decodedText = HttpUtility.HtmlDecode(e.Row.Cells[1].Text);
            e.Row.Cells[1].Text = decodedText;
        }
    }
}