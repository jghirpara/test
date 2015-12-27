using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    static string  imgpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            grid();
            grp_bind();
           // dwd_grp.Items.Insert(0, new ListItem("---Select Group---", "0"));
            fillstate();
            fillcity();
            //dwd_st.Items.Insert(0, new ListItem("", "1"));
            //dwd_ct.Items.Insert(0, new ListItem("", "1"));
            if (Request.QueryString["cmp"] != "" && Request.QueryString["cmp"] != null)
            {
                bl.id= Convert.ToInt32(Request.QueryString["cmp"].ToString());
                DataSet ds = new DataSet();
                ds = dl.select_itm_cmp(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Text = ds.Tables[0].Rows[0]["company_name"].ToString();
                    dwd_grp.Text = ds.Tables[0].Rows[0]["grp_id"].ToString();
                    txt_nik.Text = ds.Tables[0].Rows[0]["nick_nm"].ToString();
                    txt_con_nm.Text = ds.Tables[0].Rows[0]["contact_per_name"].ToString();
                    txt_add1.Text = ds.Tables[0].Rows[0]["address_1"].ToString();
                    txt_add2.Text = ds.Tables[0].Rows[0]["address_2"].ToString();
                    dwd_st.Text = ds.Tables[0].Rows[0]["state_id"].ToString();
                    bl.state_id = Convert.ToInt32(dwd_st.SelectedValue.ToString());
                    DataSet ds_state = new DataSet();
                    ds_state = dl.selectcity(bl);
                    dwd_ct.DataSource = ds_state;
                    dwd_ct.DataTextField = "city_name";
                    dwd_ct.DataValueField = "city_id";
                    dwd_ct.DataBind();
                    dwd_ct.Text = ds.Tables[0].Rows[0]["city_id"].ToString();
                    txt_pin.Text = ds.Tables[0].Rows[0]["pin"].ToString();

                    TextBox13_ph.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                    txt_vat.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                    txt_vat_dt.Text = ds.Tables[0].Rows[0]["tin_date"].ToString();
                    hp_vat.NavigateUrl = ds.Tables[0].Rows[0]["tin_attch"].ToString();
                   // cst_date.Text = ds.Tables[0].Rows[0]["cst_date"].ToString();
                    txt_st.Text = ds.Tables[0].Rows[0]["st"].ToString();
                    txt_pan.Text = ds.Tables[0].Rows[0]["pan"].ToString();
                    txt_tds.Text = ds.Tables[0].Rows[0]["tds"].ToString();
                    txt_cst.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                    cst_date.Text = ds.Tables[0].Rows[0]["cst_date"].ToString();
                    hp_cst.NavigateUrl = ds.Tables[0].Rows[0]["cst_attch"].ToString();
                    TextBox5_ecc.Text = ds.Tables[0].Rows[0]["ecc"].ToString();
                    txt_crd_limit.Text = ds.Tables[0].Rows[0]["credit_limit"].ToString();
                    txt_b_nm.Text = ds.Tables[0].Rows[0]["bank_name"].ToString();
                    txt_acno.Text = ds.Tables[0].Rows[0]["ac_no"].ToString();
                    txt_bch.Text = ds.Tables[0].Rows[0]["branch"].ToString();
                    txt_i.Text = ds.Tables[0].Rows[0]["ifsc"].ToString();
                    txt_bsr_cmp.Text = ds.Tables[0].Rows[0]["bsr"].ToString();
                    cst_date.Text = ds.Tables[0].Rows[0]["cst_date"].ToString();
                    
                }
                Button2.Visible = false;
                Button4.Visible = true;
            }
            TextBox1.Focus();
            
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

    public void fillcity()
    {
        try
        {
            DataSet ds_state = new DataSet();
            ds_state = dl.selectcity1(bl);
            dwd_ct.DataSource = ds_state;
            dwd_ct.DataTextField = "city_name";
            dwd_ct.DataValueField = "city_id";
            dwd_ct.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    protected void dwd_grp_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (dwd_grp.SelectedValue.ToString() == "28")
        //{
        //    Panel2.Visible = true;
        //    Panel1.Visible = false;
        //    Panel3.Visible = false;
        //}
        //else if (dwd_grp.SelectedValue.ToString() == "22")
        //{
        //    Panel1.Visible = true;
        //    Panel2.Visible = false;
        //    Panel3.Visible = false;
        //}
        //else if (dwd_grp.SelectedValue.ToString() == "26")
        //{
        //    Panel1.Visible = true;
        //    Panel2.Visible = false;
        //    Panel3.Visible = false;
        //}
        //else
        //{
        //    Panel1.Visible = false;
        //    Panel2.Visible = false;
        //    Panel3.Visible = true;
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            {
                bl.grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
                bl.bank_nm = TextBox1.Text;
                bl.nick_nm = txt_nik_bnk.Text;
                bl.address1 = txt_ad1.Text;
                bl.address2 = txt_ad2.Text;
                bl.ac_no = txt_ac_no.Text;
                bl.ifsc_no = txt_ifcs.Text;
                bl.branch = txt_branch.Text;
                bl.bsr = txt_bsr.Text;
                bl.opening_balance = txt_balance.Text;
                bl.openinig_date = TextBox9.Text;
                bl.balance = txt_balance.Text;
                dl.insertbank(bl);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Bank Created successfully'); window.location='company_master.aspx';", true);

            }
        }
        catch
        {
        }
    }
    public void grid()
    {
        //try
        //{


        //    GridView1.DataSource = dl.selectcust(bl);
        //    GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{
        //}
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {


        
            bl.comp_nm = TextBox1.Text;
            bl.nick_nm = txt_nik.Text;
            bl.cont_per_nm = txt_con_nm.Text;
            bl.contact_no = TextBox13_ph.Text;
            bl.grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.address1 = txt_add1.Text;
            bl.address2 = txt_add2.Text;
            bl.state_id =Convert.ToInt32(dwd_st.SelectedValue.ToString());
            bl.city_id = Convert.ToInt32(dwd_ct.SelectedValue.ToString());
            bl.vat = txt_vat.Text;
            bl.st = txt_st.Text;
            if (cst_crft.HasFile)
            {
                string filename = Path.GetFileName(cst_crft.FileName);
                string ex=Path.GetExtension(cst_crft.FileName);
                cst_crft.SaveAs(Server.MapPath("~/img/") + TextBox1.Text +"cst."+ex);
                filename = "img/" + TextBox1.Text + "cst." + ex;
                bl.cst_attch = filename;

            }
            if (vat_crft.HasFile)
            {
                string filename = Path.GetFileName(vat_crft.FileName);
                string ex = Path.GetExtension(vat_crft.FileName);
                cst_crft.SaveAs(Server.MapPath("~/img/") + TextBox1.Text + "vat." + ex);
                filename = "img/" + TextBox1.Text + "vat." + ex;
                bl.vat_attch = filename;

            }
            bl.vatdate = txt_vat_dt.Text;
            bl.pin_code = txt_pin.Text;
            bl.cst = txt_cst.Text;
            bl.ecc = TextBox5_ecc.Text;
            bl.tds = txt_tds.Text;
            bl.pan = txt_pan.Text;
            bl.bank_nm = txt_b_nm.Text;
            bl.ac_no = txt_acno.Text;
            bl.branch = txt_bch.Text;
            bl.ifsc_no = txt_i.Text;
            bl.bsr = txt_bsr_cmp.Text;
            bl.credit_limit = txt_crd_limit.Text;
            dl.insert_company(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Company Created successfully'); window.location='company_master.aspx';", true);



        }
        catch
        {
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            bl.ld_nm = TextBox1.Text;
            bl.grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.ld_remark = TextBox2_remark.Text;
            dl.insert_ledger(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Ledger Created successfully'); window.location='company_list.aspx';", true);


        }
        catch
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
            dwd_st.Focus();
        }
        catch (Exception ex)
        {
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            bl.id = Convert.ToInt32(Request.QueryString["cmp"].ToString());
            bl.comp_nm = TextBox1.Text;
            bl.nick_nm = txt_nik.Text;
            bl.cont_per_nm = txt_con_nm.Text;
            bl.contact_no = TextBox13_ph.Text;
            bl.grp_id = Convert.ToInt32(dwd_grp.SelectedValue.ToString());
            bl.address1 = txt_add1.Text;
            bl.address2 = txt_add2.Text;
            bl.state_id = Convert.ToInt32(dwd_st.SelectedValue.ToString());
            bl.city_id = Convert.ToInt32(dwd_ct.SelectedValue.ToString());
            bl.vat = txt_vat.Text;
            bl.st = txt_st.Text;
            bl.cst = txt_cst.Text;
            bl.ecc = TextBox5_ecc.Text;
            bl.tds = txt_tds.Text;
            bl.pan = txt_pan.Text;
            bl.bank_nm = txt_b_nm.Text;
            bl.ac_no = txt_acno.Text;
            bl.branch = txt_bch.Text;
            bl.ifsc_no = txt_i.Text;
            bl.bsr = txt_bsr_cmp.Text;
            bl.credit_limit = txt_crd_limit.Text;
            bl.cst_date = cst_date.Text;
          //  bl.cst_attch = imgpath;
            if (cst_crft.HasFile)
            {
                string filename = Path.GetFileName(cst_crft.FileName);
                string ex = Path.GetExtension(cst_crft.FileName);
                cst_crft.SaveAs(Server.MapPath("~/img/") + TextBox1.Text + "cst." + ex);
                filename = "img/" + TextBox1.Text + "cst." + ex;
                bl.cst_attch = filename;

            }
            if (vat_crft.HasFile)
            {
                string filename = Path.GetFileName(vat_crft.FileName);
                string ex = Path.GetExtension(vat_crft.FileName);
                cst_crft.SaveAs(Server.MapPath("~/img/") + TextBox1.Text + "vat." + ex);
                filename = "img/" + TextBox1.Text + "vat." + ex;
                bl.vat_attch = filename;

            }
            bl.vatdate = txt_vat_dt.Text;
            dl.update_compnay(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Company Update successfully'); window.location='company_list.aspx';", true);
        }
        catch
        {
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

        try
        {
            bl.comp_nm = TextBox1.Text;
            DataSet ds = new DataSet();
            ds = dl.secectcompnyname(bl);
            if (ds.Tables[0].Rows.Count > 0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('The Company Already Exists'); window.location='company_master.aspx';", true);
            }
            dwd_grp.Focus();

        }
        catch (Exception)
        {

        }
    }
}