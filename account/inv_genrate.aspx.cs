using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    static string vat = "";
    static string add_vat = "";
    static string exc = "";

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
            //dcnogenrate();

            txt_inv_dt.Text = System.DateTime.Today.Date.ToShortDateString();
            txt_dc_date.Text = System.DateTime.Today.Date.ToShortDateString();
            txt_inv_time.Text = System.DateTime.Now.ToString("hh:mm");
            fillvoucher();
            DropDownList1.Items.Insert(0, new ListItem("---Select Type---", "0"));
            if (Request.QueryString["inv"] != "" && Request.QueryString["inv"] != null)
            {
                bl.inv_no = Request.QueryString["inv"].ToString();
                DataSet ds = new DataSet();
                ds = dl.select_inv_detail(bl);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label2.Text = ds.Tables[0].Rows[0]["vch_nm"].ToString();
                    txt_comp_nm.Text = ds.Tables[0].Rows[0]["company_nm"].ToString();
                    txt_inv.Text = ds.Tables[0].Rows[0]["invoice_no"].ToString();
                    txt_inv_dt.Text = ds.Tables[0].Rows[0]["invoice_date"].ToString();
                    txt_pr_no.Text = ds.Tables[0].Rows[0]["po_no"].ToString();
                    txt_po_date.Text = ds.Tables[0].Rows[0]["po_date"].ToString();
                    txt_lr_no.Text = ds.Tables[0].Rows[0]["lr_no"].ToString();
                    txt_lr_date.Text = ds.Tables[0].Rows[0]["lr_date"].ToString();
                    txt_dc_no.Text = ds.Tables[0].Rows[0]["dc_no"].ToString();
                    txt_dc_date.Text = ds.Tables[0].Rows[0]["dc_date"].ToString();
                    txt_trp_nm.Text = ds.Tables[0].Rows[0]["transport_name"].ToString();
                    txt_brok_nm.Text = ds.Tables[0].Rows[0]["brocker_name"].ToString();
                    TextBox txt_total_qty = (TextBox)grid_array.FooterRow.FindControl("txt_tt");
                    TextBox txt_total_net = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
                    txt_total_qty.Text = ds.Tables[0].Rows[0]["total_qty"].ToString();
                    txt_total_net.Text = ds.Tables[0].Rows[0]["total"].ToString();
                    txt_tax4.Text = ds.Tables[0].Rows[0]["tax_4"].ToString();
                    // txt_vat1.Text = ds.Tables[0].Rows[0]["vat_1"].ToString();
                    // txt_txt12.Text = ds.Tables[0].Rows[0]["tax_12"].ToString();
                    // txt_vat2.Text = ds.Tables[0].Rows[0]["vat_2"].ToString();
                    txt_net_amt.Text = ds.Tables[0].Rows[0]["total_amount"].ToString();
                    invpro();
                    stockmange_edit();
                    Button1.Visible = false;
                    Button3.Visible = true;
                }


            }

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
                    customers.Add("Other");
                }
                conn.Close();
                return customers;
            }
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomersship(string prefixText, int count)
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
                    customers.Add("Other");
                }
                conn.Close();
                return customers;
            }
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> Searchterif_no(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["con"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select DISTINCT exc_comodity from tbl_tarif_no where " +
                "exc_comodity like '%'+@SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["exc_comodity"].ToString());
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
                if (vat == "4%")
                {
                    cmd.CommandText = "select DISTINCT item_name from tbl_item_master where " +
                    "item_name like '%'+@SearchText + '%' and tax='4%'";

                }
                else if (vat == "12%")
                {
                    cmd.CommandText = "select DISTINCT item_name from tbl_item_master where " +
                      "item_name like '%'+@SearchText + '%'and tax='12%'";
                }
                else
                {
                    cmd.CommandText = "select DISTINCT item_name from tbl_item_master where " +
                   "item_name like '%'+@SearchText + '%'";
                }
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
                "ld_nm like '%'+@SearchText + '%' and grp_id='15'";
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
    private void invpro()
    {
        try
        {
            bl.inv_no = txt_inv.Text;
            DataSet ds2 = new DataSet();
            ds2 = dl.select_inv_item_detail(bl);
            if (ds2.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {

                    //pro = ds2.Tables[0].Rows[i]["item_name"].ToString();
                    //desc = ds2.Tables[0].Rows[i]["descr"].ToString();
                    //qty = ds2.Tables[0].Rows[i]["qty"].ToString();
                    //tax = ds2.Tables[0].Rows[i]["tax"].ToString();
                    //dec = ds2.Tables[0].Rows[i]["disc"].ToString();
                    //rate = ds2.Tables[0].Rows[i]["rate"].ToString();
                    //rate = ds2.Tables[0].Rows[i]["rate"].ToString();
                    //per = ds2.Tables[0].Rows[i]["per"].ToString();
                    //amo = ds2.Tables[0].Rows[i]["amount"].ToString();
                    //amo = ds2.Tables[0].Rows[i]["amount"].ToString();
                    TextBox t1 = (TextBox)grid_array.Rows[i].FindControl("TextBox1");
                    TextBox t2 = (TextBox)grid_array.Rows[i].FindControl("TextBox2");
                    TextBox t3 = (TextBox)grid_array.Rows[i].FindControl("TextBox3");
                    TextBox t4 = (TextBox)grid_array.Rows[i].FindControl("TextBox4");
                    TextBox t5 = (TextBox)grid_array.Rows[i].FindControl("TextBox5");
                    TextBox t6 = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                    TextBox t7 = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
                    TextBox t8 = (TextBox)grid_array.Rows[i].FindControl("TextBox8");

                    //bl.inv_no = txt_inv.Text;
                    //bl.item_name = t1.Text;
                    //int id = Convert.ToDouble(dl.slelct_item_id_bill(bl));
                    //bl.item_id = id;
                    //bl.dcsr = t2.Text;
                    //bl.qty = t3.Text;
                    //bl.rate = t4.Text;
                    //bl.per = t5.Text;
                    //bl.disc = t7.Text;
                    //bl.tax = t8.Text;
                    //bl.amount = t6.Text;


                    t1.Text = ds2.Tables[0].Rows[i]["item_name"].ToString();
                    t2.Text = ds2.Tables[0].Rows[i]["descr"].ToString();
                    t3.Text = ds2.Tables[0].Rows[i]["qty"].ToString();
                    t8.Text = ds2.Tables[0].Rows[i]["tax"].ToString();
                    t7.Text = ds2.Tables[0].Rows[i]["disc"].ToString();
                    t4.Text = ds2.Tables[0].Rows[i]["rate"].ToString();
                    t5.Text = ds2.Tables[0].Rows[i]["per"].ToString();
                    t6.Text = ds2.Tables[0].Rows[i]["amount"].ToString();
                    //amo = ds2.Tables[0].Rows[i]["amount"].ToString();


                }
            }
        }
        catch
        {
        }
    }
    private void invextra()
    {
        try
        {
            bl.inv_no = txt_inv.Text;
            DataSet ds2 = new DataSet();
            ds2 = dl.select_inv_extra_detail(bl);
            if (ds2.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    TextBox t1 = (TextBox)grd_add.Rows[i].FindControl("txt_lg");
                    TextBox t2 = (TextBox)grd_add.Rows[i].FindControl("txt_amt");

                    t1.Text = ds2.Tables[0].Rows[i]["ld_name"].ToString();
                    t2.Text = ds2.Tables[0].Rows[i]["extra_rs"].ToString();

                }
            }
        }
        catch
        {

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
                    TextBox box8 = (TextBox)grid_array.Rows[rowIndex].Cells[7].FindControl("TextBox9");



                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["Column4"] = box4.Text;
                    dtCurrentTable.Rows[i - 1]["Column5"] = box5.Text;
                    dtCurrentTable.Rows[i - 1]["Column6"] = box6.Text;
                    // dtCurrentTable.Rows[i - 1]["Column7"] = box6.Text;
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
         int rowIndex = 0;
        // TextBox txt_tt = (TextBox)grd_add.Rows[rowIndex+1].FindControl("TextBox1");
        //txt_tt.Focus();
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{

        //    if (DropDownList1.SelectedValue == "48")
        //    {
        //        e.Row.Cells[8].Visible = true;

        //    }
        //    else
        //    {
        //        e.Row.Cells[8].Visible = false;

        //        grid_array.HeaderRow.Cells[8].Visible = false;
        //    }


        //}
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
        //TextBox txt1 = (TextBox)sender;
        //GridViewRow gvRow = (GridViewRow)txt1.Parent.Parent;
        //int j = gvRow.RowIndex;
        //TextBox txt_lg = (TextBox)gvRow.FindControl("txt_lg");
        TextBox txt_tt = (TextBox)grd_add.Rows[rowIndex].FindControl("txt_lg");
        txt_tt.Focus();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bl.vch_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            bl.vch_nm = DropDownList1.SelectedItem.Text;
            bl.inv_no = txt_inv.Text;
            bl.inv_date = txt_inv_dt.Text;
            bl.comp_nm = txt_comp_nm.Text;
            int cmp = Convert.ToInt32(dl.slelct_cust_id_bill(bl));
            bl.cust_id = cmp;
            bl.ship = txt_brok_nm.Text;
            int bro = Convert.ToInt32(dl.slelct_brock_id_bill(bl));
            bl.brock_id = bro;
            bl.trp_naem = txt_trp_nm.Text;
            int trp_id = Convert.ToInt32(dl.slelct_transport_id_bill(bl));
            bl.trp_id = trp_id;
            bl.dc_no = txt_dc_no.Text;
            bl.l_r_no = txt_lr_no.Text;
            bl.p_o_no = txt_pr_no.Text;
            bl.dc_date = txt_dc_date.Text;
            bl.l_r_date = txt_lr_date.Text;
            bl.p_o_date = txt_po_date.Text;
            bl.exse = txt_exc.Text;
            bl.inv_time = txt_inv_time.Text;
            bl.removal_dt = txt_date_removal.Text;
            bl.removal_time = txt_time_removal.Text;
            bl.trp_to = txt_trp_to.Text;
            bl.trp_from = txt_trp_from.Text;
            bl.maner_trp = txt_maner_trp.Text;
            bl.vechel_no = txt_vich.Text;
            bl.ex_comodity = txt_comity.Text;
            bl.terif_no = txt_tariff.Text;
            if (txt_amt_vat4.Text != string.Empty)
            {
                bl.tax_4 = txt_amt_vat4.Text;
                bl.vat_1 = txt_tax4.Text;
            }
            else
            {
                bl.tax_4 = "";
                bl.vat_1 = "";
            }
            bl.vate_type = lbl_amt_4.Text;
            bl.inv_time = txt_inv_time.Text;
            bl.ecc_p = txt_exc.Text;
            bl.removal_dt = txt_date_removal.Text;
            bl.removal_time = txt_time_removal.Text;
            bl.trp_to = txt_trp_to.Text;
            bl.trp_from = txt_trp_from.Text;
            bl.maner_trp = txt_maner_trp.Text;
            bl.vechel_no = txt_vich.Text;
            //bl.rai_no = txt_r_l.Text;
            bl.exc_cmt = txt_comity.Text;
            bl.tarif_no = txt_tariff.Text;
            bl.pla = txt_pla.Text;
            bl.rg = txt_r_g.Text;
            bl.part = txt_part.Text;
            bl.date = txt_u_dt.Text;

            TextBox txt_total_qty = (TextBox)grid_array.FooterRow.FindControl("txt_tt");
            TextBox txt_total_net = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            bl.total_qty = txt_total_qty.Text;
            bl.total = txt_total_net.Text;
            bl.dic = TextBox9.Text;
            bl.net_amount = txt_net_amt.Text;
            bl.debit_amt = txt_net_amt.Text;
            dl.insert_inv(bl);
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
              // TextBox t7 = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
               // TextBox t8 = (TextBox)grid_array.Rows[i].FindControl("TextBox8");

                if (t1.Text != string.Empty)
                {
                    bl.inv_no =Convert.ToString(dl.get_max_inv(bl));
                    bl.item_name = t1.Text;
                    int id = Convert.ToInt32(dl.slelct_item_id_bill(bl));
                    bl.item_id = id;
                    bl.dcsr = t2.Text;
                    bl.qty = t3.Text;
                    bl.rate = t4.Text;
                    bl.per = t5.Text;
                  //  bl.disc = t7.Text;
                    bl.tax = "";
                    bl.amount = t6.Text;
                    dl.insert_inv_item(bl);
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
                    bl.inv_no = Convert.ToString(dl.get_max_inv(bl));
                    bl.ld_nm = t1.Text;
                    int id = Convert.ToInt32(dl.slelct_ld_id_bill(bl));
                    bl.ld_id = id;
                    bl.extra_rs = t2.Text;
                    dl.insert_inv_extra(bl);
                }
                else
                {
                    break;
                }

            }
            stockmange();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Invoice Created successfully'); window.location='inv_list.aspx';", true);
        }
        catch
        {
        }
    }
    private void dcnogenrate()
    {
        try
        {


            int i = Convert.ToInt32(dl.get_inv_no(bl));
            txt_inv.Text = Convert.ToString(i + 1);



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
            TextBox txt_ecc = (TextBox)gvRow.FindControl("TextBox9");
            bl.item_name = txt_pro.Text;
            txt_per.Text = dl.selectper(bl);
            // txt_ecc.Text = Convert.ToString(dl.slelct_itm_exc(bl));


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
                //  txt_ecc.Text = Convert.ToString(dl.slelct_itm_exc(bl));
                // txt_tax.Text = dl.selecttaxforpr(bl);
            }
            else
            {
                TextBox txt3 = (TextBox)sender;
                GridViewRow gvRow3 = (GridViewRow)txt1.Parent.Parent;
                int j = gvRow.RowIndex;
                TextBox txt_pro3 = (TextBox)gvRow3.FindControl("TextBox1");
                TextBox txt_tax = (TextBox)gvRow3.FindControl("TextBox8");
                //bl.item_name = txt_itm.Text;
                bl.item_name = txt_pro3.Text;
                // txt_ecc.Text = Convert.ToString(dl.slelct_itm_exc(bl));
                // txt_tax.Text = dl.selecttaxforpr(bl);

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
            if (txt_comp_nm.Text == "Other")
            {
                txt_comp_nm.Text = string.Empty;
                txt_comp_nm.Focus();
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(1580/2);var Mtop = (screen.height/2)-(700/2);window.open( 'company_master.aspx', null, 'height=700,width=1580,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
            }
            else
            {
                txt_dc_no.Focus();
                txt_brok_nm.Text = txt_comp_nm.Text;
            }
            
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
            TextBox txt_tax = (TextBox)gvRow.FindControl("TextBox8");
            TextBox txt_dis = (TextBox)gvRow.FindControl("TextBox7");
            TextBox txt_itm = (TextBox)gvRow.FindControl("TextBox1");


            if (txt_rt.Text != string.Empty)
            {
                double des = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text);
                double amt1 = des;
                txt_amt.Text = Math.Round(amt1, 2).ToString();

            }
            else
            {

                double amt2 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text);

            }



            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            double tax1 = 0;
            double tax5 = 0;
            double tax3 = 0;
            double exp = 0;
            double amtexp = 0;
            double tax7 = 0;
            // bl.item_name = txt_itm.Text;
            exp = Convert.ToDouble(exc);

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                TextBox t5 = (TextBox)grid_array.Rows[i].FindControl("TextBox9");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToDouble(t.Text);
                    total = total + j;
                }

                if (exp != 0)
                {
                    double a = Convert.ToDouble(t.Text);
                    tax7 = tax7 + a;
                }
                else
                {

                }
            }



            txt_tt.Text = Math.Round(total, 2).ToString();
            //txt_net_amt.Text = txt_tt.Text;
            //txt_amt_vat12.Text = tax1.ToString();
            txt_amt_vat4.Text = Math.Round(tax5, 2).ToString();
            //txt_amt_cst2.Text = tax3.ToString();
            txt_amt_exc.Text = Math.Round(tax7, 2).ToString();

            // TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            //if (total==0)
            //{
            //    txt_net_amt.Text = total.ToString();
            //}
            //else
            //{
            //    double net = total  + Convert.ToDouble(txt_tax4.Text) + Convert.ToDouble(txt_vat1.Text) + Convert.ToDouble(txt_txt12.Text) + Convert.ToDouble(txt_vat2.Text) + Convert.ToDouble(txt_tax2.Text);
            //    txt_net_amt.Text = net.ToString();
            //}
            txt_amt_exc.Text = Math.Round(amtexp, 2).ToString();
            txt_per.Focus();
            // fillcat();
            //amtexp = Convert.ToDouble(txt_tt.Text);
            //if (exp != 0 || exp != Convert.ToDouble(" "))
            //{
            //    double fexp = amtexp * exp / 100;
            //    txt_exc.Text = fexp.ToString();
            //    txt_amt_exc.Text = txt_tt.Text;
            //    txt_dis.Focus();
            //}

        }


        catch
        {
        }
    }
    //protected void txt_lg_TextChanged(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        TextBox txt_tt = (TextBox)grd_add.Rows[0].FindControl("txt_amt");
    //        txt_tt.Focus();

    //    }
    //    catch
    //    {
    //    }


    //}
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
                    double j = Convert.ToDouble(t.Text);
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
            TextBox txt_qty = (TextBox)gvRow.FindControl("TextBox3");
            TextBox txt_rate = (TextBox)gvRow.FindControl("TextBox4");
            TextBox txt_des = (TextBox)gvRow.FindControl("TextBox7");
            TextBox txt_amt = (TextBox)gvRow.FindControl("TextBox6");
            TextBox txt_tax = (TextBox)gvRow.FindControl("TextBox8");
            if (txt_des.Text != string.Empty)
            {
                double des = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rate.Text) * Convert.ToDouble(txt_des.Text) / 100;
                double amt1 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rate.Text) - des;
                txt_amt.Text = amt1.ToString();
            }
            else
            {

                double amt2 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rate.Text);
                txt_amt.Text = amt2.ToString();
            }


            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            double tax1 = 0;
            double tax5 = 0;
            double tax3 = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToDouble(t.Text);
                    total = total + j;
                }

            }
            txt_tt.Text = total.ToString();
            //  txt_net_amt.Text = txt_tt.Text;
            // txt_amt_vat12.Text = tax1.ToString();
            txt_amt_vat4.Text = tax5.ToString();
            //txt_amt_cst2.Text = tax3.ToString();
            checkdisk();
            txt_amt.Focus();
        }


        catch
        {
        }
    }
    protected void txt_lg_TextChanged(object sender, EventArgs e)
    {
        try
        {

            TextBox txt1 = (TextBox)sender;
            GridViewRow gvRow = (GridViewRow)txt1.Parent.Parent;
            int i = gvRow.RowIndex;
            TextBox txt_lg = (TextBox)gvRow.FindControl("txt_lg");

            txt_lg.Focus();

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
            if (txt_lg.Text == string.Empty)
            {

            }
            else
            {
                bl.ld_nm = txt_lg.Text;

                int i = Convert.ToInt32(dl.select_ld_grpid(bl));
                if (i == 15)
                {
                    double ex = Convert.ToDouble(txt_am.Text);
                    double net = Convert.ToDouble(txt_net_amt.Text) + ex;
                    txt_net_amt.Text = Convert.ToString(net);

                }
                else if (i > 28)
                {
                    bl.ac_ty_id = Convert.ToString(i);
                    int j = Convert.ToInt32(dl.select_grp_grpid(bl));
                    if (j == 15)
                    {
                        double ex = Convert.ToDouble(txt_am.Text);
                        double net = Convert.ToDouble(txt_net_amt.Text) + ex;
                        txt_net_amt.Text = Convert.ToString(net);
                    }
                    else
                    {

                    }

                }
                else
                {
                }
            }
            btn.Focus();
        }
        catch
        {
        }
        fillcat();
    }
    public void fillcat()
    {
        double expence = 0;
        foreach (GridViewRow row in grd_add.Rows)
        {
            string textBoxText = ((TextBox)row.FindControl("txt_lg")).Text;
            string textamount = ((TextBox)row.FindControl("txt_amt")).Text;
            if (textBoxText != "")
            {
                expence = expence + Convert.ToDouble(textamount);

            }

            //  Response.Write(textBoxText);
        }
        if (txt_net_amt.Text != string.Empty)
        {
            txt_net_amt.Text = (Convert.ToDouble(txt_net_amt.Text) + expence).ToString();
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (TextBox9.Text != string.Empty)
            {
                double des = Convert.ToDouble(TextBox9.Text);
                double amt = Convert.ToDouble(txt_net_amt.Text) - des;
                txt_net_amt.Text = amt.ToString();

            }
            else
            {
            }

            if (grid_array.Rows.Count > 0)
            {

                for (int i = 0; i < grid_array.Rows.Count; i++)
                {
                    if (TextBox9.Text != string.Empty)
                    {
                        TextBox txt = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
                        txt.Enabled = false;
                    }
                    else
                    {
                        TextBox txt = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
                        txt.Enabled = true;
                    }
                }

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
            if (txt_brok_nm.Text == "Other")
            {
                txt_brok_nm.Text = string.Empty;
                txt_brok_nm.Focus();
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(1580/2);var Mtop = (screen.height/2)-(700/2);window.open( 'company_master.aspx', null, 'height=700,width=1580,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
            }
            else
            {
                txt_brok_nm.Focus();
            }

        }
        catch
        {
        }
    }
    protected void txt_dc_no_TextChanged(object sender, EventArgs e)
    {
        try
        {
            bl.dc_no = txt_dc_no.Text;
            DataSet ds = new DataSet();
            ds = dl.select_dc_to_inv(bl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txt_comp_nm.Text = ds.Tables[0].Rows[0]["company_naem"].ToString();
                //txt_inv.Text = ds.Tables[0].Rows[0]["invoice_no"].ToString();
                //txt_inv_dt.Text = ds.Tables[0].Rows[0]["invoice_date"].ToString();
                txt_pr_no.Text = ds.Tables[0].Rows[0]["p_o_no"].ToString();
                txt_po_date.Text = ds.Tables[0].Rows[0]["p_o_date"].ToString();
                txt_lr_no.Text = ds.Tables[0].Rows[0]["l_r_no"].ToString();
                txt_lr_date.Text = ds.Tables[0].Rows[0]["l_r_date"].ToString();
                //txt_dc_no.Text = ds.Tables[0].Rows[0]["dc_no"].ToString();
                txt_dc_date.Text = ds.Tables[0].Rows[0]["dc_date"].ToString();
                txt_trp_nm.Text = ds.Tables[0].Rows[0]["transport_name"].ToString();
                txt_brok_nm.Text = ds.Tables[0].Rows[0]["brocker_nm"].ToString();
                //TextBox txt_total_qty = (TextBox)grid_array.FooterRow.FindControl("txt_tt");
                //TextBox txt_total_net = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
                //txt_total_qty.Text = ds.Tables[0].Rows[0]["total_qty"].ToString();
                //txt_total_net.Text = ds.Tables[0].Rows[0]["total"].ToString();
                txt_tax4.Text = ds.Tables[0].Rows[0]["tax_4"].ToString();
                // txt_vat1.Text = ds.Tables[0].Rows[0]["vat_1"].ToString();
                //txt_txt12.Text = ds.Tables[0].Rows[0]["tax_12"].ToString();
                //  txt_vat2.Text = ds.Tables[0].Rows[0]["vat_2"].ToString();
                //    txt_amt_cst2.Text = ds.Tables[0].Rows[0]["cst_2"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["dics"].ToString();
                txt_net_amt.Text = ds.Tables[0].Rows[0]["total_amount"].ToString();
                dcpro();
                dcextra();

            }
        }
        catch
        {

        }
    }
    private void dcpro()
    {
        try
        {
            bl.dc_no = txt_dc_no.Text;
            DataSet ds2 = new DataSet();
            ds2 = dl.select_dc_item_detail(bl);
            if (ds2.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    TextBox t1 = (TextBox)grid_array.Rows[i].FindControl("TextBox1");
                    TextBox t2 = (TextBox)grid_array.Rows[i].FindControl("TextBox2");
                    TextBox t3 = (TextBox)grid_array.Rows[i].FindControl("TextBox3");
                    TextBox t4 = (TextBox)grid_array.Rows[i].FindControl("TextBox4");
                    TextBox t5 = (TextBox)grid_array.Rows[i].FindControl("TextBox5");
                    TextBox t6 = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                    TextBox t7 = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
                    TextBox t8 = (TextBox)grid_array.Rows[i].FindControl("TextBox8");

                    t1.Text = ds2.Tables[0].Rows[i]["item_name"].ToString();
                    t2.Text = ds2.Tables[0].Rows[i]["descr"].ToString();
                    t3.Text = ds2.Tables[0].Rows[i]["qty"].ToString();
                    t8.Text = ds2.Tables[0].Rows[i]["tax"].ToString();
                    t7.Text = ds2.Tables[0].Rows[i]["disc"].ToString();
                    t4.Text = ds2.Tables[0].Rows[i]["rate"].ToString();
                    t5.Text = ds2.Tables[0].Rows[i]["per"].ToString();
                    t6.Text = ds2.Tables[0].Rows[i]["amount"].ToString();
                }
            }
        }
        catch
        {
        }
    }
    private void dcextra()
    {
        try
        {
            bl.dc_no = txt_dc_no.Text;
            DataSet ds2 = new DataSet();
            ds2 = dl.select_dc_extra_detail(bl);
            if (ds2.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    TextBox t1 = (TextBox)grd_add.Rows[i].FindControl("txt_lg");
                    TextBox t2 = (TextBox)grd_add.Rows[i].FindControl("txt_amt");

                    t1.Text = ds2.Tables[0].Rows[i]["ld_name"].ToString();
                    t2.Text = ds2.Tables[0].Rows[i]["extra_rs"].ToString();

                }
            }
        }
        catch
        {

        }
    }
    protected void txt_trp_nm_TextChanged(object sender, EventArgs e)
    {
        try
        {
            //      txt_lr_no.Focus();
            txt_trp_to.Focus();
        }
        catch
        {
        }
    }
    protected void txt_lr_no_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_lr_date.Focus();
        }
        catch
        {
        }
    }
    protected void txt_pr_no_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_po_date.Focus();
        }
        catch
        {
        }
    }
    protected void txt_dc_date_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_inv_dt.Focus();
        }
        catch
        {
        }
    }
    protected void txt_lr_date_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_date_removal.Focus();
        }
        catch
        {
        }
    }
    protected void txt_po_date_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_comity.Focus();
           
        }
        catch
        {
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
    public void filltax()
    {

        try
        {
            DataSet ds = new DataSet();
            ds = dl.select_sales_tax(bl);
            dwd_vat.DataSource = ds;
            dwd_vat.DataTextField = "satutary_nm";
            dwd_vat.DataValueField = "stu_id";
            dwd_vat.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dwd_vat.Visible = true;

        filltax();
        dwd_vat.Items.Insert(0, new ListItem("---Select Type---", "0"));
        if (DropDownList1.SelectedItem.Text == "Retail Invoice")
        {
            bl.value=DropDownList1.SelectedItem.Text;
            txt_inv.Text = "Ri-00" + (dl.get_count_vch(bl)+1);
            txt_dc_no.Text = "Ri-00"+(dl.get_count_vch(bl) + 1).ToString();
        }
        else if (DropDownList1.SelectedItem.Text == "Tax Invoice")
        {
            bl.value = DropDownList1.SelectedItem.Text;
            txt_inv.Text = "Ex-00" + (dl.get_count_vch(bl) + 1);
            txt_dc_no.Text = "Ex-00"+(dl.get_count_vch(bl) + 1).ToString();
        }

    }
    protected void txt_amt_vat4_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (txt_amt_vat4.Text != string.Empty)
            {
                double vat1 = Convert.ToDouble(txt_amt_vat4.Text) * 4 / 100;
                double advat = Convert.ToDouble(txt_amt_vat4.Text) * 1 / 100;
                txt_tax4.Text = vat1.ToString();
                //  txt_vat1.Text = advat.ToString();
            }
            else
            {

            }

        }
        catch
        {
        }

    }
    protected void txt_amt_vat12_TextChanged(object sender, EventArgs e)
    {
        try
        {
            //if (txt_amt_vat12.Text != string.Empty)
            //{
            //    double vat1 = Convert.ToDouble(txt_amt_vat12.Text) * 12.5 / 100;
            //    double advat = Convert.ToDouble(txt_amt_vat12.Text) * 2.5 / 100;
            //    txt_txt12.Text = vat1.ToString();
            //    txt_vat2.Text = advat.ToString();
            //}
            //else
            //{
            //}

        }
        catch
        {
        }
    }
    protected void txt_amt_cst2_TextChanged(object sender, EventArgs e)
    {
        try
        {
            //if (txt_amt_cst2.Text != string.Empty)
            //{
            //    double vat1 = Convert.ToDouble(txt_amt_cst2.Text) * 2 / 100;
            //    //  double advat = Convert.ToDouble(txt_amt_cst2.Text) * 2.5 / 100;
            //    txt_tax2.Text = vat1.ToString();
            //    // txt_vat2.Text = advat.ToString();
            //}
            //else
            //{
            //}

        }
        catch
        {
        }
    }
    protected void txt_tax2_PreRender(object sender, EventArgs e)
    {

    }
    protected void txt_amt_vat4_PreRender(object sender, EventArgs e)
    {
        try
        {

            if (txt_amt_vat4.Text != string.Empty)
            {
                double vat1 = Convert.ToDouble(txt_amt_vat4.Text) * 4 / 100;
                double advat = Convert.ToDouble(txt_amt_vat4.Text) * 1 / 100;
                txt_tax4.Text = vat1.ToString();
                // txt_vat1.Text = advat.ToString();

            }
            else
            {

            }
            fillcat();
        }

        catch
        {
        }
    }
    protected void txt_amt_vat12_PreRender(object sender, EventArgs e)
    {
        try
        {
            //if (txt_amt_vat12.Text != string.Empty)
            //{
            //    double vat1 = Convert.ToDouble(txt_amt_vat12.Text) * 12.5 / 100;
            //    double advat = Convert.ToDouble(txt_amt_vat12.Text) * 2.5 / 100;
            //    txt_txt12.Text = vat1.ToString();
            //    txt_vat2.Text = advat.ToString();
            //}
            //else
            //{
            //}
            fillcat();
        }

        catch
        {
        }
    }
    protected void txt_amt_cst2_PreRender(object sender, EventArgs e)
    {
        try
        {
            double cst = 0;
            // cst = Convert.ToDouble(txt_amt_cst2.Text);

            double vat1 = cst * 2 / 100;
            //  double advat = Convert.ToDouble(txt_amt_cst2.Text) * 2.5 / 100;
            //  txt_tax2.Text = vat1.ToString();
            // txt_vat2.Text = advat.ToString();
            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            double total = Convert.ToDouble(txt_tt.Text);
            if (total == 0)
            {
                txt_net_amt.Text = total.ToString();
            }
            else
            {
                if (TextBox9.Text != string.Empty)
                {

                    //    TextBox txt = (TextBox)sender;

                    //    GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;

                    //    int I = gvRow.RowIndex;
                    //    TextBox txt_lg = (TextBox)gvRow.FindControl("txt_lg");
                    //    TextBox txt_am = (TextBox)gvRow.FindControl("txt_amt");
                    //    Button btn = (Button)gvRow.FindControl("BtnAdd");
                    //    bl.ld_nm = txt_lg.Text;
                    //    if (txt_am.Text != string.Empty)
                    //    {
                    //        int i = Convert.ToDouble(dl.select_ld_grpid(bl));
                    //        if (i == 15)
                    //        {
                    //            double ex = Convert.ToDouble(txt_am.Text);
                    //            double net = Convert.ToDouble(txt_net_amt.Text) + ex;
                    //            txt_net_amt.Text = Convert.ToString(net);

                    //        }
                    //        else if (i > 28)
                    //        {
                    //            bl.ac_ty_id = Convert.ToString(i);
                    //            int j = Convert.ToDouble(dl.select_grp_grpid(bl));
                    //            if (j == 15)
                    //            {
                    //                double ex = Convert.ToDouble(txt_am.Text);
                    //                double net = Convert.ToDouble(txt_net_amt.Text) + ex;
                    //                txt_net_amt.Text = Convert.ToString(net);
                    //            }
                    //            else
                    //            {

                    //            }

                    //        }
                    //        else
                    //        {
                    //        }
                    //    }
                    //    else
                    //    {


                    double dic = Convert.ToDouble(TextBox9.Text);
                    //double net = total + Convert.ToDouble(txt_tax4.Text) + Convert.ToDouble(txt_vat1.Text) + Convert.ToDouble(txt_txt12.Text) + Convert.ToDouble(txt_vat2.Text) + Convert.ToDouble(txt_tax2.Text) - dic;
                    //  txt_net_amt.Text = net.ToString();
                }
                //}
                //else
                //{
                //    TextBox txt = (TextBox)sender;

            //    GridViewRow gvRow2 = (GridViewRow)txt.Parent.Parent;

            //    int I = gvRow2.RowIndex;
                //    TextBox txt_lg = (TextBox)gvRow2.FindControl("txt_lg");
                //    TextBox txt_am = (TextBox)gvRow2.FindControl("txt_amt");
                //    Button btn = (Button)gvRow2.FindControl("BtnAdd");
                //    bl.ld_nm = txt_lg.Text;
                //    if (txt_am.Text != string.Empty)
                //    {
                //        int i = Convert.ToDouble(dl.select_ld_grpid(bl));
                //        if (i == 15)
                //        {
                //            double ex = Convert.ToDouble(txt_am.Text);
                //            double net = Convert.ToDouble(txt_net_amt.Text) + ex;
                //            txt_net_amt.Text = Convert.ToString(net);

            //        }
                //        else if (i > 28)
                //        {
                //            bl.ac_ty_id = Convert.ToString(i);
                //            int j = Convert.ToDouble(dl.select_grp_grpid(bl));
                //            if (j == 15)
                //            {
                //                double ex = Convert.ToDouble(txt_am.Text);
                //                double net = Convert.ToDouble(txt_net_amt.Text) + ex;
                //                txt_net_amt.Text = Convert.ToString(net);
                //            }
                //            else
                //            {

            //            }

            //        }
                //        else
                //        {
                //        }
                //    }
                else
                {

                    //double net = total + Convert.ToDouble(txt_tax4.Text) + Convert.ToDouble(txt_vat1.Text) + Convert.ToDouble(txt_txt12.Text) + Convert.ToDouble(txt_vat2.Text) + Convert.ToDouble(txt_tax2.Text);
                    // txt_net_amt.Text = net.ToString();
                }
                fillcat();
            }
        }
        // }



        catch
        {
        }
    }
    protected void TextBox3_PreRender(object sender, EventArgs e)
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
                    double j = Convert.ToDouble(t.Text);
                    total = total + j;
                }
            }
            txt_tt.Text = total.ToString();
            fillcat();
            checkdisk();
            //  txt_rt.Focus();
        }
        catch
        {
        }
    }
    protected void TextBox4_PreRender(object sender, EventArgs e)
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
            TextBox txt_tax = (TextBox)gvRow.FindControl("TextBox8");
            TextBox txt_dis = (TextBox)gvRow.FindControl("TextBox7");
            TextBox txt_ecc = (TextBox)gvRow.FindControl("TextBox9");


            if (txt_rt.Text != string.Empty)
            {
                double des = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text);
                double amt1 = des;
                txt_amt.Text = Math.Round(amt1, 2).ToString();

            }
            else
            {

                //  double amt2 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rt.Text);

            }
            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            double tax1 = 0;
            double tax5 = 0;
            double tax3 = 0;
            double exp = 0;
            double amtexp = 0;
            double tax7 = 0;
            // bl.item_name = txt_itm.Text;
            exp = Convert.ToDouble(exc);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                TextBox t5 = (TextBox)grid_array.Rows[i].FindControl("TextBox9");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToDouble(t.Text);
                    total = total + j;
                }
                if (exp != 0)
                {
                    double a = Convert.ToDouble(t.Text);
                    tax7 = tax7 + a;
                }
                else
                {

                }
            }
            txt_tt.Text = Math.Round(total, 2).ToString();

            // txt_net_amt.Text = txt_tt.Text;
            //  txt_amt_vat12.Text = tax1.ToString();
            txt_amt_vat4.Text = Math.Round(tax5, 2).ToString();
            //    txt_amt_cst2.Text = tax3.ToString();
            txt_amt_exc.Text = Math.Round(tax7, 2).ToString();
            fillcat();


            // TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            //if (total==0)
            //{
            //    txt_net_amt.Text = total.ToString();
            //}
            //else
            //{
            //    double net = total  + Convert.ToDouble(txt_tax4.Text) + Convert.ToDouble(txt_vat1.Text) + Convert.ToDouble(txt_txt12.Text) + Convert.ToDouble(txt_vat2.Text) + Convert.ToDouble(txt_tax2.Text);
            //    txt_net_amt.Text = net.ToString();
            //}
            //   txt_dis.Focus();

        }
        catch
        {
        }
    }
    protected void TextBox7_PreRender(object sender, EventArgs e)
    {
        try
        {
            TextBox txt = (TextBox)sender;

            GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;

            int I = gvRow.RowIndex;
            TextBox txt_qty = (TextBox)gvRow.FindControl("TextBox3");
            TextBox txt_rate = (TextBox)gvRow.FindControl("TextBox4");
            TextBox txt_des = (TextBox)gvRow.FindControl("TextBox7");
            TextBox txt_amt = (TextBox)gvRow.FindControl("TextBox6");
            TextBox txt_tax = (TextBox)gvRow.FindControl("TextBox8");
            if (txt_des.Text != string.Empty)
            {
                double des = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rate.Text) * Convert.ToDouble(txt_des.Text) / 100;
                double amt1 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rate.Text) - des;
                txt_amt.Text = amt1.ToString();
            }
            else
            {

                //  double amt2 = Convert.ToDouble(txt_qty.Text) * Convert.ToDouble(txt_rate.Text);
                // txt_amt.Text = amt2.ToString();
            }


            TextBox txt_tt = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            double total = 0;
            double tax1 = 0;
            double tax5 = 0;
            double tax3 = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox t = (TextBox)grid_array.Rows[i].FindControl("TextBox6");
                if (t.Text == string.Empty)
                {
                    break;
                }
                else
                {
                    double j = Convert.ToDouble(t.Text);
                    total = total + j;
                }
                //TextBox t2 = (TextBox)grid_array.Rows[i].FindControl("TextBox8");
                //if (t2.Text == "12%")
                //{
                //    double a = Convert.ToDouble(t.Text);
                //    tax1 = tax1 + a;
                //}
                //else if (t2.Text == "4%")
                //{
                //    double a = Convert.ToDouble(t.Text);
                //    tax5 = tax5 + a;
                //}
                //else if (t2.Text == "2%")
                //{
                //    double a = Convert.ToDouble(t.Text);
                //    tax3 = tax3 + a;
                //}
                //else
                //{

                //}
            }
            txt_tt.Text = total.ToString();
            // txt_amt_vat12.Text = tax1.ToString();
            txt_amt_vat4.Text = tax5.ToString();
            //  txt_amt_cst2.Text = tax3.ToString();
            // txt_amt.Focus();
            fillcat();
            checkdisk();
        }


        catch
        {
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }
    private void stockmange()
    {
        DataSet ds = new DataSet();
        DataTable dt = (DataTable)ViewState["CurrentTable"];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            TextBox t1 = (TextBox)grid_array.Rows[i].FindControl("TextBox1");
            TextBox t2 = (TextBox)grid_array.Rows[i].FindControl("TextBox3");
            if (t1.Text != string.Empty)
            {
                bl.item_name = t1.Text;
                double id = Convert.ToDouble(dl.slelct_unit_manage(bl));
                double qty = Convert.ToDouble(t2.Text);
                double funit = id - qty;
                bl.qty = Convert.ToString(funit);
                dl.update_qty_stock(bl);

            }
            else
            {
                break;
            }

        }
    }
    private void stockmange_edit()
    {
        DataSet ds = new DataSet();
        DataTable dt = (DataTable)ViewState["CurrentTable"];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            TextBox t1 = (TextBox)grid_array.Rows[i].FindControl("TextBox1");
            TextBox t2 = (TextBox)grid_array.Rows[i].FindControl("TextBox3");
            if (t1.Text != string.Empty)
            {
                bl.item_name = t1.Text;
                double id = Convert.ToDouble(dl.slelct_unit_manage(bl));
                double qty = Convert.ToDouble(t2.Text);
                double funit = id + qty;
                bl.qty = Convert.ToString(funit);
                dl.update_qty_stock(bl);

            }
            else
            {
                break;
            }

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {

            bl.vch_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            bl.vch_nm = DropDownList1.SelectedItem.Text;
            bl.inv_no = txt_inv.Text;
            bl.inv_date = txt_inv_dt.Text;
            bl.comp_nm = txt_comp_nm.Text;
            int cmp = Convert.ToInt32(dl.slelct_cust_id_bill(bl));
            bl.cust_id = cmp;
            bl.brock_name = txt_brok_nm.Text;
            int bro = Convert.ToInt32(dl.slelct_brock_id_bill(bl));
            bl.brock_id = bro;
            bl.trp_naem = txt_trp_nm.Text;
            int trp_id = Convert.ToInt32(dl.slelct_transport_id_bill(bl));
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
                // bl.vat_1 = txt_vat1.Text;
            }
            else
            {
                bl.tax_4 = "";
                bl.vat_1 = "";
            }
            //if (txt_txt12.Text != string.Empty)
            //{
            //    bl.tax_12 = txt_txt12.Text;
            //    bl.vat_2 = txt_vat2.Text;

            //}
            //else
            //{
            //    bl.tax_12 = "";
            //    bl.vat_2 = "";
            //}
            //if (txt_tax2.Text != string.Empty)
            //{
            //    bl.cst_2 = txt_tax2.Text;

            //}
            //else
            //{
            //    bl.cst_2 = "";
            //}
            if (TextBox9.Text != string.Empty)
            {
                bl.disc = TextBox9.Text;
            }
            else
            {
                bl.disc = "";
            }
            TextBox txt_total_qty = (TextBox)grid_array.FooterRow.FindControl("txt_tt");
            TextBox txt_total_net = (TextBox)grid_array.FooterRow.FindControl("txt_ttt");
            bl.total_qty = txt_total_qty.Text;
            bl.total = txt_total_net.Text;
            bl.dic = TextBox9.Text;
            bl.net_amount = txt_net_amt.Text;
            bl.debit_amt = txt_net_amt.Text;
            dl.update_inv(bl);
            dl.delete_inv_item(bl);
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
                    bl.inv_no = txt_inv.Text;
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
                    dl.insert_inv_item(bl);
                }
                else
                {
                    break;
                }

            }
            dl.delete_inv_extra(bl);
            DataSet ds2 = new DataSet();
            DataTable dt2 = (DataTable)ViewState["CurrentTable2"];
            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                TextBox t1 = (TextBox)grd_add.Rows[i].FindControl("txt_lg");
                TextBox t2 = (TextBox)grd_add.Rows[i].FindControl("txt_amt");


                if (t1.Text != string.Empty)
                {
                    bl.inv_no = txt_inv.Text;
                    bl.ld_nm = t1.Text;
                    int id = Convert.ToInt32(dl.slelct_ld_id_bill(bl));
                    bl.ld_id = id;
                    bl.extra_rs = t2.Text;
                    dl.insert_inv_extra(bl);
                }
                else
                {
                    break;
                }

            }
            stockmange();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Invoice Update successfully'); window.location='inv_list.aspx';", true);
        }
        catch
        {
        }
    }
    protected void txt_amt_exc_PreRender(object sender, EventArgs e)
    {
        try
        {
            if (txt_amt_exc.Text != string.Empty)
            {
                double ecc = 0;
                ecc = Convert.ToDouble(txt_amt_exc.Text);

                if (TextBox9.Text != string.Empty)
                {
                    ecc = ecc - Convert.ToDouble(TextBox9.Text);
                    txt_amt_exc.Text = ecc.ToString();
                }

                double fecc = ecc * Convert.ToDouble(exc) / 100;

                txt_exc.Text = Math.Round(fecc, 2).ToString();

                double final = 0;

                for (int k = 0; k < grd_add.Rows.Count; k++)
                {

                    TextBox txt = (TextBox)grd_add.Rows[k].FindControl("txt_amt");
                    if (txt.Text != string.Empty)
                    {
                        final = final + Convert.ToDouble(txt.Text);
                    }

                }




                double v = (ecc + fecc + final) * Convert.ToDouble(vat) / 100;




                double av = (ecc + fecc + final) * Convert.ToDouble(add_vat) / 100;
                txt_amt_vat4.Text = Math.Round(v, 2).ToString();
                txt_tax4.Text = Math.Round(av, 2).ToString();
                txt_net_amt.Text = Convert.ToString(ecc + fecc + v + av + final);

            }
            else
            {
                txt_amt_exc.Text = "0";
                txt_exc.Text = "0";

            }


            double fl = Convert.ToDouble(txt_net_amt.Text);

            txt_net_amt.Text = Math.Round(fl, 2).ToString();

        }
        catch
        {
        }
    }
    protected void txt_amt_exc_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (txt_amt_exc.Text != string.Empty)
            {
                double ecc = 0;
                ecc = Convert.ToDouble(txt_amt_exc.Text);
                double fecc = ecc * Convert.ToDouble(exc) / 100;
                txt_exc.Text = fecc.ToString();

            }
            else
            {
                txt_amt_exc.Text = "0";
                txt_exc.Text = "0";

            }
        }
        catch
        {
        }
    }
    protected void dwd_vat_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            Label2.Text = DropDownList1.SelectedItem.Text;
            Panel1.Visible = true;
            //  Panel2.Visible = true;
            DropDownList1.Visible = false;
            bl.id = Convert.ToInt32(dwd_vat.SelectedValue.ToString());
            DataSet ds = dl.select_vat_add(bl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                vat = ds.Tables[0].Rows[0]["vat"].ToString();
                if (ds.Tables[0].Rows[0]["add_vat"].ToString() == string.Empty)
                {
                    add_vat = "0";
                }
                else
                {
                    add_vat = ds.Tables[0].Rows[0]["add_vat"].ToString();
                }
            }
            lbl_amt_4.Text = dwd_vat.SelectedItem.Text;
            exc = dl.slelct_exc();
            // vat = 
            dwd_vat.Visible = false;
            txt_comp_nm.Focus();
           
        }
        catch
        {
        }
    }



    protected void txt_trp_from_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_maner_trp.Focus();
        }
        catch
        {
        }
    }


    public void checkdisk()
    {
        try
        {
            if (grid_array.Rows.Count > 0)
            {
                for (int i = 0; i < grid_array.Rows.Count; i++)
                {
                    TextBox txt = (TextBox)grid_array.Rows[i].FindControl("TextBox7");
                    if (txt.Text != string.Empty)
                    {
                        TextBox9.Enabled = false;
                        break;
                    }
                    else
                    {
                        TextBox9.Enabled = true;
                    }
                }
            }


        }
        catch (Exception ex)
        {

        }

    }
    protected void btn_add_itm_Click(object sender, EventArgs e)
    {
        try
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(1580/2);var Mtop = (screen.height/2)-(700/2);window.open( 'item_msater.aspx', null, 'height=700,width=1580,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }
        catch
        {
        }
    }
    protected void txt_comity_TextChanged(object sender, EventArgs e)
    {
        try
        {
            bl.ex_comodity = txt_comity.Text;
            txt_tariff.Text = dl.get_terif_no(bl);
            txt_tariff.Focus();
        }
        catch
        {

        }
    }
    protected void txt_vich_TextChanged(object sender, EventArgs e)
    {
        try
        {
            txt_pr_no.Focus();
        }
        catch
        {
        }
    }

    protected void txt_tariff_TextChanged(object sender, EventArgs e)
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