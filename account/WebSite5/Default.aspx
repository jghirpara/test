<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("#dvAccordian").accordion();
        });
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span> </li>
            <li><a href="#">Customer</a> </li>
        </ul>
    </div>
    <div id="dvAccordian" style="width: ">
        <h3>
            Form</h3>
        <div>
            <center>
                <table width="75%">
                    <tr style="text-align: right">
                        <td style="font-weight: bold;">
                            Compnay Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Contact Person
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Phone No.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Address 1
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Address 2
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Pin Code
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            State
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            City
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            Date
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Bank Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Branch
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Ifsc
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </center>
          
           <%-- <asp:Button ID="Button1" onclick="openNextAccordionPanel(); runat="server" Text="Submit" />--%>
           
        </div>
          
        <h3>
            Table</h3>
        <div>
            <asp:GridView ID="GridView1" class="table table-striped" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="rt_invoice_no" HeaderText="Invoice NO" />
                    <asp:BoundField DataField="company_name" HeaderText="Company Name" />
                    <asp:BoundField DataField="date" HeaderText="Date" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
