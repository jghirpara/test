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
    DataSet ds;
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
        adr = new SqlDataAdapter("select * from tbl_group ", con);
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


        cmd = new SqlCommand("Insert into tbl_item_grp (tbl_item_grp) values('" + bl.item_grp_nm + "')", con);

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
    public DataSet selectvavchertypegrid(BAL1 bl)
    {
        adr = new SqlDataAdapter("select * from tbl_vavcher_type where vch_id > '23' ", con);
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


        cmd = new SqlCommand("Insert into tbl_vavcher_type (vch_nm,ac_ty_id,term_condition,ino_no_type,ino_no_partan) values('" + bl.vch_nm + "','"+bl.vch_id+"','"+bl.term_condition+"','"+bl.inv_no+"','"+bl.ino_no_partan+"')", con);

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
}