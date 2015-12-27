using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class editcomapanydetail : System.Web.UI.Page
{


    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    // static string imgpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillstate();
        if (!IsPostBack)
        {
            
            if (Request.QueryString["id"] != "" && Request.QueryString["id"] != null)
            {

                bl.id = Convert.ToInt32(Request.QueryString["id"].ToString());
                DataSet ds = new DataSet();
                ds = dl.editcomapnymaster(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    txt_cmp.Text = ds.Tables[0].Rows[0]["company_name"].ToString();
                    txt_add1.Text = ds.Tables[0].Rows[0]["add_1"].ToString();
                    txt_add2.Text = ds.Tables[0].Rows[0]["add_2"].ToString();
                    
                    dwd_st.Text = ds.Tables[0].Rows[0]["state_id"].ToString();
                   
                    bl.state_id = Convert.ToInt32(dwd_st.SelectedValue.ToString());
                    DataSet ds_state = new DataSet();
                    ds_state = dl.selectcity(bl);
                    dwd_ct.DataSource = ds_state;
                    dwd_ct.DataTextField = "city_name";
                    dwd_ct.DataValueField = "city_id";
                    dwd_ct.DataBind();

                    dwd_ct.Text = ds.Tables[0].Rows[0]["city_id"].ToString();
                    //dwd_exc.Text = ds.Tables[0].Rows[0]["exse_tax"].ToString();
                    //   dwd_vat.Text = ds.Tables[0].Rows[0]["vat_tax"].ToString();
                    //DropDownList1.Text = ds.Tables[0].Rows[0]["add_vat"].ToString();



                    txt_phn.Text = ds.Tables[0].Rows[0]["phone"].ToString();
                    txt_website.Text = ds.Tables[0].Rows[0]["website"].ToString();
                    txt_email.Text = ds.Tables[0].Rows[0]["email"].ToString();
                    txt_mobile.Text = ds.Tables[0].Rows[0]["mobileno"].ToString();
                    txt_pincd.Text = ds.Tables[0].Rows[0]["pin_code"].ToString();
                    txt_form.Text = ds.Tables[0].Rows[0]["starting_form"].ToString();
                    //   = ds.Tables[0].Rows[0]["logo"].ToString();
                    txt_vat.Text = ds.Tables[0].Rows[0]["vat"].ToString();
                    txt_dt.Text = ds.Tables[0].Rows[0]["vat_date"].ToString();
                    //  imgpath = ds.Tables[0].Rows[0]["vat_crt"].ToString();
                    txt_cst.Text = ds.Tables[0].Rows[0]["cst"].ToString();
                    txt_cstdt.Text = ds.Tables[0].Rows[0]["cst_date"].ToString();
                    //   imgpath = ds.Tables[0].Rows[0]["cst_crt"].ToString();
                    txt_exse.Text = ds.Tables[0].Rows[0]["exse"].ToString();
                    txt_exedt.Text = ds.Tables[0].Rows[0]["exse_date"].ToString();

                    //  imgpath = ds.Tables[0].Rows[0]["exse_crt"].ToString();

                    txt_st.Text = ds.Tables[0].Rows[0]["st"].ToString();

                    txt_stdt.Text = ds.Tables[0].Rows[0]["st_date"].ToString();
                    txt_comis_rt.Text = ds.Tables[0].Rows[0]["commisionerate"].ToString();
                    //  imgpath = ds.Tables[0].Rows[0]["st_crt"].ToString();

                    txt_tds.Text = ds.Tables[0].Rows[0]["tds"].ToString();

                    txt_tdsdt.Text = ds.Tables[0].Rows[0]["tds_date"].ToString();
                    // imgpath = ds.Tables[0].Rows[0]["tds_crt"].ToString();

                    txt_cin.Text = ds.Tables[0].Rows[0]["cin"].ToString();

                    // imgpath = ds.Tables[0].Rows[0]["cin_crt"].ToString();
                    txt_pan.Text = ds.Tables[0].Rows[0]["pan"].ToString();
                    txt_range.Text = ds.Tables[0].Rows[0]["range"].ToString();
                    txt_division.Text = ds.Tables[0].Rows[0]["division"].ToString();
                    //   imgpath = ds.Tables[0].Rows[0]["pan_crt"].ToString();
                    dd_logo.NavigateUrl = ds.Tables[0].Rows[0]["logo"].ToString();
                    dd_vat_crt.NavigateUrl = ds.Tables[0].Rows[0]["vat_crt"].ToString();
                    dd_cst_crt.NavigateUrl = ds.Tables[0].Rows[0]["cst_crt"].ToString();
                    dd_exc_crt.NavigateUrl = ds.Tables[0].Rows[0]["exse_crt"].ToString();
                    dd_st_crt.NavigateUrl = ds.Tables[0].Rows[0]["st_crt"].ToString();
                    dd_tds_crt.NavigateUrl = ds.Tables[0].Rows[0]["tds_crt"].ToString();
                    dd_cin_crt.NavigateUrl = ds.Tables[0].Rows[0]["cin_crt"].ToString();
                    dd_pan_crt.NavigateUrl = ds.Tables[0].Rows[0]["pan_crt"].ToString();
                    txt_not_under.Text = ds.Tables[0].Rows[0]["n_dt_notificatio_under"].ToString();
                }


            }
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



    protected void dwd_ct_SelectedIndexChanged(object sender, EventArgs e)
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


        }
        catch (Exception ex)
        {
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            bl.id = Convert.ToInt32(Request.QueryString["id"].ToString());
            bl.comp_nm = txt_cmp.Text;
            bl.address1 = txt_add1.Text;
            bl.address2 = txt_add2.Text;
            bl.state_id = Convert.ToInt32(dwd_st.SelectedValue.ToString());

            bl.city_id = Convert.ToInt32(dwd_ct.SelectedValue.ToString());
            bl.range = txt_range.Text;
            bl.division = txt_division.Text;
            bl.phone = txt_phn.Text;
           // bl.vat_1 = dwd_vat.Text;
            //bl.tax_4 = DropDownList1.Text;
           // bl.ecc_p = dwd_exc.Text;
            bl.openinig_date = txt_form.Text;

            if (FileUpload7.HasFile)
            {


                string filename = Path.GetFileName(FileUpload7.FileName);
                FileUpload7.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text+"."+ Path.GetExtension(FileUpload7.FileName));
                filename = "img/" + txt_cmp.Text + "logo." + Path.GetExtension(FileUpload7.FileName);
                bl.logo = filename;



            }
            else
            {
                bl.logo = dd_logo.NavigateUrl;
            }
            bl.vat = txt_vat.Text;
            bl.vatdate = txt_dt.Text;
            if (FileUpload1.HasFile)
            {


                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "vat." + Path.GetExtension(FileUpload1.FileName));
                filename = "img/" + txt_cmp.Text + "vat." + Path.GetExtension(FileUpload1.FileName);
                bl.vatcrt = filename;



            }
            else
            {
                bl.vatcrt = dd_vat_crt.NavigateUrl;

            }
            bl.cst = txt_cst.Text;
            bl.cst_date = txt_cstdt.Text;
            if (FileUpload2.HasFile)
            {


                string filename = Path.GetFileName(FileUpload2.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "cst." + Path.GetExtension(FileUpload2.FileName));
                filename = "img/" + txt_cmp.Text + "cst." + Path.GetExtension(FileUpload2.FileName);
                bl.cts = filename;



            }
            else
            {
                bl.cts = dd_cst_crt.NavigateUrl;

            }
            bl.exse = txt_exse.Text;
            bl.exse_date = txt_exedt.Text;

            if (FileUpload3.HasFile)
            {


                string filename = Path.GetFileName(FileUpload3.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "ecc." + Path.GetExtension(FileUpload3.FileName));
                filename = "img/" + txt_cmp.Text + "ecc." + Path.GetExtension(FileUpload3.FileName);
                bl.exse_crt = filename;



            }
            else
            {
                bl.exse_crt = dd_exc_crt.NavigateUrl;
            }
            bl.st = txt_st.Text;
            bl.stdate = txt_stdt.Text;

            if (FileUpload4.HasFile)
            {


                string filename = Path.GetFileName(FileUpload4.FileName);
                FileUpload4.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "st." + Path.GetExtension(FileUpload4.FileName));
                filename = "img/" + txt_cmp.Text + "st." + Path.GetExtension(FileUpload4.FileName);
                bl.st_crt = filename;



            }
            else
            {
                bl.st_crt = dd_st_crt.NavigateUrl;
            }

            bl.tds = txt_tds.Text;
            bl.tds_date = txt_tdsdt.Text;

            if (FileUpload8.HasFile)
            {


                string filename = Path.GetFileName(FileUpload8.FileName);
                FileUpload7.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "." + Path.GetExtension(FileUpload8.FileName));
                filename = "img/" + txt_cmp.Text + "tds." + Path.GetExtension(FileUpload8.FileName);
                bl.tds_crt = filename;



            }
            else
            {
                bl.tds_crt = dd_tds_crt.NavigateUrl;
            }
            bl.cin = txt_cin.Text;

            if (FileUpload5.HasFile)
            {


                string filename = Path.GetFileName(FileUpload5.FileName);
                FileUpload5.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "cin." + Path.GetExtension(FileUpload5.FileName));
                filename = "img/" + txt_cmp.Text + "cin." + Path.GetExtension(FileUpload5.FileName);
                bl.cincrt = filename;



            }
            else
            {
                bl.cincrt = dd_cin_crt.NavigateUrl;
            }
            bl.pan = txt_pan.Text;

            if (FileUpload6.HasFile)
            {


                string filename = Path.GetFileName(FileUpload6.FileName);
                FileUpload6.SaveAs(Server.MapPath("~/img/") + txt_cmp.Text + "pan." + Path.GetExtension(FileUpload6.FileName));
                filename = "img/" + txt_cmp.Text + "pan." + Path.GetExtension(FileUpload6.FileName);
                bl.pancrt = filename;



            }
            else
            {
                bl.pancrt = dd_pan_crt.NavigateUrl;
            }
            bl.website = txt_website.Text;
            bl.email = txt_email.Text;
            bl.mobile = txt_mobile.Text;
            bl.pin_code = txt_pincd.Text;
            bl.comissinrt = txt_comis_rt.Text;
            bl.notfy = txt_not_under.Text;
            dl.update_comapnymaster(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Comapany Master update successfully'); window.location='edit_cmp.aspx';", true);


        }
        catch
        {
        }

    }
}