using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class dc_print : System.Web.UI.Page
{
    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
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
                invpro();
               
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

                lbl_cmp_vat.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                lbl_cst_no.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                lbl_exc_no.Text = ds.Tables[0].Rows[0]["exse"].ToString();
               

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
                lbl_ecc_puch_no.Text = ds.Tables[0].Rows[0]["exie_no"].ToString();
                
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
                lbl_cuni_ecc.Text = ds.Tables[0].Rows[0]["exie_no"].ToString();
                
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
                
                lbl_odr_no.Text = ds.Tables[0].Rows[0]["po_no"].ToString();
                lbl_odr_dt.Text = ds.Tables[0].Rows[0]["po_date"].ToString();
                lbl_tt_qty.Text = ds.Tables[0].Rows[0]["total_qty"].ToString();
                lbl_dc_no.Text = ds.Tables[0].Rows[0]["dc_no"].ToString();
                lbl_dc_dt.Text = ds.Tables[0].Rows[0]["dc_date"].ToString();
                lbl_vihical_no.Text = ds.Tables[0].Rows[0]["vehical_no"].ToString();
                lbl_to.Text = ds.Tables[0].Rows[0]["to_"].ToString();
                lbl_from.Text = ds.Tables[0].Rows[0]["from_s"].ToString();
                lbl_deshpath.Text = ds.Tables[0].Rows[0]["transport_name"].ToString();


            }
        }
    }
    private void invpro()
    {
        try
        {
            bl.inv_no = Request.QueryString["inv"].ToString(); ;
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
                    sr = sr + "</br>" + (i + 1);
                    pro = pro + "</br>" + ds2.Tables[0].Rows[i]["item_name"].ToString();
                    desc = desc + "</br>" + ds2.Tables[0].Rows[i]["descr"].ToString();
                    qty = qty + "</br>" + ds2.Tables[0].Rows[i]["qty"].ToString();
                    //   tax = tax + "</br>" + ds2.Tables[0].Rows[i]["tax"].ToString();
                    dec = dec + "</br>" + ds2.Tables[0].Rows[i]["disc"].ToString();

                    if (ds2.Tables[0].Rows[i]["rate"].ToString() == "")
                    {
                        rate = rate + "</br>" + ds2.Tables[0].Rows[i]["rate"].ToString();

                    }
                    else
                    {
                        rate = rate + "</br>" + ds2.Tables[0].Rows[i]["rate"].ToString() + ".00";
                    }

                    per = per + "</br>" + ds2.Tables[0].Rows[i]["per"].ToString();
                    if (ds2.Tables[0].Rows[i]["amount"].ToString() == "")
                    {
                        amo = amo + "</br>" + ds2.Tables[0].Rows[i]["amount"].ToString();
                    }
                    else
                    {
                        amo = amo + "</br>" + ds2.Tables[0].Rows[i]["amount"].ToString() + ".00";
                    }
                }

                //  lbl_no.Text = no;
                lbl_sr.Text = sr;
                lbl_itm_nm.Text = pro;
                lbl_qty.Text = qty;
                


            }


        }
        catch
        {
        }
    }
}