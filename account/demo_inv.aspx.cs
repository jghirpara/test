using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
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
        }
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
}