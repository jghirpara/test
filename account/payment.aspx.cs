using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    double amt = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillcash();
            DropDownList1.Items.Insert(0, new ListItem("---Select Type---", "0"));
        }


    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers1(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["con"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select DISTINCT company_name from tbl_custmer where " +
                "company_name like '%'+@SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["company_name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            bl.ld_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            int id = Convert.ToInt32(dl.slelct_ld_for_payment(bl));
            if (id == 27)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else if (id == 28)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }

        }
        catch
        {
        }
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList4.SelectedValue.ToString() == "Inter Bank Transfer")
            {
                Label1.Visible = true;
                TextBox7.Visible = true;
                Label3.Visible = false;
                TextBox5.Visible = false;
            }
            else if (DropDownList4.SelectedValue.ToString() == "Same Bank Transfer")
            {
                Label1.Visible = true;
                TextBox7.Visible = true;
                Label3.Visible = false;
                TextBox5.Visible = false;
            }
            else
            {
                Label1.Visible = false;
                TextBox7.Visible = false;
                Label3.Visible = true;
                TextBox5.Visible = true;
            }
        }
        catch
        {
        }
    }
    public void fillcash()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.select_cash_ladger(bl);
            DropDownList1.DataSource = ds_state;
            DropDownList1.DataTextField = "ld_nm";
            DropDownList1.DataValueField = "ld_id";
            DropDownList1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    protected void txt_comp_nm_TextChanged(object sender, EventArgs e)
    {
        try
        {
            bl.comp_nm = txt_comp_nm.Text;
            GridView1.DataSource = dl.selct_amt_for_payment_recv(bl);
            GridView1.DataBind();
        }
        catch
        {
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            int i = 0;
            DataTable dt = new DataTable();
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    TextBox txt_tt = (TextBox)row.Cells[0].FindControl("txt_amt");
                    //            CheckBox chk = (CheckBox)GridView1.FindControl("CheckBox1");
                    Label lbl = (Label)row.Cells[0].FindControl("Label2");
                    CheckBox chkRow = (CheckBox)row.Cells[0].FindControl("chkRow");
                    double amount = Convert.ToDouble(TextBox8.Text);
                    if (chkRow != null)
                    {

                        if (chkRow.Checked == true)
                        {
                            double damt = Convert.ToDouble(lbl.Text);
                            if (damt > amount)
                            {
                                txt_tt.Text = Convert.ToString(damt - amount);
                            }
                            else
                            {
                                txt_tt.Text = lbl.Text;
                                amt = amount - damt;
                            }
                        }
                    }
                    else
                    {

                    }
                }
                i++;
            }
        }
        catch
        {
        }
    }

}