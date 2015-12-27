<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="editcomapanydetail.aspx.cs" Inherits="editcomapanydetail" %>

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
    <style type="text/css">
        .style2
        {
            width: 8%;
        }
        .style3
        {
            width: 0.5%;
        }
        .style4
        {
            width: 11%;
        }
        .style5
        {
            width: 0.5%;
        }
        .style6
        {
            width: 0.5%;
        }
        .style7
        {
            width: 11%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <%--<asp:LinkButton ID="LinkButton5" runat="server"></asp:LinkButton>--%>
    <h3 align="center">
        Company Detaill</h3>
 
        <hr style="border-color: #3A94CA" />
        <br />
       <center>
        <table width="100%" align="center">
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Compnay Name
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_cmp" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Address 1
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_add1" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style7">
                    Address 2
                </td>
                <td class="style6">
                    <asp:TextBox ID="txt_add2" runat="server" Height="15px"></asp:TextBox>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    State
                </td>
                <td class="style3">
                    <asp:DropDownList ID="dwd_st" runat="server" AutoPostBack="True" 
                        ViewStateMode="Disabled" Width="100%">
                    </asp:DropDownList>
                </td>
                <td style="font-weight: bold" class="style4">
                    City
                </td>
                <td class="style5">
                    <asp:DropDownList ID="dwd_ct" runat="server" 
                        OnSelectedIndexChanged="dwd_ct_SelectedIndexChanged" Width="100%">
                    </asp:DropDownList>
                </td>
                <td style="font-weight: bold" class="style7">
                    Phone No.
                </td>
                <td class="style6">
                    <asp:TextBox ID="txt_phn" runat="server" Height="15px"></asp:TextBox>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Website
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_website" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Email Id
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_email" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style7">
                    Mobile No
                </td>
                <td class="style6">
                    <asp:TextBox ID="txt_mobile" runat="server" Height="15px"></asp:TextBox>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Pin Code
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_pincd" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Starting Form
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_form" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style7">
                    Logo
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload7" runat="server" />
                    <%--<asp:ImageButton ID="dd_logo" ImageUrl="~/img/Down.png" Height="4%" Width="4%"
                        runat="server" />--%>
                        <asp:HyperLink ID="dd_logo" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
                <td>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Vat
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_vat" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Vat Date
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_dt" runat="server" Height="15px"></asp:TextBox>
                    <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="txt_dt" Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                </td>
                <td style="font-weight: bold" class="style7">
                    Vat Certificate
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                    <%--<asp:ImageButton ID="dd_vat_crt" ImageUrl="~/img/Down.png" Height="4%" Width="4%"
                        runat="server" />--%>
                         <asp:HyperLink ID="dd_vat_crt" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
            <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    CST
                </td>
                <td>

                    <asp:TextBox ID="txt_cst" runat="server"></asp:TextBox>
                    </td>
                <td style="font-weight: bold" class="style4">
                    Cst Date
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_cstdt" runat="server" Height="15px"></asp:TextBox>
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_cstdt"
                        Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                
                </td>
                <td style="font-weight: bold" class="style7">
                    CST Certificate
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
               <%--     <asp:ImageButton ID="dd_cst_crt" ImageUrl="~/img/Down.png" Height="4%" Width="4%"
                        runat="server" />--%>
                        <asp:HyperLink ID="dd_cst_crt" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Exse
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_exse" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Exse Date
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_exedt" runat="server" Height="15px"></asp:TextBox>
                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_exedt"
                        Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                </td>
                <td style="font-weight: bold" class="style7">
                    Exe Certificate
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                    <%--<asp:ImageButton ID="dd_exc_crt" ImageUrl="~/img/Down.png" Height="4%" Width="4%"
                        runat="server" />--%>
                        <asp:HyperLink ID="dd_exc_crt" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
             <tr style="text-align: right">
                 <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                </tr>
                 <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Range
                </td>
                <td>
                    <asp:TextBox ID="txt_range" Height="15px" runat="server"></asp:TextBox>
                </td>
                 <td style="font-weight: bold" class="style2">
                    Division
                </td>
                <td>
                    <asp:TextBox ID="txt_division" Height="15px" runat="server"></asp:TextBox>
                </td>
               <td style="font-weight: bold" class="style2">
                Commissonerate
                </td>
                <td>
                 <asp:TextBox ID="txt_comis_rt" Height="15px" runat="server"></asp:TextBox>
                </td>
                </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    St
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_st" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    St Date
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_stdt" runat="server" Height="15px"></asp:TextBox>
                    <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txt_stdt"
                        Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                </td>
                <td style="font-weight: bold" class="style7">
                    St Certificate
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload4" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                    <%--<asp:ImageButton ID="dd_st_crt" ImageUrl="~/img/Down.png" Height="4%" Width="4%"
                        runat="server" />--%>
                        <asp:HyperLink ID="dd_st_crt" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Tds
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_tds" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Tds Date
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_tdsdt" runat="server" Height="15px"></asp:TextBox>
                    <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txt_tdsdt"
                        Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                </td>
                <td style="font-weight: bold" class="style7">
                    Tds Certificate
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload8" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                    <%--<asp:ImageButton ID="dd_tds_crt" ImageUrl="~/img/Down.png" Height="4%" Width="4%"
                        runat="server" />--%>
                        <asp:HyperLink ID="dd_tds_crt" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    Cin
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_cin" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Cin Certificate
                </td>
                <td class="style5">
                    <asp:FileUpload ID="FileUpload5" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                    
                          <asp:HyperLink ID="dd_cin_crt" ImageUrl="~/img/Down.png"  Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
            <tr style="text-align: right">
                <td style="font-weight: bold" class="style2">
                    PAN
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_pan" runat="server" Height="15px"></asp:TextBox>
                </td>
                <td style="font-weight: bold" class="style4">
                    Pan Certificate
                </td>
                <td class="style5">
                    <asp:FileUpload ID="FileUpload6" runat="server" />
                    <%--<asp:LinkButton ID="LinkButton6" runat="server">Download</asp:LinkButton>--%>
                    <%--<asp:ImageButton ID="dd_pan_crt" ImageUrl="~/img/Down.png"  Height="4%" Width="4%"
                        runat="server" />--%>
                    <asp:HyperLink ID="dd_pan_crt" ImageUrl="~/img/Down.png" Target="_blank" Height="8%" Width="8%" runat="server"></asp:HyperLink>
                </td>
            </tr>
            <tr>
              <td style="font-weight: bold;text-align:right" class="style4">
            No & Dt. Notification under which
            </td>
            <td>
             <asp:TextBox ID="txt_not_under" runat="server" Height="15px"></asp:TextBox>
            </td>
            </tr>
            <tr>
                <td colspan="6" align="center">
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        </center>
</asp:Content>
