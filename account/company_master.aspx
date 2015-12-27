<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="company_master.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>
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
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <div>
        <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span> </li>
            <li><a href="#">Customer</a> </li>
        </ul>
    </div>
    </h3>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" Visible="true" runat="server">
                    <table width="100%" border="1">
                        <tr>
                            <td style="width: 50%" valign="top">
                                <table style="width: 100%;">
                                    <caption style="background-color: lightgray;">
                                        <h3>
                                            Basic Detail</h3>
                                        <tr style="text-align: right;">
                                            <td style="font-weight: bold; width: 20%;">
                                                Name
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="TextBox1" runat="server" Width="95%" OnTextChanged="TextBox1_TextChanged"
                                                    AutoPostBack="true"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; width: 20%;">
                                                Group
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:DropDownList ID="dwd_grp" runat="server" Width="95%">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold; width: 20%">
                                                Nik Name
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="txt_nik" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; width: 20%">
                                                Contact Person
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="txt_con_nm" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold; width: 20%">
                                                Address 1
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="txt_add1" runat="server" TextMode="MultiLine" Width="92%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; width: 20%">
                                                Address 2
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="txt_add2" runat="server" TextMode="MultiLine" Width="92%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold; width: 20%">
                                                State
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:DropDownList ID="dwd_st" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dwd_st_SelectedIndexChanged"
                                                    Width="95%">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="font-weight: bold; width: 20%">
                                                City
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:DropDownList ID="dwd_ct" runat="server" Width="95%">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold; width: 20%">
                                                Pin Code
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="txt_pin" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; width: 20%">
                                                Phone No.
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="TextBox13_ph" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </caption>
                                </table>
                            </td>
                            <td valign="top" style="width: 50%">
                                <%-- <center>
                            <h3>
                                Statutory Detail</h3>
                        </center>--%>
                                <table style="width: 100%;">
                                    <caption style="background-color: lightgray;">
                                        <h3>
                                            Statutory Detail</h3>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold; width: 20%;">
                                                VAT
                                            </td>
                                            <td style="width: 15%;">
                                                <asp:TextBox ID="txt_vat" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold">
                                                VAT Date
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_vat_dt" runat="server" Width="95%"></asp:TextBox>
                                                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_vat_dt"
                                                    Format="dd/MM/yyyy">
                                                </cc1:CalendarExtender>
                                            </td>
                                            <td style="font-weight: bold;">
                                                VAT Crft
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="vat_crft" runat="server" Width="95%" />
                                                 <asp:HyperLink ID="hp_vat" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold; width: 20%">
                                                CST
                                            </td>
                                            <td style="width: 30%;">
                                                <asp:TextBox ID="txt_cst" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold">
                                                CST Date
                                            </td>
                                            <td>
                                                <asp:TextBox ID="cst_date" runat="server" Width="95%"></asp:TextBox>
                                                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="cst_date"
                                                    Format="dd/MM/yyyy">
                                                </cc1:CalendarExtender>
                                            </td>
                                            <td style="font-weight: bold;">
                                                CST Crft
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="cst_crft" runat="server" Width="95%" />
                                                 <asp:HyperLink ID="hp_cst" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold">
                                                ST
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_st" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold">
                                                ECC
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox5_ecc" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold">
                                                PAN
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_pan" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold">
                                                Creadit Limit
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_crd_limit" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold">
                                                TDS
                                            </td>
                                            <td class="style9">
                                                <asp:TextBox ID="txt_tds" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </caption>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; width: 50%;">
                                <%-- <h3>
                            Bank Detail</h3>--%>
                                <table style="width: 100%;">
                                    <caption style="background-color: lightgray;">
                                        <h3>
                                            Bank Detail</h3>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold; text-align: right; width: 20%">
                                                Bank Name
                                            </td>
                                            <td style="width: 30%">
                                                <asp:TextBox ID="txt_b_nm" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; text-align: right; width: 20%">
                                                Ac No
                                            </td>
                                            <td style="width: 30%">
                                                <asp:TextBox ID="txt_acno" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold; text-align: right; width: 20%">
                                                Branch
                                            </td>
                                            <td style="width: 30%">
                                                <asp:TextBox ID="txt_bch" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; text-align: right; width: 20%">
                                                Ifsc
                                            </td>
                                            <td style="width: 30%">
                                                <asp:TextBox ID="txt_i" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right; width: 100%;">
                                            <td style="font-weight: bold; text-align: right; width: 20%">
                                                Bsr
                                            </td>
                                            <td style="width: 30%">
                                                <asp:TextBox ID="txt_bsr_cmp" runat="server" Width="95%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </caption>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <center>
            <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" Visible="false" Text="Update" OnClick="Button4_Click" /></center>
        <asp:Panel ID="Panel2" Visible="false" runat="server">
            <table width="75%">
                <tr style="text-align: right">
                    <td style="font-weight: bold">
                        A/c No
                    </td>
                    <td>
                        <asp:TextBox ID="txt_ac_no" runat="server" Height="15px"></asp:TextBox>
                    </td>
                    <td style="font-weight: bold">
                        Nick Name
                    </td>
                    <td>
                        <asp:TextBox ID="txt_nik_bnk" runat="server" Height="15px"></asp:TextBox>
                    </td>
                    <td style="font-weight: bold">
                        Branch
                    </td>
                    <td>
                        <asp:TextBox ID="txt_branch" runat="server" Height="15px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="text-align: right">
                    <td style="font-weight: bold">
                        Address 1
                    </td>
                    <td>
                        <asp:TextBox ID="txt_ad1" runat="server" Height="15px"></asp:TextBox>
                    </td>
                    <td style="font-weight: bold">
                        Address 2
                    </td>
                    <td>
                        <asp:TextBox ID="txt_ad2" runat="server" Height="15px"></asp:TextBox>
                    </td>
                    <td style="font-weight: bold">
                        Ifsc
                    </td>
                    <td>
                        <asp:TextBox ID="txt_ifcs" runat="server" Height="15px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="text-align: right">
                    <td style="font-weight: bold">
                        Bsr
                    </td>
                    <td>
                        <asp:TextBox ID="txt_bsr" runat="server" Height="15px"></asp:TextBox>
                    </td>
                    <td style="font-weight: bold">
                        opening Balance
                    </td>
                    <td>
                        <asp:TextBox ID="txt_balance" runat="server" Height="15px"></asp:TextBox>
                    </td>
                    <td style="font-weight: bold">
                        Opening Date
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Height="15px"></asp:TextBox>
                        <%--  <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox9" DaysModeTitleFormat="MM-yyyy"
                                    Format="dd-MM-yyyy" runat="server">
                                </asp:CalendarExtender>--%>
                        <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="TextBox9" Format="dd/MM/yyyy">
                        </cc1:CalendarExtender>
                    </td>
                </tr>
                <tr style="text-align: right">
                    <td align="center" colspan="6">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" Visible="false" runat="server">
            <center>
                <table width="">
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Remark
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2_remark" Width="" runat="server" Height="150%" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td align="center">
                            <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
            </center>
        </asp:Panel>
    </div>
    <br />
    </div>
</asp:Content>
