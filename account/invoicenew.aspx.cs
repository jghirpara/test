using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class invoicenew : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    static double ttl = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                cmpdeatil();
                buyer_detai();
                cuni_detai();
              
                inv_detail();
                bankdetail();

                invpro();
                invext();

                terms();
            }

        }
        catch
        {
        }
    }
    private void cmpdeatil()
    {
        try
        {
            DataSet ds = new DataSet();
            ds = dl.select_cmp_mst_inv(bl);

            if (ds.Tables[0].Rows.Count > 0)
            {

                lbl_cmp.Text = ds.Tables[0].Rows[0]["company_name"].ToString();
                lbl_cmp_vat.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                lbl_cst_no.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                lbl_st_no.Text = ds.Tables[0].Rows[0]["st"].ToString();
                lbl_exc_no.Text = ds.Tables[0].Rows[0]["exse"].ToString();
                lbl_pan_no.Text = ds.Tables[0].Rows[0]["pan"].ToString();
                lbl_range.Text = ds.Tables[0].Rows[0]["range"].ToString();
                lbl_div.Text = ds.Tables[0].Rows[0]["division"].ToString();
                lbl_comi_rt.Text = ds.Tables[0].Rows[0]["commisionerate"].ToString();
                lbl_underwich.Text = ds.Tables[0].Rows[0]["n_dt_notificatio_under"].ToString();

            }


        }
        catch
        {
        }
    }
    private void buyer_detai()
    {
        if (Request.QueryString["inv"] != "" && Request.QueryString["inv"] != null)
        {
            bl.inv_no = Request.QueryString["inv"].ToString();
            int i = Convert.ToInt32(dl.slelct_cut_id_inv(bl));
            DataSet ds = new DataSet();
            bl.cust_id = i;
            ds = dl.select_buyerdetail(bl);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lbl_puch_party.Text = ds.Tables[0].Rows[0]["company_name"].ToString();
                lbl_puch_add1.Text = ds.Tables[0].Rows[0]["address_1"].ToString();
                lbl_puch_add2.Text = ds.Tables[0].Rows[0]["address_2"].ToString();
                lbl_puch_city.Text = ds.Tables[0].Rows[0]["city_name"].ToString();
                lbl_puch_st.Text = ds.Tables[0].Rows[0]["state_name"].ToString();
                lbl_puch_ph.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                lbl_vat_puch_no.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                lbl_puch_cst_no.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                lbl_ecc_puch_no.Text = ds.Tables[0].Rows[0]["ecc"].ToString();
            }
        }
    }
    private void cuni_detai()
    {
        if (Request.QueryString["inv"] != "" && Request.QueryString["inv"] != null)
        {
            bl.inv_no = Request.QueryString["inv"].ToString();
            string i = Convert.ToString(dl.slelct_cuni_nm_inv(bl));
            DataSet ds = new DataSet();
            bl.ship = i;
            ds = dl.select_cunidetail(bl);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lbl_cuni_nm.Text = ds.Tables[0].Rows[0]["company_name"].ToString();
                lbl_cuni_add1.Text = ds.Tables[0].Rows[0]["address_1"].ToString();
                lbl_cuni_add2.Text = ds.Tables[0].Rows[0]["address_2"].ToString();
                lbl_cuni_ct.Text = ds.Tables[0].Rows[0]["city_name"].ToString();
                lbl_cuni_st.Text = ds.Tables[0].Rows[0]["state_name"].ToString();
                lbl_cuni_ph.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                lbl_cuni_vat.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                lbl_cuni_cst.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                lbl_cuni_ecc.Text = ds.Tables[0].Rows[0]["ecc"].ToString();
            }
        }
    }
    private void inv_detail()
    {
        if (Request.QueryString["inv"] != "" && Request.QueryString["inv"] != null)
        {
            bl.inv_no = Request.QueryString["inv"].ToString();
            DataSet ds = new DataSet();
            ds = dl.select_inv_detail(bl);

            if (ds.Tables[0].Rows.Count > 0)
            {
                 lbl_vch_typ.Text = ds.Tables[0].Rows[0]["vch_nm"].ToString();
                lbl_inv_no.Text = ds.Tables[0].Rows[0]["invoice_no"].ToString();
                lbl_inv_dt.Text = ds.Tables[0].Rows[0]["invoice_date"].ToString();
                lbl_odr_no.Text = ds.Tables[0].Rows[0]["po_no"].ToString();
                lbl_odr_dt.Text = ds.Tables[0].Rows[0]["po_date"].ToString();
                lbl_lr_no.Text = ds.Tables[0].Rows[0]["lr_no"].ToString();
                lbl_lr_dt.Text = ds.Tables[0].Rows[0]["lr_date"].ToString();
                lbl_dc_no.Text = ds.Tables[0].Rows[0]["dc_no"].ToString();
                lbl_dc_dt.Text = ds.Tables[0].Rows[0]["dc_date"].ToString();
                lbl_deshpath.Text = ds.Tables[0].Rows[0]["transport_name"].ToString();
                //lbl_tt_qty.Text = ds.Tables[0].Rows[0]["total_qty"].ToString();
                string amt = ds.Tables[0].Rows[0]["total"].ToString();
                double a = Convert.ToDouble(amt);

                amt = string.Format("{0:0.00}", a);


                lbl_amt.Text = amt;
                lbl_vihical_no.Text = ds.Tables[0].Rows[0]["vehical_no"].ToString();
                lbl_to.Text = ds.Tables[0].Rows[0]["to_"].ToString();
                lbl_from.Text = ds.Tables[0].Rows[0]["from_s"].ToString();
                lbl_ecc_comdity.Text = ds.Tables[0].Rows[0]["exci_como_no"].ToString();
                lbl_tariff_no.Text = ds.Tables[0].Rows[0]["teriff_no"].ToString();
                lbl_issu_dt.Text = ds.Tables[0].Rows[0]["invoice_date"].ToString();
                lbl_issu_time.Text = ds.Tables[0].Rows[0]["inv_time"].ToString();
                lbl_removal_dt.Text = ds.Tables[0].Rows[0]["removel_dt"].ToString();
                lbl_reoval_time.Text = ds.Tables[0].Rows[0]["removal_time"].ToString();
                string exc = ds.Tables[0].Rows[0]["exce"].ToString();
                double pr = Convert.ToDouble(exc);

                ttl = 0;
                ttl =ttl +pr;
                exc = string.Format("{0:0.00}", pr);


                // lbl_price.Text = exc;
                if (ds.Tables[0].Rows[0]["disc"].ToString() != string.Empty && ds.Tables[0].Rows[0]["disc"].ToString() != "0")
                {
                    lbl_extra.Text ="Discount</Br>";
                    double di = Convert.ToDouble(ds.Tables[0].Rows[0]["disc"].ToString());
                    string.Format("{0:0.00}", di);
                    lbl_extraprice.Text = string.Format("{0:0.00}", di) + "</Br>";

                }


                if (lbl_extra.Text != string.Empty)
                {
                    lbl_extra.Text = lbl_extra.Text + "Excise 12.5% </Br>";
                    lbl_extraprice.Text = lbl_extraprice.Text + exc + "</Br>";
                }
                else
                {
                    lbl_extra.Text = "Excise 12.5% </Br>";
                    lbl_extraprice.Text = exc + "</Br>";
                }
               

                lbl_vat_type.Text = ds.Tables[0].Rows[0]["vat_type"].ToString();
                if (lbl_vat_type.Text == "vat @ 12.5%")
                {
                    lbl_addvat.Text = "2.5%";
                }
                else
                {
                    lbl_addvat.Text = "1%";
                }

                string vat = ds.Tables[0].Rows[0]["tax_4"].ToString();
                double v = Convert.ToDouble(vat);

                vat = string.Format("{0:0.00}", v);

                lbl_vat_amt.Text = vat;
                string avat = ds.Tables[0].Rows[0]["vat_1"].ToString();
                double av = Convert.ToDouble(avat);

                avat = string.Format("{0:0.00}", av);

                lbl_add_amt.Text = avat;
                lbl_pa.Text = ds.Tables[0].Rows[0]["pla"].ToString();
                lbl_rg.Text = ds.Tables[0].Rows[0]["r_g"].ToString();
                lbl_prt.Text = ds.Tables[0].Rows[0]["part"].ToString();
                lbl_dt.Text = ds.Tables[0].Rows[0]["dt"].ToString();

                string str = ds.Tables[0].Rows[0]["total_amount"].ToString();
                double st = Convert.ToDouble(str);

                str = string.Format("{0:0.00}", st);

                lbl_net_amt.Text = str;
                double n = Convert.ToDouble(lbl_net_amt.Text);
                string s = Math.Round(n, 0).ToString();
                double g = Convert.ToDouble(exc);
                string r = Math.Round(g, 0).ToString();
                string word = ConvertNumbertoWords(Convert.ToInt32(n));
                lblmsg.InnerText = word;
                string word2 = ConvertNumbertoWords(Convert.ToInt32(r));
                lblmsg2.InnerText = word2;


            }
        }
    }
    private void bankdetail()
    {
        try
        {
            DataSet ds = new DataSet();
            ds = dl.select_bank(bl);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lbl_bnk_nm.Text = ds.Tables[0].Rows[0]["bnk_nm"].ToString();
                lbl_ac_no.Text = ds.Tables[0].Rows[0]["ac_no"].ToString();
                lbl_ifc_code.Text = ds.Tables[0].Rows[0]["ifsc_no"].ToString();
                // lbl_bsr.Text = ds.Tables[0].Rows[0]["bsr"].ToString();
                lbl_barnch.Text = ds.Tables[0].Rows[0]["branch"].ToString();

            }


        }
        catch
        {
        }
    }
    private void invpro()
    {
        try
        {
            bl.inv_no = Request.QueryString["inv"].ToString();
            DataSet ds2 = new DataSet();
            ds2 = dl.select_inv_item_detail(bl);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                string pro = "";
                string desc = "";
                string qty = "";
                string rate = "";
                string per = "";
                string amo = "";
                string sr = "";
                // string tax = "";
                string dec = "";
                //     string no="";


                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    sr = sr + (i + 1) + "</br>";
                    pro = pro + ds2.Tables[0].Rows[i]["item_name"].ToString() + "</br>";
                    desc = desc + ds2.Tables[0].Rows[i]["descr"].ToString() + "</br>";
                    qty = qty + ds2.Tables[0].Rows[i]["qty"].ToString() + "</br>";
                    //   tax = tax + "</br>" + ds2.Tables[0].Rows[i]["tax"].ToString();
                    if (ds2.Tables[0].Rows[i]["disc"].ToString() != string.Empty)
                    {
                        dec = dec + "</br>" + ds2.Tables[0].Rows[i]["disc"].ToString();
                    }
                    if (ds2.Tables[0].Rows[i]["rate"].ToString() == "")
                    {
                        rate = rate + ds2.Tables[0].Rows[i]["rate"].ToString() + "</br>";

                    }
                    else
                    {
                        string str = ds2.Tables[0].Rows[i]["rate"].ToString();
                        double st = Convert.ToDouble(str);

                        str = string.Format("{0:0.00}", st);

                        rate = rate + str + "</br>";

                    }

                    per = per + ds2.Tables[0].Rows[i]["per"].ToString() + "</br>";
                    if (ds2.Tables[0].Rows[i]["amount"].ToString() == "")
                    {
                        amo = amo + ds2.Tables[0].Rows[i]["amount"].ToString()+ "</br>" ;
                    }
                    else
                    {
                        string str = ds2.Tables[0].Rows[i]["amount"].ToString();
                        double st = Convert.ToDouble(str);

                        str = string.Format("{0:0.00}", st);
                        amo = amo + str + "</br>";
                    }
                }

                //  lbl_no.Text = no;
                lbl_itm_nm.Text = pro;
                ;// double aqty = Convert.ToDouble(qty);

                lbl_qty.Text = qty;
                lbl_rt.Text = rate;
                lbl_par.Text = per;
                if (dec != string.Empty && dec != "0")
                {
                    lbl_extra.Text = "Discount";
                    lbl_extraprice.Text = dec;
                }// lbl_dis.Text = dec;
                lbl_total_amt.Text = amo;
                lbl_sr.Text = sr;

            }


        }
        catch
        {
        }
    }
    private void invext()
    {
        try
        {
            bl.inv_no = Request.QueryString["inv"].ToString();
            DataSet ds2 = new DataSet();
            ds2 = dl.select_inv_extra_detail(bl);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                string nm = "";
                string rs = "";

                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    string str = ds2.Tables[0].Rows[i]["extra_rs"].ToString();
                    double st = Convert.ToDouble(str);
                    ttl = ttl + st;
                    str = string.Format("{0:0.00}", st);

                    nm = nm + ds2.Tables[0].Rows[i]["ld_name"].ToString() + "</br>";
                    rs = rs + str + "</br>";

                }

                lbl_extra.Text = lbl_extra.Text + nm;
                lbl_extraprice.Text = lbl_extraprice.Text + rs;


            }


        }
        catch
        {
        }
    }
    private void terms()
    {
        if (Request.QueryString["inv"] != "" && Request.QueryString["inv"] != null)
        {
            bl.inv_no = Request.QueryString["inv"].ToString();
            int i = Convert.ToInt32(dl.slelct_vch_id_inv(bl));
            DataSet ds = new DataSet();
            bl.vch_id = i;
            ds = dl.select_inv_trm_vch(bl);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lbl_term_condition.Text = ds.Tables[0].Rows[0]["term_condition"].ToString();
                lbl_ecc_declartion.Text = ds.Tables[0].Rows[0]["e_declare"].ToString();

            }
            lbl_extratotal.Text = string.Format("{0:0.00}", ttl);

        }
    }
    public static string ConvertNumbertoWords(int number)
    {
        if (number == 0)
            return "ZERO";
        if (number < 0)
            return "minus " + ConvertNumbertoWords(Math.Abs(number));
        string words = "";
        if ((number / 1000000) > 0)
        {
            words += ConvertNumbertoWords(number / 1000000) + " MILLION ";
            number %= 1000000;
        }
        if ((number / 100000) > 0)
        {
            words += ConvertNumbertoWords(number / 100000) + "  LAKH ";
            number %= 1000000;
        }
        if ((number / 1000) > 0)
        {
            words += ConvertNumbertoWords(number / 1000) + " THOUSAND ";
            number %= 1000;
        }
        if ((number / 100) > 0)
        {
            words += ConvertNumbertoWords(number / 100) + " HUNDRED ";
            number %= 100;
        }
        if (number > 0)
        {
            if (words != "")
                words += "AND ";
            var unitsMap = new[] { "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN", "EIGHTEEN", "NINETEEN" };
            var tensMap = new[] { "ZERO", "TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY" };

            if (number < 20)
                words += unitsMap[number];
            else
            {
                words += tensMap[number / 10];
                if ((number % 10) > 0)
                    words += " " + unitsMap[number % 10];
            }
        }
        return words;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("printinvoice.aspx?pr=" + DropDownList1.SelectedItem.Text + "&inv=" + Request.QueryString["inv"].ToString());
    }
}