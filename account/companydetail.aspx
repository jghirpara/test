<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="companydetail.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <div id="dvAccordian" style="width: ">
        <h3 align="center">
            Company Detaill</h3>
        <div>
            <center>
                <table width="75%">
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Compnay Name
                        </td>
                        <td>
                            <asp:TextBox ID="txt_nik" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Address 1
                        </td>
                        <td>
                            <asp:TextBox ID="txt_add1" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Address 2
                        </td>
                        <td>
                            <asp:TextBox ID="txt_add2" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Phone No.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox13_ph" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            State
                        </td>
                        <td>
                            <asp:DropDownList ID="dwd_st" Height="25px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dwd_st_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            City
                        </td>
                        <td>
                            <asp:DropDownList ID="dwd_ct" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Pin Code
                        </td>
                        <td>
                            <asp:TextBox ID="txt_pin" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Starting Date
                        </td>
                        <td>
                            <asp:TextBox ID="txt_dt" runat="server" Height="15px"></asp:TextBox>
                            <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="txt_dt" Format="dd/MM/yyyy">
                            </cc1:CalendarExtender>
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                    <tr style="text-align: right">
                       
                        <td style="font-weight: bold">
                            VAT
                        </td>
                        <td>
                            <asp:TextBox ID="txt_vat" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            CST
                        </td>
                        <td>
                            <asp:TextBox ID="txt_cst" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            ST
                        </td>
                        <td>
                            <asp:TextBox ID="txt_st" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            ECC
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5_ecc" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            TDS
                        </td>
                        <td>
                            <asp:TextBox ID="txt_tds" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            PAN
                        </td>
                        <td>
                            <asp:TextBox ID="txt_pan" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Creadit Limit
                        </td>
                        <td>
                            <asp:TextBox ID="txt_crd_limit" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Bsr
                        </td>
                        <td>
                            <asp:TextBox ID="txt_bsr_cmp" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </div>
</asp:Content>
