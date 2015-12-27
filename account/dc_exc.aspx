<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="dc_exc.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style10 {
            width: 9%;
        }
        .auto-style12 {
            width: 11%;
        }
        .auto-style13 {
            width: 67px;
        }
        .auto-style14 {
            width: 12%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="dwd_vat" Visible="False" AutoPostBack="True" 
                    runat="server" OnSelectedIndexChanged="dwd_vat_SelectedIndexChanged">
                        <asp:ListItem>Select vat</asp:ListItem>
                        <asp:ListItem>4%</asp:ListItem>
                        <asp:ListItem>12%</asp:ListItem>
                    </asp:DropDownList>
                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <div class="box-content" style="border: solid #EFF3FB; width: 95%">
                        <table width="100%">
                            <tr style="text-align: center">
                                <td>
                                    <h4>
                                        <asp:Label ID="Label2" runat="server" Text="" Style="font-weight: bold"></asp:Label></h4>
                                </td>
                            </tr>
                        </table>
                        <center>
                            <table>
                                <tr style="background-color: #EFF3FB; height: 35px;">
                                    <td style="font-weight: bold; text-align: right;width:7%">
                                        <span class="auto-style1"><strong>Invoice</strong></span> No.&nbsp;
                                    </td>
                                    <td style="width:10%">
                                        <asp:TextBox ID="txt_inv" Width="55%" Height="65%" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;width:12%">
                                        Company Name&nbsp;
                                    </td>
                                    <td style="width:25%">
                                        <asp:TextBox ID="txt_comp_nm" Height="65%" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="txt_comp_nm_TextChanged"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" ServiceMethod="SearchCustomers1"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_comp_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right; " class="auto-style10">
                                        D.C. No.&nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txt_dc_no" Width="40%" Height="65%" runat="server" OnTextChanged="txt_dc_no_TextChanged"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style13">
                                        D.C. Date&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_dc_date" Width="40%" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="txt_dc_date_TextChanged"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_dc_date"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr style="height: 35px;">
                                    <td style="font-weight: bold; text-align: right;">
                                        Date&nbsp;
                                    </td>
                                    <td width="155px">
                                        <asp:TextBox ID="txt_inv_dt" Width="55%" Height="65%" runat="server"></asp:TextBox><asp:TextBox ID="txt_inv_time" Width="25%" Height="65%" runat="server"></asp:TextBox>
                                        
                                        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txt_inv_dt"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Brocker&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_brok_nm" Width="100%" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="txt_brok_nm_TextChanged"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomers2"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_brok_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style10">
                                        L.R. No.&nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txt_lr_no" Width="40%" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="txt_lr_no_TextChanged"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style13">
                                        L.R. Date&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lr_date" Width="40%" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="txt_lr_date_TextChanged"></asp:TextBox>
                                        <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="txt_lr_date"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr style="background-color: #EFF3FB; height: 35px;">
                                     <td style="font-weight: bold; text-align: right;">
                                       Removal Date&nbsp;
                                    </td>
                                    <td width="155px">
                                        <asp:TextBox ID="txt_date_removal" Width="55%" Height="65%" placeholder="Date" runat="server"></asp:TextBox><asp:TextBox ID="txt_time_removal" Width="25%"  Height="65%" placeholder="Time" runat="server"></asp:TextBox>
                                        
                                        <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txt_date_removal"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Transport&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_trp_nm" Width="40%" Height="65%" runat="server" OnTextChanged="txt_trp_nm_TextChanged"
                                            AutoPostBack="True"></asp:TextBox>
                                         <asp:TextBox ID="txt_trp_to" Width="25%" Height="65%" runat="server" placeholder="From"
                                           ></asp:TextBox>
                                         <asp:TextBox ID="txt_trp_from" Width="25%" Height="65%" runat="server" 
                                            placeholder="To" AutoPostBack="True" ontextchanged="txt_trp_from_TextChanged"
                                            ></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender3" ServiceMethod="SearchCustomers3"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_trp_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style10">
                                        P.O. No.&nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txt_pr_no" Width="40%" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="txt_pr_no_TextChanged"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style13">
                                        P.O. Date&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_po_date" Width="40%" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="txt_po_date_TextChanged"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_po_date"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr style="background-color: #EFF3FB; height: 35px;">
                                     <td style="font-weight: bold; text-align: right;">
                                     </td>
                                     <td>
                                     </td>
                                     <td style="font-weight: bold; text-align: right;">
                                        Maner Of Transport
                                     </td>
                                     <td>
                                         <asp:TextBox ID="txt_maner_trp" Width="40%" Height="65%" runat="server"></asp:TextBox>
                                         <asp:TextBox ID="txt_vich" Width="25%"  Height="65%" placeholder="Vehical NO" runat="server"></asp:TextBox>
                                         <asp:TextBox ID="txt_r_l"  Width="25%" Height="65%" placeholder="RAil T.R/L.R/R.R NO" runat="server"></asp:TextBox>
                                     </td>
                                     <td style="font-weight: bold; text-align: right;">
                                     Exisable Commodity
                                     </td>
                                     <td>
                                    <asp:TextBox ID="txt_comity" Width="65%" Height="65%" runat="server"></asp:TextBox>
                                    </td>
                                      <td style="font-weight: bold; text-align: right;">
                                     Tariff NO
                                      </td>
                                        <td>
                                       <asp:TextBox ID="txt_tariff" Width="45%" Height="65%" runat="server"></asp:TextBox>
                                      </td>
                                      
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
                                OnRowDataBound="OnRowDataBound" Width="100%" CellPadding="4" ForeColor="#333333"
                                GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="NO" />
                                    <asp:TemplateField HeaderText="Product">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox1"  Width="150px" runat="server" OnTextChanged="TextBox1_TextChanged"
                                                AutoPostBack="True"></asp:TextBox>
                                            <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomers4"
                                                MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                                runat="server" TargetControlID="TextBox1" FirstRowSelected="false">
                                            </cc1:AutoCompleteExtender>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Description">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox2" Width="90px"  runat="server"></asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Label ID="Label1" runat="server" Text="TOTAL" Style="text-align: right"></asp:Label>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Qty">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox3" Width="60px"  runat="server" OnTextChanged="TextBox3_TextChanged"
                                                AutoPostBack="True" Style="text-align: right" OnPreRender="TextBox3_PreRender"></asp:TextBox>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txt_tt" Width="60px"  runat="server"></asp:TextBox>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Rate">
                                        <ItemTemplate>
                                         <asp:TextBox ID="TextBox4" Width="55px"  runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"
                                                Style="text-align: right" 
                                onprerender="TextBox4_PreRender"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Par">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox5" Width="65px"  runat="server"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Disc(%)">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox7" Width="65px"  runat="server" OnTextChanged="TextBox7_TextChanged"
                                                AutoPostBack="True" OnPreRender="TextBox7_PreRender"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tax">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox8" Width="65px"  runat="server" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="ecc">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox9" Width="65px"  runat="server"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Amount">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox6" Width="95px"  runat="server" Style="text-align: right"></asp:TextBox>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txt_ttt" Width="95px"  runat="server"></asp:TextBox>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server"  Text="+" OnClick="ButtonAdd_Click" />
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
                        <div">
                            <table>
                                <tr>
                                    <td>
                                        <table>
                                            <tr style="background-color: #EFF3FB; height: 35px;">
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_amt_4" runat="server" Text="Amt VAT 4%"></asp:Label>  &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_amt_vat4" Width="75%" Height="65%" runat="server" OnPreRender="txt_amt_vat4_PreRender"
                                                        OnTextChanged="txt_amt_vat4_TextChanged"></asp:TextBox>
                                                </td>
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_amt_12" runat="server" Text="Amt VAT 12.5%"></asp:Label>&nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_amt_vat12" Width="75%" Height="65%" runat="server" OnPreRender="txt_amt_vat12_PreRender"
                                                        OnTextChanged="txt_amt_vat12_TextChanged"></asp:TextBox>
                                                </td>
                                                
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_amt_cst" runat="server" Text="Amt CST 2%"></asp:Label> &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_amt_cst2" Width="75%" Height="65%" runat="server" OnPreRender="txt_amt_cst2_PreRender"
                                                        OnTextChanged="txt_amt_cst2_TextChanged"></asp:TextBox>
                                                </td>
                                                <td rowspan="2">
                                                    <asp:Panel ID="Panel2" runat="server"  Visible="false">
                                                  
                                                 <table>
                                        <tr>
                                         <td style="font-weight: bold; text-align: right;">
                                                    Amt EXCISE 12.5%&nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_amt_exc" Width="75%" Height="65%" runat="server" 
                                                        onprerender="txt_amt_exc_PreRender" ontextchanged="txt_amt_exc_TextChanged"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                         <td style="font-weight: bold; text-align: right;">
                                                   EXCISE 12.5%&nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_exc" runat="server" Height="65%" Width="75%"></asp:TextBox>
                                                </td>
                                        </tr>
                                        </table>
                                          </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr style="background-color: #EFF3FB; height: 35px;">
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_vat_4" runat="server" Text="VAT 4%"></asp:Label>  &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_tax4" Width="75%" Height="65%" runat="server"></asp:TextBox>
                                                </td>
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_vat_12" runat="server" Text="VAT 12.5%"></asp:Label> &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_txt12" Width="75%" Height="65%" runat="server"></asp:TextBox>
                                                </td>
                                                
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_cst_2" runat="server" Text="CST 2%"></asp:Label>  &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_tax2" Width="75%" Height="65%" runat="server" 
                                                        OnPreRender="txt_tax2_PreRender"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_addvat_1" runat="server" Text="ADD VAT 1%"></asp:Label> &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_vat1" Width="75%" Height="65%" runat="server"></asp:TextBox>
                                                </td>
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_addvat_2" runat="server" Text="ADD VAT 2.5%"></asp:Label>&nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_vat2" Width="75%" Height="65%" runat="server"></asp:TextBox>
                                                </td>
                                           
                                         </tr>
                                       </td>
                                         </table>
                                    </td>
                                    <td>
                                        <table style="margin-left: 60%; margin-top: -12%;">
                                            <tr>
                                                <td style="font-weight: bold; text-align: right;">
                                                    Discount
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox9" Width="85px" Height="65%" runat="server" AutoPostBack="True" OnTextChanged="TextBox9_TextChanged"
                                                        Style="text-align: right"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="grd_add" ShowFooter="True" AutoGenerateColumns="False" runat="server"
                                            GridLines="None" Style="margin-left: 135px; margin-top: -20px;" 
                                            >
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txt_lg" Width="155px" Height="65%" runat="server" OnTextChanged="txt_lg_TextChanged"
                                                            AutoPostBack="True"></asp:TextBox>
                                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender5" ServiceMethod="SearchCustomers5"
                                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                                            runat="server" TargetControlID="txt_lg" FirstRowSelected="false">
                                                        </cc1:AutoCompleteExtender>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txt_amt" Width="95px" Height="65%" runat="server"  OnTextChanged="txt_amt_TextChanged"
                                                            AutoPostBack="True" Style="text-align: right" Text="0"></asp:TextBox>
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
                            <table style="margin-left: 700px" width="250px">
                                <tr>
                                    <td style="font-weight: bold; text-align: right;">
                                        NET AMOUNT&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_net_amt" Width="100px" Height="65%" runat="server" Style="text-align: right"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                          <hr color="#EFF3FB" size="30px" />
                        <center>
                            <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                            <asp:Button ID="Button3" runat="server" Text="UPDATE" Visible="false" OnClick="Button3_Click" />
                            <asp:Button ID="Button2" runat="server" Text="RESET" OnClick="Button2_Click" /></center>
                        </div>
                </asp:Panel>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
