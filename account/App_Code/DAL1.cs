using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// Summary description for DAL1
/// </summary>
public class DAL1
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adr;
   // DataSet ds;
    public DAL1()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }


    public DataSet selectstate(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from Tbl_state ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_vat_add(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_statutary where  stu_id='"+bl.id+"'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectcity(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from Tbl_city  where state_id='" + bl.state_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_grp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_group where grp_id='26' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_grp_grd(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_group where grp_id>'28'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_grp_sub_id(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_sub_grp where grp_id='" + bl.grp_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectunit(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_unit ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectitemgrp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_item_grp ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectcust(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_custmer ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectgodown(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_godown ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectitem(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_item_master ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectitmegrp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_item_grp ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectitmegrp_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_item_grp where item_grp_id='" + bl.item_grp_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectbrocker(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_brocker ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selecttransport(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_transport ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selecttransport_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_transport where trp_id='" + bl.trp_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet slect_grp_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_group where grp_id='" + bl.grp_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_itm_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_item_master where item_id='" + bl.item_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet slect_gwd_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_godown where godw_id='" + bl.godow_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet slect_unit_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_unit where unit_id='" + bl.unit_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet slect_brocker_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_brocker where brock_id='" + bl.brocker_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet slect_vcher_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where vch_id='" + bl.vch_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public void insetsubgrp(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_group (grp_name,ac_ty_id) values('" + bl.grp_nm + "','" + bl.grp_id + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insertbrocker(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_brocker (brock_nm,address_1,address_2,state_id,city,contact_no) values('" + bl.brocker_nm + "','" + bl.address1 + "','" + bl.address2 + "','" + bl.state_id + "','" + bl.city_id + "','" + bl.contact_no + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void inserttransport(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_transport (trp_nm,trp_add,phone_no) values('" + bl.trp_naem + "','" + bl.address1 + "','" + bl.phone + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insertitem(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_item_master (item_name,item_sub_id,item_nik,item_code,barcode,item_des,unit,unit_id,opening_qty,opening_date,mrp,qty,tax,cst,add_tax,exce,tariff_no,hsn_code,basic_duty) values('" + bl.item_name + "','" + bl.item_grp_id + "','" + bl.nick_nm + "','" + bl.item_code + "','" + bl.barcode + "','" + bl.item_des + "','" + bl.unit + "','" + bl.unit_id + "','" + bl.opening_qty + "','" + bl.openinig_date + "','" + bl.mrp + "','" + bl.qty + "','" + bl.tax + "','" + bl.cst + "','" + bl.tax_4 + "','" + bl.ecc + "','" + bl.tarif_no + "','" + bl.hsn + "','" + bl.basic_duty + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insertbank(BAL1 bl)
    {

        cmd = new SqlCommand("Insert into tbl_ledger (ld_nm,ld_remark,grp_id,nick_nm,address_1,address_2,ac_no,ifsc_no,branch,bsr,opening_banlance,aaplicable_date,balance) values('" + bl.bank_nm + "','','" + bl.grp_id + "','" + bl.nick_nm + "','" + bl.address1 + "','" + bl.address2 + "','" + bl.ac_no + "','" + bl.ifsc_no + "','" + bl.branch + "','" + bl.bsr + "','" + bl.opening_balance + "','" + bl.openinig_date + "','" + bl.balance + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insertunit(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_unit (unit_nm,decimal_no) values('" + bl.unit_name + "','" + bl.decimal_no + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insertitemgrp(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_item_grp (item_grp_nm,grp_id,vat_tax,add_tax) values('" + bl.item_grp_nm + "','','" + bl.vat_1 + "','" + bl.vat_2 + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insert_company(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_custmer (company_name,nick_nm,contact_per_name,grp_id,address_1,address_2,contact_no,state_id,city_id,vat,cst,cst_date,cst_attch,st,ecc,tds,pan,bank_name,ac_no,branch,ifsc,bsr,credit_limit,pin,tin_attch,tin_date) values('" + bl.comp_nm + "','" + bl.nick_nm + "','" + bl.cont_per_nm + "','" + bl.grp_id + "','" + bl.address1 + "','" + bl.address2 + "','" + bl.contact_no + "','" + bl.state_id + "','" + bl.city_id + "','" + bl.vat + "','" + bl.cst + "','" + bl.cst_date + "','" + bl.cst_attch + "','" + bl.st + "','" + bl.ecc + "','" + bl.tds + "','" + bl.pan + "','" + bl.bank_nm + "','" + bl.ac_no + "','" + bl.branch + "','" + bl.ifsc_no + "','" + bl.bsr + "','" + bl.credit_limit + "','" + bl.pin_code + "','" + bl.vat_attch + "','"+bl.vatdate+"')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public void insertitegodawon(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_godown (godw_nm) values('" + bl.godown_nm + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public void update_grp(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_group set grp_name='" + bl.grp_nm + "',ac_ty_id='" + bl.ac_ty_id + "' where grp_id='" + bl.grp_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_trp(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_transport set trp_nm='" + bl.trp_naem + "',trp_add='" + bl.address1 + "',phone_no='" + bl.phone + "' where trp_id='" + bl.trp_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_item_grp(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_item_grp set item_grp_nm='" + bl.item_grp_nm + "' where item_grp_id='" + bl.item_grp_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_vch_grp(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_vavcher_type set vch_nm='" + bl.vch_nm + "',ac_ty_id='" + bl.ac_ty_id + "',term_condition='" + bl.term_condition + "',ino_no_type='" + bl.inv_no + "',ino_no_partan='" + bl.ino_no_partan + "' where vch_id='" + bl.vch_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_item(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_item_master set item_name='" + bl.item_name + "',item_sub_id='" + bl.item_grp_id + "',item_nik='" + bl.nick_nm + "',item_code='" + bl.item_code + "',item_des='" + bl.item_des + "',unit_id='" + bl.unit_id + "',unit='" + bl.unit + "',barcode='" + bl.barcode + "',opening_qty='" + bl.opening_qty + "',opening_date='" + bl.openinig_date + "',mrp='" + bl.mrp + "',qty='" + bl.qty + "',tax='" + bl.tax + "',cst='" + bl.cst + "',add_tax='" + bl.tax_4 + "',hsn_code='" + bl.hsn + "',basic_duty='" + bl.basic_duty + "',tariff_no='" + bl.tarif_no + "' where item_id='" + bl.item_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_brocker(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_brocker set brock_nm='" + bl.brocker_nm + "',address_1='" + bl.address1 + "',address_2='" + bl.address2 + "',state_id='" + bl.state_id + "',city='" + bl.city_id + "',contact_no='" + bl.contact_no + "' where brock_id='" + bl.brocker_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_godown_id(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_godown set godw_nm='" + bl.godown_nm + "' where godw_id='" + bl.godow_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_unit(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_unit set unit_nm='" + bl.unit_name + "',decimal_no='" + bl.decimal_no + "' where unit_id='" + bl.unit_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public int select_sub_grp_val(BAL1 bl)
    {
        cmd = new SqlCommand("select count(grp_id) from tbl_sub_grp where grp_id='" + bl.grp_id + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public DataSet selectvavchertype(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }


    public DataSet selectvaoucher(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where vch_id>22 ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selectvavchertypegrid(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where vch_id > '22' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public void insetsubvacher(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_vavcher_type (vch_nm,ac_ty_id,term_condition,ino_no_type,ino_no_partan) values('" + bl.vch_nm + "','" + bl.vch_id + "','" + bl.term_condition + "','" + bl.inv_no + "','" + bl.ino_no_partan + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void insert_ledger(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_ledger (ld_nm,ld_remark,grp_id) values('" + bl.ld_nm + "','" + bl.ld_remark + "','" + bl.grp_id + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public double get_dc_no(BAL1 bl)
    {

        cmd = new SqlCommand("select top 1 dc_no from tbl_dc", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }
    public double get_inv_no(BAL1 bl)
    {

        cmd = new SqlCommand("select top 1 invoice_id from tbl_invoice ORDER BY invoice_id DESC", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }
    public double get__puch_inv_no(BAL1 bl)
    {

        cmd = new SqlCommand("select top 1 puch_id from tbl_purches ORDER BY puch_id DESC", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }
    public string get_inv_no_partan(BAL1 bl)
    {

        cmd = new SqlCommand("select ino_no_partan  from tbl_vavcher_type where vch_id='" + bl.vch_id + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }

    public string selectper(BAL1 bl)
    {
        cmd = new SqlCommand("select unit from tbl_item_master where item_name='" + bl.item_name + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double selectsateforvat(BAL1 bl)
    {
        cmd = new SqlCommand("select state_id from tbl_custmer where company_name='" + bl.comp_nm + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public string selecttaxforpr(BAL1 bl)
    {
        cmd = new SqlCommand("select tax from tbl_item_master where item_name='" + bl.item_name + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public string selectcstforpr(BAL1 bl)
    {
        cmd = new SqlCommand("select cst from tbl_item_master where item_name='" + bl.item_name + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public string select_ld_grpid(BAL1 bl)
    {
        cmd = new SqlCommand("select grp_id from tbl_ledger where ld_nm='" + bl.ld_nm + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double select_grp_grpid(BAL1 bl)
    {
        cmd = new SqlCommand("select ac_ty_id from tbl_group where ac_ty_id='" + bl.ac_ty_id + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public void insert_dc(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_dc (dc_no,dc_date,p_o_no,p_o_date,l_r_no,l_r_date,transport_name,trp_id,company_naem,cust_id,brocker_nm,brocker_id,tax_4,vat_1,tax_12,vat_2,cst_2,dics,total_amount) values('" + bl.dc_no + "','" + bl.dc_date + "','" + bl.p_o_no + "','" + bl.p_o_date + "','" + bl.l_r_no + "','" + bl.l_r_date + "','" + bl.trp_naem + "','" + bl.trp_id + "','" + bl.comp_nm + "','" + bl.cust_id + "','" + bl.brock_name + "','" + bl.brock_id + "','" + bl.tax_4 + "','" + bl.vat_1 + "','" + bl.tax_12 + "','" + bl.vat_2 + "','" + bl.cst_2 + "','" + bl.disc + "','" + bl.net_amount + "')", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_dc_item(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_dc_item (dc_no_id,item_id,item_name,descr,qty,rate,per,tax,disc,amount) values('" + bl.dc_no + "','" + bl.item_id + "','" + bl.item_name + "','" + bl.dcsr + "','" + bl.qty + "','" + bl.rate + "','" + bl.per + "','" + bl.tax + "','" + bl.disc + "','" + bl.amount + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_dc_extra(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_dc_extra (dc_no,ld_name,ld_id,extra_rs) values('" + bl.dc_no + "','" + bl.ld_nm + "','" + bl.ld_id + "','" + bl.extra_rs + "')", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_inv(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_invoice (vch_id,vch_nm,invoice_no,company_nm,company_id,dc_no,dc_date,invoice_date,lr_no,lr_date,po_no,po_date,transport_name,trp_id,brocker_id,brocker_name,tax_4,vat_1,tax_12,vat_2,cst_2,total_amount,total_qty,total,disc,payment,debit_amount,inv_time,removel_dt,removal_time,ship_to,from_s,to_,menar_trp,vehical_no,exci_como_no,teriff_no,pla,r_g,part,dt,exce,vat_type) values('" + bl.vch_id + "','" + bl.vch_nm + "','" + bl.inv_no + "','" + bl.comp_nm + "','" + bl.cust_id + "','" + bl.dc_no + "','" + bl.dc_date + "','" + bl.inv_date + "','" + bl.l_r_no + "','" + bl.l_r_date + "','" + bl.p_o_no + "','" + bl.p_o_date + "','" + bl.trp_naem + "','" + bl.trp_id + "','" + bl.brock_id + "','" + bl.brock_name + "','" + bl.tax_4 + "','" + bl.vat_1 + "','" + bl.tax_12 + "','" + bl.vat_2 + "','" + bl.cst_2 + "','" + bl.net_amount + "','" + bl.total_qty + "','" + bl.total + "','" + bl.dic + "','','" + bl.debit_amt + "','" + bl.inv_time + "','" + bl.removal_dt + "','" + bl.removal_time + "','" + bl.ship + "','" + bl.trp_from + "','" + bl.trp_to + "','" + bl.maner_trp + "','" + bl.vechel_no + "','" + bl.ex_comodity + "','" + bl.terif_no + "','" + bl.pla + "','" + bl.rg + "','" + bl.part + "','" + bl.date + "','" + bl.ecc_p + "','"+bl.vate_type+"')", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_puch_inv(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_purches (inv_no,vch_id,vch_nm,company_nm,company_id,rn_no,rn_date,puch_date,lr_no,ld_date,po_no,po_date,transport_name,trp_id,brocker_id,brocker_nm,tax_4,vat_1,tax_12,vat_2,cst_2,tatal_amount,total_qty,total,disc,payment,credit_amount) values('" + bl.inv_no + "','" + bl.vch_id + "','" + bl.vch_nm + "','" + bl.comp_nm + "','" + bl.cust_id + "','" + bl.rn_no + "','" + bl.rn_date + "','" + bl.inv_date + "','" + bl.l_r_no + "','" + bl.l_r_date + "','" + bl.p_o_no + "','" + bl.p_o_date + "','" + bl.trp_naem + "','" + bl.trp_id + "','" + bl.brock_id + "','" + bl.brock_name + "','" + bl.tax_4 + "','" + bl.vat_1 + "','" + bl.tax_12 + "','" + bl.vat_2 + "','" + bl.cst_2 + "','" + bl.net_amount + "','" + bl.total_qty + "','" + bl.total + "','" + bl.dic + "','','" + bl.credit_amt + "')", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_inv_item(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_inv_item (invoice_id,item_id,item_name,descr,qty,rate,per,tax,disc,amount) values('" + bl.inv_no + "','" + bl.item_id + "','" + bl.item_name + "','" + bl.dcsr + "','" + bl.qty + "','" + bl.rate + "','" + bl.per + "','" + bl.tax + "','" + bl.disc + "','" + bl.amount + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_puch_item(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_puch_item (puch_id,item_id,item_name,descr,qty,rate,per,tax,disc,amount) values('" + bl.puch_id + "','" + bl.item_id + "','" + bl.item_name + "','" + bl.dcsr + "','" + bl.qty + "','" + bl.rate + "','" + bl.per + "','" + bl.tax + "','" + bl.disc + "','" + bl.amount + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_inv_extra(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_inv_extra (invoice_id,ld_name,ld_id,extra_rs) values('" + bl.inv_no + "','" + bl.ld_nm + "','" + bl.ld_id + "','" + bl.extra_rs + "')", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public void insert_puch_extra(BAL1 bl)
    {
        cmd = new SqlCommand("insert into tbl_inv_extra (puch_id,ld_name,ld_id,extra_rs) values('" + bl.puch_id + "','" + bl.ld_nm + "','" + bl.ld_id + "','" + bl.extra_rs + "')", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }
    public double slelct_cust_id_bill(BAL1 bl)
    {
        cmd = new SqlCommand("select cust_id from tbl_custmer where company_name='" + bl.comp_nm + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double slelct_brock_id_bill(BAL1 bl)
    {
        cmd = new SqlCommand("select brock_id from tbl_brocker where brock_nm='" + bl.brock_name + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double slelct_transport_id_bill(BAL1 bl)
    {
        cmd = new SqlCommand("select trp_id from tbl_transport where trp_nm='" + bl.trp_naem + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double slelct_item_id_bill(BAL1 bl)
    {
        cmd = new SqlCommand("select item_id from tbl_item_master where item_name='" + bl.item_name + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double slelct_unit_manage(BAL1 bl)
    {
        cmd = new SqlCommand("select qty from tbl_item_master where item_name='" + bl.item_name + "'", con);
        Double i = 0;
        con.Open();
        try
        {
            i = Convert.ToDouble(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public double slelct_ld_id_bill(BAL1 bl)
    {
        cmd = new SqlCommand("select ld_id from tbl_ledger where ld_nm='" + bl.ld_nm + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }


    public DataSet slect_vch_ich(BAL1 bl)
    {

        adr = new SqlDataAdapter("select * from tbl_invoice where vch_id='" + bl.vch_id + "' ORDER BY invoice_id DESC", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }

    public DataSet slect_vch_ich1(BAL1 bl)
    {

        adr = new SqlDataAdapter("select * from tbl_invoice ORDER BY invoice_id DESC", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }


    public DataSet select_cmp_mst_inv(BAL1 bl)
    {

        adr = new SqlDataAdapter("select * from tbl_company_master", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public double slelct_cut_id_inv(BAL1 bl)
    {
        cmd = new SqlCommand("select company_id from tbl_invoice where invoice_id='" + bl.inv_no + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public string slelct_cuni_nm_inv(BAL1 bl)
    {
        cmd = new SqlCommand("select ship_to from tbl_invoice where invoice_id='" + bl.inv_no + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public DataSet select_buyerdetail(BAL1 bl)
    {

        adr = new SqlDataAdapter("SELECT        tbl_city.city_name, tbl_custmer.email AS Expr5, tbl_custmer.tin_no AS Expr6, tbl_state.state_name, tbl_custmer.* FROM            tbl_custmer INNER JOIN                         tbl_city ON tbl_custmer.city_id = tbl_city.city_id INNER JOIN                         tbl_state ON tbl_custmer.state_id = tbl_state.state_id where cust_id='" + bl.cust_id + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public DataSet select_cunidetail(BAL1 bl)
    {

        adr = new SqlDataAdapter("SELECT        tbl_city.city_name, tbl_custmer.email AS Expr5, tbl_custmer.tin_no AS Expr6, tbl_state.state_name, tbl_custmer.* FROM            tbl_custmer INNER JOIN                         tbl_city ON tbl_custmer.city_id = tbl_city.city_id INNER JOIN                         tbl_state ON tbl_custmer.state_id = tbl_state.state_id where company_name='" + bl.ship + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public DataSet select_inv_detail(BAL1 bl)
    {

        adr = new SqlDataAdapter("select * from tbl_invoice where invoice_id='" + bl.inv_no + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }

    public DataSet select_bank(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_bank where bnk_id='1' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public DataSet select_inv_item_detail(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_inv_item where invoice_id='" + bl.inv_no + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public DataSet select_inv_extra_detail(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_inv_extra where invoice_id='" + bl.inv_no + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public double slelct_vch_id_inv(BAL1 bl)
    {
        cmd = new SqlCommand("select vch_id from tbl_invoice where invoice_id='" + bl.inv_no + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public DataSet select_inv_trm_vch(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where vch_id='" + bl.vch_id + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public void update_qty_stock(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_item_master set qty='" + bl.qty + "' where item_name='" + bl.item_name + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public double slelct_brocker_cust(BAL1 bl)
    {
        cmd = new SqlCommand("select brock_id from tbl_brocker where brock_nm='" + bl.brock_name + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public void inset_cust_brok(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_cust_brock (brock_id,brock_name,status,applicabale_date,end_date,cust_id,per,company_nm) values('" + bl.brock_id + "','" + bl.brock_name + "','Active','" + bl.date + "','','" + bl.cust_id + "','" + bl.per + "','" + bl.comp_nm + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public DataSet select_per_cust_brk(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_cust_brock ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_cash_ladger(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_ledger where grp_id=27 or  grp_id=28", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public double slelct_ld_for_payment(BAL1 bl)
    {
        cmd = new SqlCommand("select grp_id from tbl_ledger where ld_id='" + bl.ld_id + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public DataSet selct_amt_for_payment_recv(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_invoice where company_nm='" + bl.comp_nm + "' and debit_amount > 0 ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_sales_vaoucher(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where ac_ty_id=20 ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_sales_tax(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_statutary where under_cls!='Dutys And Taxes'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_puch_vaoucher(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where ac_ty_id=13 ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public void update_inv(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_invoice set company_nm='" + bl.comp_nm + "',company_id='" + bl.cust_id + "',dc_no='" + bl.dc_no + "',dc_date='" + bl.dc_date + "',invoice_date='" + bl.inv_date + "',lr_no='" + bl.l_r_no + "',lr_date='" + bl.l_r_date + "',po_no='" + bl.p_o_no + "',po_date='" + bl.p_o_date + "',transport_name='" + bl.trp_naem + "',trp_id='" + bl.trp_id + "',brocker_name='" + bl.brock_name + "',brocker_id='" + bl.brocker_id + "',tax_4='" + bl.tax_4 + "',vat_1='" + bl.vat_1 + "',tax_12='" + bl.tax_12 + "',vat_2='" + bl.vat_2 + "',cst_2='" + bl.cst_2 + "',total_amount='" + bl.net_amount + "',total_qty='" + bl.total_qty + "',total='" + bl.total + "',disc='" + bl.disc + "',debit_amount='" + bl.debit_amt + "'  where invoice_no='" + bl.inv_no + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void delete_inv_item(BAL1 bl)
    {

        cmd = new SqlCommand("delete from tbl_inv_item where invoice_id='" + bl.inv_no + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void delete_inv_extra(BAL1 bl)
    {

        cmd = new SqlCommand("delete from tbl_inv_extra where invoice_id='" + bl.inv_no + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public DataSet select_dc_to_inv(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_dc where dc_no='" + bl.dc_no + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_dc_item_detail(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_dc_item where dc_no_id='" + bl.dc_no + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public DataSet select_dc_extra_detail(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_dc_extra where dc_no='" + bl.dc_no + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;
    }
    public DataSet editcomapnymaster(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_company_master  where id='" + bl.id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }

    public void update_comapnymaster(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_company_master set company_name='" + bl.comp_nm + "',add_1='" + bl.address1 + "',add_2='" + bl.address2 + "',state_id='" + bl.state_id + "',city_id='" + bl.city_id + "',phone='" + bl.phone + "',starting_form='" + bl.openinig_date + "',logo='" + bl.logo + "',vat='" + bl.vat + "',vat_date='" + bl.vatdate + "',vat_crt='" + bl.vatcrt + "',cst='" + bl.cst + "',cst_date='" + bl.cst_date + "',cst_crt='" + bl.cts + "',exse='" + bl.exse + "',exse_date='" + bl.exse_date + "',exse_crt='" + bl.exse_crt + "',st='" + bl.st + "',st_date='" + bl.stdate + "',st_crt='" + bl.st_crt + "',tds='" + bl.tds + "',tds_date='" + bl.tds_date + "',tds_crt='" + bl.tds_crt + "',cin='" + bl.cin + "',cin_crt='" + bl.cincrt + "',pan='" + bl.pan + "',pan_crt='" + bl.pancrt + "',website='" + bl.website + "',email='" + bl.email + "',mobileno='" + bl.mobile + "', pin_code='" + bl.pin_code + "',vat_tax='" + bl.vat_1 + "',add_vat='" + bl.tax_4 + "',exse_tax='" + bl.ecc_p + "',range='" + bl.range + "',division='" + bl.division + "',commisionerate='" + bl.comissinrt + "',n_dt_notificatio_under='"+bl.notfy+"' where id='" + bl.id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public DataSet selectcomapnymaster(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_company_master ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selct_vat_cmp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_company_master ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet selct_vat_itm_grp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_item_grp where  item_grp_id='" + bl.item_grp_id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public double slelct_itm_exc(BAL1 bl)
    {
        cmd = new SqlCommand("select basic_duty from tbl_item_master where item_name='" + bl.item_name + "'", con);
        double i = 0;
        con.Open();
        try
        {
            i = Convert.ToDouble(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public void inset_statutory(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_statutary (satutary_nm,app_date,under_cls,vat,add_vat) values ('" + bl.vat_1 + "','" + bl.apppli_dt + "','" + bl.stu_name + "','" + bl.vate + "','" + bl.vat_2 + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public void update_statutory(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_statutary set app_date='" + bl.apppli_dt + "',under_cls='" + bl.stu_name + "',vat='" + bl.vate + "',add_vat='" + bl.vat_2 + "' where stu_id='"+bl.id+"'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public DataSet selct_stu_grp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_statutary where  under_cls='" + bl.stu_name + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public DataSet select_stu_update(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_statutary where stu_id='" + bl.id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public int slelct_stu_id(BAL1 bl)
    {
        cmd = new SqlCommand("select statutary_id(max) from tbl_statutary", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public void inset_statutory_appi(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_statutary (satutary_nm,app_date,under_cls,vat,add_vat) values ('" + bl.vat_1 + "','" + bl.apppli_dt + "','" + bl.stu_name + "','" + bl.vate + "','" + bl.vat_2 + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }
    public string slelct_exc()
    {
        cmd = new SqlCommand("select vat from tbl_statutary where under_cls='Dutys And Taxes'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;
    }
    public DataSet select_itm_cmp(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_custmer where cust_id='" + bl.id + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
  
    //sonia

    public void update_compnay(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_custmer set company_name='" + bl.comp_nm + "',nick_nm='" + bl.nick_nm + "',contact_per_name='" + bl.cont_per_nm + "',grp_id='" + bl.grp_id + "',address_1='" + bl.address1 + "',address_2='" + bl.address2 + "',contact_no='" + bl.contact_no + "',state_id='" + bl.state_id + "',city_id='" + bl.city_id + "',vat='" + bl.vat + "',cst='" + bl.cst + "',cst_date='" + bl.cst_date + "',cst_attch='" + bl.cst_attch + "',pin='" + bl.pin_code + "',tin_date='" + bl.vatdate + "',tin_attch='"+bl.vat_attch+"' where cust_id='" + bl.cust_id + "' ", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public void delete_comapny(BAL1 bl)
    {

        cmd = new SqlCommand("delete from tbl_custmer where cust_id='" + bl.cust_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public void delete_item_master(BAL1 bl)
    {

        cmd = new SqlCommand("delete from tbl_item_master where item_id='" + bl.item_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public void insert_tarif(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_tarif_no (exc_comodity,tarff_no) values('" + bl.comoditiy + "','" + bl.tarifno + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public DataSet select_tarif(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_tarif_no", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }


    public DataSet edit_tarif(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_tarif_no where trf_id='" + bl.trf_id + "'  ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }

    public void delete_tarif_no(BAL1 bl)
    {

        cmd = new SqlCommand("delete from tbl_tarif_no where trf_id='" + bl.trf_id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public void update_tarif(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_tarif_no set exc_comodity='" + bl.comoditiy + "',tarff_no='" + bl.tarifno + "' where trf_id='" + bl.trf_id + "' ", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
    }
    public DataSet secectcamodity(BAL1 bl)
    {
        adr = new SqlDataAdapter("SELECT exc_comodity FROM tbl_tarif_no where exc_comodity='" + bl.comoditiy + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {

        }
        return ds;

    }
    public DataSet secectcompnyname(BAL1 bl)
    {
        adr = new SqlDataAdapter("SELECT company_name FROM tbl_custmer where company_name='" + bl.comp_nm + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {

        }
        return ds;

    }



    public DataSet secectterifno(BAL1 bl)
    {
        adr = new SqlDataAdapter("SELECT tarff_no FROM tbl_tarif_no where tarff_no='" + bl.tarif_no + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {

        }
        return ds;

    }

    public DataSet secectsubgrp(BAL1 bl)
    {
        adr = new SqlDataAdapter("SELECT item_grp_nm FROM tbl_item_grp where item_grp_nm='" + bl.item_grp_nm + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {

        }
        return ds;

    }
    public void insert_expence(BAL1 bl)
    {


        cmd = new SqlCommand("Insert into tbl_expence (ex_name) values('" + bl.e_name + "')", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }

    public DataSet secectexpencname(BAL1 bl)
    {
        adr = new SqlDataAdapter("SELECT ex_name FROM tbl_expence where ex_name='" + bl.e_name + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {

        }
        return ds;

    }

    public void update_expence(BAL1 bl)
    {

        cmd = new SqlCommand("update tbl_expence set ex_name='" + bl.e_name + "' where id='" + bl.id + "' ", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
    }


    public DataSet select_expence(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_expence", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }


    public DataSet edit_expence(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_expence where id='" + bl.id + "'  ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }

    public void delete_expence(BAL1 bl)
    {

        cmd = new SqlCommand("delete from tbl_expence where id='" + bl.id + "'", con);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }



    }



    public DataSet secectitmnam(BAL1 bl)
    {
        adr = new SqlDataAdapter("SELECT item_name FROM tbl_item_master where item_name='" + bl.item_name + "' ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {

        }
        return ds;

    }
    public string get_terif_no(BAL1 bl)
    {

        cmd = new SqlCommand("select tarff_no  from tbl_tarif_no where exc_comodity='" + bl.ex_comodity + "'", con);
        string i = "";
        con.Open();
        try
        {
            i = Convert.ToString(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }
    public DataSet selectcity1(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from Tbl_city ", con);
        DataSet ds = new DataSet();
        try
        {
            adr.Fill(ds);
        }
        catch (Exception)
        {
        }
        return ds;


    }
    public int get_count_vch(BAL1 bl)
    {

        cmd = new SqlCommand("select count(vch_nm)  from tbl_invoice where vch_nm='" + bl.value + "'", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }
    public int get_max_inv(BAL1 bl)
    {

        cmd = new SqlCommand("select max(invoice_id)  from tbl_invoice", con);
        int i = 0;
        con.Open();
        try
        {
            i = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {

        }
        finally
        {
            con.Close();
        }
        return i;


    }

}