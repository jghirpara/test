using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class tarrif : System.Web.UI.Page
{

    DAL1 dl = new DAL1();
    BAL1 bl = new BAL1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != "" && Request.QueryString["id"] != null)
            {
                bl.trf_id = Request.QueryString["id"].ToString();
                DataSet ds = new DataSet();
                ds = dl.edit_tarif(bl);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txt_comodity.Text = ds.Tables[0].Rows[0]["exc_comodity"].ToString();
                    txt_tarifno.Text = ds.Tables[0].Rows[0]["tarff_no"].ToString();
                    Button1.Visible = false;
                    Button2.Visible = true;
                }

            }
            grid();
            txt_comodity.Focus();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            bl.trf_id = Request.QueryString["id"].ToString();
            bl.comoditiy = txt_comodity.Text;
            bl.tarifno = txt_tarifno.Text;
            dl.update_tarif(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Update Tarif Number successfully'); window.location='tarrif.aspx';", true);
            grid();
        }
        catch (Exception)
        {
            throw;

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            {
                bl.comoditiy = txt_comodity.Text;
                bl.tarifno = txt_tarifno.Text;
                dl.insert_tarif(bl);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Tarif Number Created successfully'); window.location='tarrif.aspx';", true);
                grid();
            }
        }
        catch (Exception)
        {
            throw;

        }

    }

    public void grid()
    {
        try
        {


            GridView1.DataSource = dl.select_tarif(bl);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            bl.trf_id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            dl.delete_tarif_no(bl);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Delete successfully'); window.location='tarrif.aspx';", true);
            grid();
        }
        catch (Exception ex)
        {
        }


    }
    protected void txt_comodity_TextChanged(object sender, EventArgs e)
    {
        bl.comoditiy = txt_comodity.Text;
        DataSet ds = new DataSet();
        ds = dl.secectcamodity(bl);
        if (ds.Tables[0].Rows.Count > 0)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('The Comoditiy Already Exists'); window.location='tarrif.aspx';", true);
        }
        else
        {
            txt_tarifno.Focus();
        }


    }
    protected void txt_tarifno_TextChanged(object sender, EventArgs e)
    {
        bl.tarif_no  = txt_tarifno .Text;
        DataSet ds = new DataSet();
        ds = dl.secectterifno(bl);
        if (ds.Tables[0].Rows.Count > 0)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('The Tarif No Already Exists');", true);
            txt_tarifno.Focus();
            txt_tarifno.Text = string.Empty;
        }
        else
        {
            Button1.Focus();
        }
        

    }
}