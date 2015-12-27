using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BAL1
/// </summary>
public class BAL1
{
    public BAL1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string ecc_p { get; set; }
    public int city_id { get; set; }
    public string City_name { get; set; }
    public int state_id { get; set; }
    public string state_name { get; set; }
    public string grp_nm { get; set; }
    public int grp_id { get; set; }
    public string sub_grp_nm { get; set; }
    public int sub_grp_id { get; set; }
    public int vch_id { get; set; }
    public string vch_nm { get; set; }
    public string inv_no { get; set; }
    public string term_condition { get; set; }
    public string ino_no_partan { get; set; }
    public string ac_ty_id { get; set; }
    public string unit_name { get; set; }
    public string decimal_no { get; set; }
    public string nik { get; set; }
    public string barcode { get; set; }
    public string openinig_date { get; set; }
    public string mrp { get; set; }
    public string vate { get; set; }
    public int bnk_id { get; set; }
    public string bnk_nm { get; set; }
    public string nick_nm { get; set; }
    public string address1 { get; set; }
    public string address2 { get; set; }
    public string ac_no { get; set; }
    public string ifsc_no { get; set; }
    public string branch { get; set; }
    public string bsr { get; set; }
    public string opening_balance { get; set; }
    public string apppli_dt { get; set; }
    public string balance { get; set; }
    public int brocker_id { get; set; }
    public string brocker_nm { get; set; }
    public string contact_no { get; set; }
    public int cust_brock_id { get; set; }
    public int brock_id { get; set; }
    public string brock_name { get; set; }
    public string status { get; set; }
    public string end_date { get; set; }
    public int cust_id { get; set; }
    public string per { get; set; }
    public string comp_nm { get; set; }
    public string cont_per_nm { get; set; }
    public string vat { get; set; }
    public string cts { get; set; }
    public string st { get; set; }
    public string ecc { get; set; }
    public string tds { get; set; }
    public string pan { get; set; }
    public string credit_limit { get; set; }
    public int godow_id { get; set; }
    public string godown_nm { get; set; }
    public int item_id { get; set; }
    public string qty { get; set; }
    public string price { get; set; }
    public int item_grp_id { get; set; }
    public string item_grp_nm { get; set; }
    public string item_name { get; set; }
    public string unit { get; set; }
    public string unit_id { get; set; }
    public string opening_qty { get; set; }
    public string rate { get; set; }
    public string value { get; set; }
    public string item_code { get; set; }
    public string item_des { get; set; }
    public string bank_nm { get; set; }
    public string cst { get; set; }
    public int ld_id { get; set; }
    public string ld_nm { get; set; }
    public string ld_remark { get; set; }
    public string tax { get; set; }
    public int trp_id { get; set; }
    public string trp_naem   { get; set; }
    public string phone { get; set; }
    public string dc_no { get; set; }
    public string dc_date { get; set; }
    public string p_o_date { get; set; }
    public string p_o_no { get; set; }
    public string l_r_no { get; set; }
    public string l_r_date { get; set; }
    public string total_amt { get; set; }
    public string tax_4 { get; set; }
    public string vat_1 { get; set; }
    public string tax_12 { get; set; }
    public string vat_2 { get; set; }
    public string cst_2 { get; set; }
    public string disc { get; set; }
    public string amount { get; set; }
    public string extra_rs { get; set; }
    public string net_amount { get; set; }
    public string dcsr { get; set; }
    public string inv_date { get; set; }
    public string total_qty { get; set; }
    public string total { get; set; }
    public string dic { get; set; }
    public string date { get; set; }
    public string debit_amt { get; set; }

    public string rn_no { get; set; }

    public string rn_date { get; set; }

    public string credit_amt { get; set; }

    public string puch_id { get; set; }

    public string logo { get; set; }

    public string vatdate { get; set; }

    public string vatcrt { get; set; }

    public string cst_date { get; set; }

    public string exse { get; set; }

    public string exse_date { get; set; }

    public string exse_crt { get; set; }

    public string stdate { get; set; }

    public string st_crt { get; set; }

    public string tds_date { get; set; }

    public string tds_crt { get; set; }

    public string cin { get; set; }

    public string cincrt { get; set; }

    public string pancrt { get; set; }

    public string website { get; set; }

    public string email { get; set; }

    public string mobile { get; set; }

    public string pin_code { get; set; }

    public int id { get; set; }
    public string hsn { get; set; }
    public string basic_duty { get; set; }
    public string tarif_no { get; set; }


    public string range { get; set; }

    public string division { get; set; }

    public string removal_dt { get; set; }

    public string removal_time { get; set; }

    public string inv_time { get; set; }

    public string trp_to { get; set; }

    public string trp_from { get; set; }

    public string maner_trp { get; set; }

    public string vechel_no { get; set; }

    public string rai_no { get; set; }

    public string exc_cmt { get; set; }

    public string stu_name { get; set; }

    public string comissinrt { get; set; }

    public string notfy { get; set; }

    public string ship { get; set; }

    public string ex_comodity { get; set; }

    public string terif_no { get; set; }

    public string pla { get; set; }

    public string rg { get; set; }

    public string part { get; set; }

    public string cst_attch { get; set; }

    public string comoditiy { get; set; }

    public string tarifno { get; set; }

    public string trf_id { get; set; }

    public string e_declare { get; set; }

    public string e_name { get; set; }

    public string vate_type { get; set; }

    public string vat_attch { get; set; }
}