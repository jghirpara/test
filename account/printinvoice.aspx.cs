using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Text.RegularExpressions;

public partial class printinvoice : System.Web.UI.Page
{

    BAL1 bl = new BAL1();
    DAL1 dl = new DAL1();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string address = "http://localhost:10897/account/print.aspx?inv=" + Request.QueryString["inv"].ToString() + "";

                if (Request.QueryString["pr"].ToString() == "All")
                {
                  

                    using (WebClient wc = new WebClient())
                    {
                        string content = wc.DownloadString(address);

                        string input = content;
                        string pattern = "ORIGINAL\r\n                        FOR BUYER";
                        string replace = "ORIGINAL\r\n                        FOR BUYER";
                        string result = Regex.Replace(input, pattern, replace);
                        content = result;

                        Label1.Text = content;
                        string input1 = content;
                        string pattern1 = "ORIGINAL\r\n                        FOR BUYER";
                        string replace1 = "DUPLICATE FOR TRANSPORTER";
                        string result1 = Regex.Replace(input1, pattern1, replace1);
                        content = result1;
                        Label2.Text = content;

                        string input2 = content;
                        string pattern2 = "DUPLICATE FOR TRANSPORTER";
                        string replace2 = "TRIPLICATE FOR ASSESSEE";
                        string result2 = Regex.Replace(input2, pattern2, replace2);
                        content = result2;
                        Label3.Text = content;

                        //string input3 = content;
                        //string pattern3 = "TRIPLICATE FOR ASSESSEE";
                        //string replace3 = "NOT FOR CENVAT";
                        //string result3 = Regex.Replace(input3, pattern3, replace3);
                        //content = result3;



                        //Label4.Text = content;
                    }
                }
                else if (Request.QueryString["pr"].ToString() == "ORIGINAL")
                {
                   // string address = "http://192.168.1.51:98/print.aspx?inv=" + Request.QueryString["inv"].ToString() + "";

                    using (WebClient wc = new WebClient())
                    {
                        string content = wc.DownloadString(address);

                        string input = content;
                        string pattern = "ORIGINAL\r\n                        FOR BUYER";
                        string replace = "ORIGINAL\r\n                        FOR BUYER";
                        string result = Regex.Replace(input, pattern, replace);
                        content = result;

                        Label1.Text = content;
                    }

                }
                else if (Request.QueryString["pr"].ToString() == "DUPLICATE")
                {
                 //   string address = "http://localhost:10897/account/print.aspx?inv=" + Request.QueryString["inv"].ToString() + "";

                    using (WebClient wc = new WebClient())
                    {
                        string content = wc.DownloadString(address);

                        string input = content;
                        string pattern = "ORIGINAL\r\n                        FOR BUYER";
                        string replace = "DUPLICATE FOR TRANSPORTER";
                        string result = Regex.Replace(input, pattern, replace);
                        content = result;

                        Label1.Text = content;
                    }
                }
                else if (Request.QueryString["pr"].ToString() == "TRIPLICATE")
                {
                  //  string address = "http://localhost:10897/account/print.aspx?inv=" + Request.QueryString["inv"].ToString() + "";

                    using (WebClient wc = new WebClient())
                    {
                        string content = wc.DownloadString(address);

                        string input = content;
                        string pattern = "ORIGINAL\r\n                        FOR BUYER";
                        string replace = "TRIPLICATE FOR ASSESSEE";
                        string result = Regex.Replace(input, pattern, replace);
                        content = result;

                        Label1.Text = content;
                    }
                }
                else
                {
                   // string address = "http://localhost:10897/account/print.aspx?inv=" + Request.QueryString["inv"].ToString() + "";

                    using (WebClient wc = new WebClient())
                    {
                        string content = wc.DownloadString(address);

                        string input = content;
                        string pattern = "ORIGINAL\r\n                        FOR BUYER";
                        string replace = "NOT\r\n                            FOR CENVAT";
                        string result = Regex.Replace(input, pattern, replace);
                        content = result;

                        Label1.Text = content;
                    }

                }




            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Print", "javascript:window.print();", true);
        }
        catch
        {
        }
    }
}