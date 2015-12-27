<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="recipt.aspx.cs" Inherits="Default3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ><%--OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"--%>
                </asp:DropDownList>
                <div class="box-content" style="border: solid #EFF3FB; width: 1200px">
                    <table width="100%">
                        <tr style="text-align: center">
                            <td>
                                <h4>
                                    <asp:Label ID="Label2" runat="server" Text="DELIVERY CHALLAN" Style="font-weight: bold"></asp:Label></h4>
                            </td>
                        </tr>
                    </table>
                    <center>
                        <table>
                            <tr style="background-color: #EFF3FB; height: 35px;">
                                <td style="font-weight: bold; text-align: right;">
                                    <%--  Invoice No.&nbsp;--%>
                                </td>
                                <td>
                                    <%--<asp:TextBox ID="TextBox9" Width="75%" runat="server"></asp:TextBox>--%>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    Company Name&nbsp;
                                </td>
                                <td style="width: 15%">
                                    <asp:TextBox ID="txt_comp_nm" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="txt_comp_nm_TextChanged"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" ServiceMethod="SearchCustomers1"
                                        MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                        runat="server" TargetControlID="txt_comp_nm" FirstRowSelected="false">
                                    </cc1:AutoCompleteExtender>
                                </td>
                                <td style="font-weight: bold; text-align: right; width: 9%">
                                    R.C. No.&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_dc_no" Width="75%" runat="server" OnTextChanged="txt_dc_no_TextChanged"></asp:TextBox>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    R.C. Date&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_dc_date" Width="75%" runat="server" AutoPostBack="True" OnTextChanged="txt_dc_date_TextChanged"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_dc_date"
                                        Format="dd/MM/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                            </tr>
                            <tr style="height: 35px;">
                                <td style="font-weight: bold; text-align: right;">
                                    <%--  Date&nbsp;--%>
                                </td>
                                <td>
                                    <%--  <asp:TextBox ID="TextBox11" Width="75%" runat="server"></asp:TextBox>--%>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    Brocker&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_brok_nm" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="txt_brok_nm_TextChanged"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomers2"
                                        MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                        runat="server" TargetControlID="txt_brok_nm" FirstRowSelected="false">
                                    </cc1:AutoCompleteExtender>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    L.R. No.&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_lr_no" Width="75%" runat="server" AutoPostBack="True" OnTextChanged="txt_lr_no_TextChanged"></asp:TextBox>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    L.R. Date&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_lr_date" Width="75%" runat="server" AutoPostBack="True" OnTextChanged="txt_lr_date_TextChanged"></asp:TextBox>
                                    <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="txt_lr_date"
                                        Format="dd/MM/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                            </tr>
                            <tr style="background-color: #EFF3FB; height: 35px;">
                                <td>
                                </td>
                                <td>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    Transport&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_trp_nm" Width="100%" runat="server" OnTextChanged="txt_trp_nm_TextChanged"
                                        AutoPostBack="True"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender3" ServiceMethod="SearchCustomers3"
                                        MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                        runat="server" TargetControlID="txt_trp_nm" FirstRowSelected="false">
                                    </cc1:AutoCompleteExtender>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    P.O. No.&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_pr_no" Width="75%" runat="server" AutoPostBack="True" OnTextChanged="txt_pr_no_TextChanged"></asp:TextBox>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    P.O. Date&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_po_date" Width="75%" runat="server" AutoPostBack="True" OnTextChanged="txt_po_date_TextChanged"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_po_date"
                                        Format="dd/MM/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                            </tr>
                        </table>
                        <%-- <center>
                <table width="100%">
                    <tr style="text-align: center">
                        <td>
                            <h3>
                               ADD PRODUCT</h3>
                        </td>
                    </tr>
                </table>
            </center>--%>
                        <br />
                        <asp:GridView ID="grid_array" runat="server" ShowFooter="True" AutoGenerateColumns="False"
                            OnRowDataBound="OnRowDataBound" Width="1165px" CellPadding="4" ForeColor="#333333"
                            GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="NO" />
                                <asp:TemplateField HeaderText="Product">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox1" Width="350px" runat="server" OnTextChanged="TextBox1_TextChanged"
                                            AutoPostBack="True"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomers4"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="TextBox1" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox2" Width="250px" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Label ID="Label1" runat="server" Text="TOTAL"></asp:Label>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Qty">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox3" Width="60px" runat="server" OnTextChanged="TextBox3_TextChanged"
                                            AutoPostBack="True"></asp:TextBox>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_tt" Width="60px" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Rate">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox4" Width="55px" runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Par">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox5" Width="65px" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Disc(%)">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox7" Width="65px" runat="server" OnTextChanged="TextBox7_TextChanged"
                                            AutoPostBack="True"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tax">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox8" Width="65px" runat="server" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox6" Width="95px" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_ttt" Width="95px" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="ButtonAdd" runat="server" Text="+" OnClick="ButtonAdd_Click" />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#EFF3FB" Font-Bold="True" ForeColor="Black" />
                            <HeaderStyle BackColor="#EFF3FB" Font-Bold="True" ForeColor="Black" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </center>
                    <br />
                    <div style="margin-left: 25px">
                        <table>
                            <tr>
                                <td>
                                    <table>
                                        <tr style="background-color: #EFF3FB; height: 35px;">
                                            <td style="font-weight: bold; text-align: right;">
                                                VAT 4%&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_tax4" Width="75%" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; text-align: right;">
                                                VAT 12.5%&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_txt12" Width="75%" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; text-align: right;">
                                                CST 2%&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_tax2" Width="75%" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold; text-align: right;">
                                                ADD VAT 1%&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_vat1" Width="75%" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; text-align: right;">
                                                ADD VAT 2.5%&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_vat2" Width="75%" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table style="margin-left: 245px; margin-top: -30px;">
                                        <tr>
                                            <td style="font-weight: bold; text-align: right;">
                                                Discount
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" Width="85px" runat="server" AutoPostBack="True" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:GridView ID="grd_add" ShowFooter="True" AutoGenerateColumns="False" runat="server"
                                        GridLines="None" Style="margin-left: 135px; margin-top: -20px;">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txt_lg" Width="155px" runat="server" OnTextChanged="txt_lg_TextChanged"
                                                        AutoPostBack="True"></asp:TextBox>
                                                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender5" ServiceMethod="SearchCustomers5"
                                                        MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                                        runat="server" TargetControlID="txt_lg" FirstRowSelected="false">
                                                    </cc1:AutoCompleteExtender>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txt_amt" Width="95px" runat="server" OnTextChanged="txt_amt_TextChanged"
                                                        AutoPostBack="True"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="BtnAdd" runat="server" Text="+" OnClick="BtnAdd_Click" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <table style="margin-left: 950px" width="250px">
                            <tr>
                                <td style="font-weight: bold; text-align: right;">
                                    NET AMOUNT&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_net_amt" Width="100px" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <hr color="#EFF3FB" size="30px" />
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="RESET" /></center>
                </div>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
