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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetInitialRow();
            for (int i = 1; i <= 4; i++)
            {
                AddNewRowToGrid();
            }
            ext();
            dcnogenrate();
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
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers3(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["con"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select DISTINCT trp_nm from tbl_transport where " +
                "trp_nm like '%'+@SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["trp_nm"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers4(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["con"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select DISTINCT item_name from tbl_item_master where " +
                "item_name like '%'+@SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["item_name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers5(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["con"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select DISTINCT ld_nm from tbl_ledger where " +
                "ld_nm like '%'+@SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["ld_nm"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    private void ext()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;

        dt.Columns.Add(new DataColumn("Column1", typeof(string)));
        dt.Columns.Add(new DataColumn("Column2", typeof(string)));

        dr = dt.NewRow();

        dr["Column1"] = string.Empty;
        dr["Column2"] = string.Empty;

        dt.Rows.Add(dr);

        //Store the DataTable in ViewState
        ViewState["CurrentTable2"] = dt;

        grd_add.DataSource = dt;
        grd_add.DataBind();
    }

    private void SetInitialRow()
    {

        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        dt.Columns.Add(new DataColumn("Column1", typeof(string)));
        dt.Columns.Add(new DataColumn("Column2", typeof(string)));
        dt.Columns.Add(new DataColumn("Column3", typeof(string)));
        dt.Columns.Add(new DataColumn("Column4", typeof(string)));
        dt.Columns.Add(new DataColumn("Column5", typeof(string)));
        dt.Columns.Add(new DataColumn("Column6", typeof(string)));
        dr = dt.NewRow();
        dr["RowNumber"] = 1;
        dr["Column1"] = string.Empty;
        dr["Column2"] = string.Empty;
        dr["Column3"] = string.Empty;
        dr["Column4"] = string.Empty;
        dr["Column5"] = string.Empty;
        dr["Column6"] = string.Empty;
        dt.Rows.Add(dr);

        //Store the DataTable in ViewState
        ViewState["CurrentTable"] = dt;

        grid_array.DataSource = dt;
        grid_array.DataBind();
    }
    private void AddNewRowToGrid()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    //extract the TextBox values
                    TextBox box1 = (TextBox)grid_array.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                    TextBox box2 = (TextBox)grid_array.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                    TextBox box3 = (TextBox)grid_array.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                    TextBox box4 = (TextBox)grid_array.Rows[rowIndex].Cells[4].FindControl("TextBox4");
                    TextBox box5 = (TextBox)grid_array.Rows[rowIndex].Cells[5].FindControl("TextBox5");
                    TextBox box6 = (TextBox)grid_array.Rows[rowIndex].Cells[6].FindControl("TextBox6");



                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["Column4"] = box4.Text;
                    dtCurrentTable.Rows[i - 1]["Column5"] = box5.Text;
                    dtCurrentTable.Rows[i - 1]["Column6"] = box6.Text;
                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;
                grid_array.DataSource = dtCurrentTable;
                grid_array.DataBind();
                
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }

        //Set Previous Data on Postbacks
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)grid_array.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                    TextBox box2 = (TextBox)grid_array.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                    TextBox box3 = (TextBox)grid_array.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                    TextBox box4 = (TextBox)grid_array.Rows[rowIndex].Cells[4].FindControl("TextBox4");
                    TextBox box5 = (TextBox)grid_array.Rows[rowIndex].Cells[5].FindControl("TextBox5");
                    TextBox box6 = (TextBox)grid_array.Rows[rowIndex].Cells[6].FindControl("TextBox6");

                    box1.Text = dt.Rows[i]["Column1"].ToString();
                    box2.Text = dt.Rows[i]["Column2"].ToString();
                    box3.Text = dt.Rows[i]["Column3"].ToString();
                    box4.Text = dt.Rows[i]["Column4"].ToString();
                    box5.Text = dt.Rows[i]["Column5"].ToString();
                    box6.Text = dt.Rows[i]["Column6"].ToString();

                    rowIndex++;
                }
            }
        }
    }
    private void SetPreviousData_2()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable2"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable2"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextBox bx = (TextBox)grd_add.Rows[rowIndex].Cells[0].FindControl("txt_lg");
                    TextBox bx2 = (TextBox)grd_add.Rows[rowIndex].Cells[1].FindControl("txt_amt");
                   

                    bx.Text = dt.Rows[i]["Column1"].ToString();
                    bx2.Text = dt.Rows[i]["Column2"].ToString();
                     rowIndex++;
                }
            }
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRowToGrid();
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable2"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable2"];
            DataRow drCurrentRow2 = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    //extract the TextBox values
                    TextBox bx = (TextBox)grd_add.Rows[rowIndex].Cells[0].FindControl("txt_lg");
                    TextBox bx2 = (TextBox)grd_add.Rows[rowIndex].Cells[1].FindControl("txt_amt");




                    drCurrentRow2 = dtCurrentTable.NewRow();

                    dtCurrentTable.Rows[i - 1]["Column1"] = bx.Text;
                    dtCurrentTable.Rows[i - 1]["Column2"] = bx2.Text;

                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow2);
                ViewState["CurrentTable2"] = dtCurrentTable;
                grd_add.DataSource = dtCurrentTable;
                grd_add.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousData_2();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.comp_nm = txt_comp_nm.Text;
            int cmp =Convert.ToInt32(dl.slelct_cust_id_bill(bl));
            bl.cust_id = cmp;
            bl.brock_name = txt_brok_nm.Text;
            int bro = Convert.ToInt32(dl.slelct_brock_id_bill(bl));
            bl.brock_id = bro;
            bl.trp_naem = txt_trp_nm.Text;
            int trp_id=Convert.ToInt32(dl.slelct_transport_id_bill(bl));
            bl.trp_id = trp_id;
            bl.dc_no = txt_dc_no.Text;
            bl.l_r_no = txt_lr_no.Text;
            bl.p_o_no = txt_pr_no.Text;
            bl.dc_date = txt_dc_date.Text;
            bl.l_r_date = txt_lr_date.Text;
            bl.p_o_date = txt_po_date.Text;
            if (txt_tax4.Text != string.Empty)
            {
                bl.tax_4 = txt_tax4.Text;
                bl.vat_1 = txt_vat1.Text;
            }
            else
            {
                bl.tax_4 = "";
                bl.vat_1 = "";
            }
            if (txt_txt12.Text != string.Empty)
            {
                bl.tax_12 = txt_txt12.Text;
                bl.vat_2 = txt_vat2.Text;

            }
            else
            {
                bl.tax_12 = "";
                bl.vat_2 = "";
            }
            if (txt_tax2.Text != string.Empty)
            {
                bl.cst_2 = txt_tax2.Text;

            }
            else
            { 
                bl.cst_2 = "";
            }
            if (TextBox9.Text != string.Empty)
            {
                bl.disc = TextBox9.Text;
            }
            else
            {
                bl.disc = "";
            }
            bl.net_amount = txt_net_amt.Text;
            dl.insert_dc(bl);
            DataSet ds = new DataSet();
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t1 = (TextBox)grid_array.Rows[i].FindControl("TextBox1");
                TextBox t2 = (TextBox)grid_array.Rows[i].FindControl("TextBox2");
                TextBox t3 = (TextBox)grid_array.Rows[i].FindControl("TextBox3");
                TextBox t4 = (TextBox)grid_array.Rows[i].FindControl("TextBox4");
                TextBox t5 = (TextBox)grid_array.Rows[i].FindControl("TextBox5");
                TextBox t6 = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                TextBox t7 = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
                TextBox t8 = (TextBox)grid_array.Rows[i].FindControl("TextBox8");

                if (t1.Text != string.Empty)
                {
                    bl.dc_no = txt_dc_no.Text;
                    bl.item_name = t1.Text;
                    int id = Convert.ToInt32(dl.slelct_item_id_bill(bl));
                    bl.item_id = id;
                    bl.dcsr = t2.Text;
                    bl.qty = t3.Text;
                    bl.rate = t4.Text;
                    bl.per = t5.Text;
                    bl.disc = t7.Text;
                    bl.tax = t8.Text;
                    bl.amount = t6.Text;
                    dl.insert_dc_item(bl);
                }
                else
                {
                    break;
                }
                
            }
            DataSet ds2 = new DataSet();
            DataTable dt2 = (DataTable)ViewState["CurrentTable2"];
            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                TextBox t1 = (TextBox)grd_add.Rows[i].FindControl("txt_lg");
                TextBox t2 = (TextBox)grd_add.Rows[i].FindControl("txt_amt");
               

                if (t1.Text != string.Empty)
                {
                    bl.dc_no = txt_dc_no.Text;
                    bl.ld_nm = t1.Text;
                    int id = Convert.ToInt32(dl.slelct_ld_id_bill(bl));
                    bl.ld_id = id;
                    bl.extra_rs = t2.Text;
                    dl.insert_dc_extra(bl);
                }
                else
                {
                    break;
                }

            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('DC Created successfully'); window.location='dc.aspx';", true);
        }
        catch
        {
        }
    }
    private void dcnogenrate()
    {
        try
        {
            int i = Convert.ToInt32(dl.get_dc_no(bl));
            txt_dc_no.Text = Convert.ToString(i + 1);



        }
        catch (Exception)
        {
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox txt1 = (TextBox)sender;
            GridViewRow gvRow = (GridViewRow)txt1.Parent.Parent;
            int i = gvRow.RowIndex;
            TextBox txt_pro = (TextBox)gvRow.FindControl("TextBox1");
            TextBox txt_des = (TextBox)gvRow.FindControl("TextBox2");
            TextBox txt_per = (TextBox)gvRow.FindControl("TextBox5");
            bl.item_name = txt_pro.Text;
            txt_per.Text = dl.selectper(bl);


            //tax selection state wise

            bl.comp_nm = txt_comp_nm.Text;
            Int32 i2 = Convert.ToInt32(dl.selectsateforvat(bl));
            if (i2 == 1)
            {
                TextBox txt2 = (TextBox)sender;
                GridViewRow gvRow2 = (GridViewRow)txt1.Parent.Parent;
                int j = gvRow.RowIndex;
                TextBox txt_pro2 = (TextBox)gvRow2.FindControl("TextBox1");
                TextBox txt_tax = (TextBox)gvRow2.FindControl("TextBox8");
                bl.item_name = txt_pro2.Text;
                txt_tax.Text = dl.selecttaxforpr(bl);
            }
            else
            {
                TextBox txt3 = (TextBox)sender;
                GridViewRow gvRow3 = (GridViewRow)txt1.Parent.Parent;
                int j = gvRow.RowIndex;
                TextBox txt_pro3 = (TextBox)gvRow3.FindControl("TextBox1");
                TextBox txt_tax = (TextBox)gvRow3.FindControl("TextBox8");
                bl.item_name = txt_pro3.Text;
                txt_tax.Text = dl.selecttaxforpr(bl);
            }
            txt_des.Focus();
        }
        catch
        {
        }
    }
    protected void txt_comp_nm_TextChanged(object sender, EventArgs e)
    {
        try
        {

            txt_brok_nm.Focus();
        }
        catch (Exception)
        {
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox txt = (TextBox)sender;

            GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;

            int I = gvRow.RowIndex;
            TextBox txt_rt = (TextBox)gvRow.FindControl("TextBox4");
            TextBox txt_qty = (TextBox)gvRow.FindControl("TextBox3");
            TextBox txt_amt = (TextBox)gvRow.FindControl("TextBox6");
            TextBox txt_per = (TextBox)gvRow.FindControl("TextBox5");
                                                       
            // discount
            TextBox tax = (TextBox)gvRow.FindControl("TextBox8");
            if (tax.Text == "12%")
            {
                double per = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) * 12 / 100;
                double tax12 = Math.Round(per, 0);
                if (txt_txt12.Text == string.Empty)
                {
                    txt_txt12.Text = tax12.ToString();

                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text)+tax12;
                    txt_amt.Text = amt.ToString();
                }
                else
                {
                    double t12 = Convert.ToInt32(txt_txt12.Text);
                    txt_txt12.Text = Convert.ToString(t12 + tax12);
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax12;
                    txt_amt.Text = amt.ToString();

                }
                double per2 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) * 2.5 / 100;
                double vat2 = Math.Round(per2, 0);
                if (txt_vat2.Text == string.Empty)
                {
                    txt_vat2.Text = vat2.ToString();
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax12 +vat2;
                    txt_amt.Text = amt.ToString();
                }
                else
                {
                    double v2 = Convert.ToInt32(txt_vat2.Text);
                    txt_vat2.Text = Convert.ToString(v2 + vat2);
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax12 + vat2;
                    txt_amt.Text = amt.ToString();
                }

            }
            else if (tax.Text == "4%")
            {
                double per = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) * 4 / 100;
                double tax4 = Math.Round(per, 0);
                if (txt_tax4.Text == string.Empty)
                {
                    txt_tax4.Text = tax4.ToString();
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax4;
                    txt_amt.Text = amt.ToString();
                }
                else
                {
                    double t4 = Convert.ToInt32(txt_tax4.Text);
                    txt_tax4.Text = Convert.ToString(t4 + tax4);
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax4;
                    txt_amt.Text = amt.ToString();
                }
                double per1 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) * 1 / 100;
                double vat1 = Math.Round(per1, 0);
                if (txt_vat1.Text == string.Empty)
                {
                    txt_vat1.Text = vat1.ToString();
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax4 + vat1;
                    txt_amt.Text = amt.ToString();
                }
                else
                {
                    double v1 = Convert.ToInt32(txt_vat1.Text);
                    txt_vat1.Text = Convert.ToString(v1 + vat1);
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax4 + vat1;
                    txt_amt.Text = amt.ToString();

                }
            }
            else if (tax.Text == "2%")
            {
                double per = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) * 2 / 100;
                double tax2 = Math.Round(per, 0);
                if (txt_tax2.Text == string.Empty)
                {
                    txt_tax2.Text = tax2.ToString();
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax2;
                    txt_amt.Text = amt.ToString();
                }
                else
                {
                    double t2 = Convert.ToInt32(txt_tax2.Text);
                    txt_tax2.Text = Convert.ToString(t2 + tax2);
                    double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) + tax2;
                    txt_amt.Text = amt.ToString();

                }
            }
            else
            {
                double amt = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text) ;
                txt_amt.Text = amt.ToString();
            }
            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToInt32(t.Text);
                    total = total + j;
                }
            }
            txt_tt.Text = total.ToString();
            txt_net_amt.Text = txt_tt.Text;
            txt_per.Focus();

        }
        catch (Exception)
        {
        }

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox txt = (TextBox)sender;

            GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;

            int I = gvRow.RowIndex;
            TextBox txt_rt = (TextBox)gvRow.FindControl("TextBox4");

            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_tt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox3");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToInt32(t.Text);
                    total = total + j;
                }
            }
            txt_tt.Text = total.ToString();
          
            txt_rt.Focus();
        }
        catch
        {
        }
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        try
        {

        }
        catch
        {
        }
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox txt = (TextBox)sender;

            GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;

            int I = gvRow.RowIndex;
            TextBox txt_des = (TextBox)gvRow.FindControl("TextBox7");
            TextBox txt_amt = (TextBox)gvRow.FindControl("TextBox6");
            TextBox txt_tax = (TextBox)gvRow.FindControl("TextBox8");
            if (txt_des.Text != string.Empty)
            {
                double des = Convert.ToInt32(txt_amt.Text) * Convert.ToInt32(txt_des.Text) /100;
                double amt = Convert.ToInt32(txt_amt.Text)- des;
                txt_amt.Text = amt.ToString();
            }
            else
            {
                txt_amt.Text = txt_amt.Text;

            }
            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToInt32(t.Text);
                    total = total + j;
                }
            }
            txt_tt.Text = total.ToString();
            txt_net_amt.Text = txt_tt.Text;
            txt_tax.Focus();
        }
        catch
        {
        }
    }
    protected void txt_lg_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox txt_tt = (TextBox)grd_add.Rows[0].FindControl("txt_amt");
            txt_tt.Focus();

        }
        catch
        {
        }
    }
    protected void txt_amt_TextChanged(object sender, EventArgs e)
    {
        try
        {

            TextBox txt = (TextBox)sender;

            GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;

            int I = gvRow.RowIndex;
            TextBox txt_lg = (TextBox)gvRow.FindControl("txt_lg");
            TextBox txt_am = (TextBox)gvRow.FindControl("txt_amt");
            Button btn = (Button)gvRow.FindControl("BtnAdd");
            bl.ld_nm = txt_lg.Text;
            int i=Convert.ToInt32(dl.select_ld_grpid(bl));
           if (i == 15)
            {
                double ex = Convert.ToInt32(txt_am.Text);
                double net = Convert.ToInt32(txt_net_amt.Text) + ex;
                txt_net_amt.Text =Convert.ToString(net);

            }
            else if (i > 28)
            {
                bl.ac_ty_id = Convert.ToString(i);
                int j = Convert.ToInt32(dl.select_grp_grpid(bl));
                if (j == 15)
                {
                    double ex = Convert.ToInt32(txt_am.Text);
                    double net = Convert.ToInt32(txt_net_amt.Text) + ex;
                    txt_net_amt.Text = Convert.ToString(net);
                }
                else
                {
                   
                }

            }
            else
            {
            }
           btn.Focus();
        }
        catch
        {
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (TextBox9.Text != string.Empty)
            {
                double des = Convert.ToInt32(TextBox9.Text);
                double amt = Convert.ToInt32(txt_net_amt.Text) - des;
                txt_net_amt.Text = amt.ToString();


            }
            else
            {
            }
            TextBox txt_tt = (TextBox)grd_add.Rows[0].FindControl("txt_lg");
            txt_tt.Focus();

        }
        catch
        {
        }
    }
    protected void txt_brok_nm_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_trp_nm.Focus();
        }
        catch
        {
        }
    }
    protected void txt_dc_no_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txt_trp_nm_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_lr_no.Focus();
        }
        catch
        {
        }
    }
    protected void txt_lr_no_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_pr_no.Focus();
        }
        catch
        {
        }
    }
    protected void txt_pr_no_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_dc_date.Focus();
        }
        catch
        {
        }
    }
    protected void txt_dc_date_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_lr_date.Focus();
        }
        catch
        {
        }
    }
    protected void txt_lr_date_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_po_date.Focus();
        }
        catch
        {
        }
    }
    protected void txt_po_date_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox txt_tt = (TextBox)grid_array.Rows[0].FindControl("TextBox1");
            txt_tt.Focus();
        }
        catch
        {
        }
    }
}