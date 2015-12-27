using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
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
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers2(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["con"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select DISTINCT brock_nm from tbl_brocker where " +
                "brock_nm like '%'+@SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["brock_nm"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.comp_nm = txt_comp_nm.Text;
            int cmp = Convert.ToInt32(dl.slelct_cust_id_bill(bl));
            bl.cust_id = cmp;
            bl.brock_name = txt_brok_nm.Text;
            int brk = Convert.ToInt32(dl.slelct_brocker_cust(bl));
            bl.brock_id = brk;
            bl.date = txt_inv_dt.Text;
            bl.per = TextBox4.Text;
            dl.inset_cust_brok(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Invoice Created successfully'); window.location='brocker_party.aspx';", true);

        }
        catch
        {
        }
    }
    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.select_per_cust_brk(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
}