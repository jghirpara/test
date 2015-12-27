<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="inv_genrate.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1
        {
            font-weight: normal;
        }
        .auto-style10
        {
            width: 9%;
        }
        .auto-style12
        {
            width: 11%;
        }
        .auto-style13
        {
            width: 67px;
        }
        .auto-style14
        {
            width: 12%;
        }
    </style>
    <%--<script type="text/javascript">

        var isShiftKey = false;

        document.onkeyup = function (e) {
            if (e.which == 16) isShiftKey = false;
        }

        document.onkeydown = function (e) {

            if (e.which == 16) isShiftKey = true;

         
            // add item
             if (e.which == 73 && isShiftKey == true) {
                TriggerItemButton();
                StopDefaultAction(e);
            }
            //+U
            
            // return false;
        }

        function StopDefaultAction(e) {
            if (e.preventDefault) { e.preventDefault() }
            else { e.stop() };

            e.returnValue = false;
            e.stopPropagation();
        }

        
        function TriggerItemButton() {
            javascript: __doPostBack('<%=((Button)grid_array.FooterRow.FindControl("btn_add_itm")).UniqueID %>','');
        }
        
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <script language="Javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
        $(document).ready(function () {
            $('#Percentage1').keyup(function (event) {
                var currentValue = $(this).val();
                var length = currentValue.length;

                if (length == 2) {
                    $(this).val(currentValue + ".");
                }
                else if (length == 3) {
                    $(this).val(currentValue + "");
                }
            });
        });
    </script>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="dwd_vat" Visible="False" AutoPostBack="True" runat="server"
                    OnSelectedIndexChanged="dwd_vat_SelectedIndexChanged">
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
                                    <td style="font-weight: bold; text-align: right; width: 7%">
                                        <span class="auto-style1"><strong>Invoice</strong></span> No.&nbsp;
                                    </td>
                                    <td style="width: 12%">
                                        <asp:TextBox ID="txt_inv" Width="55%" Height="65%" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right; width: 10%">
                                        Company Name&nbsp;
                                    </td>
                                    <td style="width: 25%">
                                        <asp:TextBox ID="txt_comp_nm" Height="65%" Width="100%" runat="server" AutoPostBack="True"
                                            OnTextChanged="txt_comp_nm_TextChanged"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" ServiceMethod="SearchCustomers1"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_comp_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style10">
                                        D.C. No.&nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txt_dc_no" Width="65%" Height="65%" runat="server" onkeypress="return isNumberKey(event)"
                                            OnTextChanged="txt_dc_no_TextChanged"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style13">
                                        D.C. Date&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_dc_date" Width="40%" Height="65%" runat="server" AutoPostBack="True"
                                            OnTextChanged="txt_dc_date_TextChanged"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_dc_date"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr style="height: 35px;">
                                    <td style="font-weight: bold; text-align: right;">
                                       Invoice Date&nbsp;
                                    </td>
                                    <td width="155px">
                                        <asp:TextBox ID="txt_inv_dt" Width="55%" Height="65%" runat="server"></asp:TextBox><asp:TextBox
                                            ID="txt_inv_time" Width="35%" Height="65%" runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txt_inv_dt"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Ship To&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_brok_nm" Width="100%" Height="65%" runat="server" AutoPostBack="True"
                                            OnTextChanged="txt_brok_nm_TextChanged"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomersship"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_brok_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style10">
                                        L.R. No.&nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txt_lr_no" Width="65%" Height="65%" runat="server" AutoPostBack="True"
                                             
                                            OnTextChanged="txt_lr_no_TextChanged"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style13">
                                        L.R. Date&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lr_date" Width="40%" Height="65%" runat="server" AutoPostBack="True"
                                            OnTextChanged="txt_lr_date_TextChanged"></asp:TextBox>
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
                                        <asp:TextBox ID="txt_date_removal" Width="55%" Height="65%" placeholder="Date" runat="server"></asp:TextBox><asp:TextBox
                                            ID="txt_time_removal" Width="35%" Height="65%" placeholder="Time" runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txt_date_removal"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Transport&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_trp_nm" Width="45%" Height="65%" runat="server" OnTextChanged="txt_trp_nm_TextChanged"
                                            AutoPostBack="True"></asp:TextBox>
                                        <asp:TextBox ID="txt_trp_to" Width="25%" Height="65%" runat="server" placeholder="From"></asp:TextBox>
                                        <asp:TextBox ID="txt_trp_from" Width="25%" Height="65%" runat="server" placeholder="To"
                                            AutoPostBack="True" OnTextChanged="txt_trp_from_TextChanged"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender3" ServiceMethod="SearchCustomers3"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_trp_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style10">
                                        P.O. No.&nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txt_pr_no" Width="65%" Height="65%" runat="server" AutoPostBack="True"
                                           
                                            OnTextChanged="txt_pr_no_TextChanged"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;" class="auto-style13">
                                        P.O. Date&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_po_date" Width="40%" Height="65%" runat="server" AutoPostBack="True"
                                            OnTextChanged="txt_po_date_TextChanged"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_po_date"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr style="height: 35px;">
                                    <td style="font-weight: bold; text-align: right;">
                                    </td>
                                    <td>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Maner Of Transport
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_maner_trp" Width="40%" Height="65%" runat="server"></asp:TextBox>
                                        <strong>Vehical NO</strong>
                                        <asp:TextBox ID="txt_vich" Width="35%" Height="65%" runat="server" 
                                            AutoPostBack="True" ontextchanged="txt_vich_TextChanged"></asp:TextBox>
                                        <%--<asp:TextBox ID="txt_r_l"  Width="25%" Height="65%" placeholder="RAil T.R/L.R/R.R NO" runat="server"></asp:TextBox>--%>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Exisable Commodity
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_comity" Width="65%" Height="65%" runat="server" 
                                            ontextchanged="txt_comity_TextChanged" AutoPostBack="True"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender4" ServiceMethod="Searchterif_no"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_comity" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Tariff NO
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_tariff" Width="40%" Height="65%" runat="server" 
                                            AutoPostBack="True" ontextchanged="txt_tariff_TextChanged" ></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                              
                            <br />
                            <asp:GridView ID="grid_array" runat="server" ShowFooter="True" AutoGenerateColumns="False"
                                OnRowDataBound="OnRowDataBound" Width="100%" CellPadding="4" ForeColor="#333333"
                                GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="NO" />
                                    <asp:TemplateField HeaderText="Product">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" Width="92%" runat="server" TextMode="MultiLine" OnTextChanged="TextBox1_TextChanged"
                                                AutoPostBack="True"></asp:TextBox>
                                          <asp:Button ID="btn_add_itm" runat="server" Text="+" 
                                onclick="btn_add_itm_Click" />
                                            <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomers4"
                                                MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                                runat="server" TargetControlID="TextBox1" FirstRowSelected="false">
                                            </cc1:AutoCompleteExtender>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="30%"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Description">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox2" Width="100%" runat="server"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="30%"></HeaderStyle>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Label ID="Label1" runat="server" Text="TOTAL" Style="text-align: right"></asp:Label>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Qty">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox3" Width="100%" onkeypress="return isNumberKey(event)" runat="server"
                                                OnTextChanged="TextBox3_TextChanged" AutoPostBack="True" Style="text-align: right"
                                                OnPreRender="TextBox3_PreRender"></asp:TextBox>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txt_tt" Width="100%" onkeypress="return isNumberKey(event)" Style="text-align: right"
                                                runat="server"></asp:TextBox>
                                        </FooterTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Rate">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox4" Width="100%" onkeypress="return isNumberKey(event)" runat="server"
                                                AutoPostBack="True" OnTextChanged="TextBox4_TextChanged" Style="text-align: right"
                                                OnPreRender="TextBox4_PreRender"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="12%"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Par">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox5" Width="100%" runat="server"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                    </asp:TemplateField>
                                 <%--   <asp:TemplateField HeaderText="Disc(%)">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox7" Width="100%" onkeypress="return isNumberKey(event)" Style="text-align: right"
                                                runat="server" OnTextChanged="TextBox7_TextChanged" AutoPostBack="True" OnPreRender="TextBox7_PreRender"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="4%"></HeaderStyle>
                                    </asp:TemplateField>--%>
                                    <asp:TemplateField HeaderText="Amount">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox6" Width="100%" onkeypress="return isNumberKey(event)" runat="server"
                                                Style="text-align: right"></asp:TextBox>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txt_ttt" Width="100%" onkeypress="return isNumberKey(event)" Style="text-align: right"
                                                runat="server"></asp:TextBox>
                                        </FooterTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="12%"></HeaderStyle>
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
                        <div>
                            <table>
                                <tr>
                                    <td>
                                        <table>
                                            <tr style="background-color: #EFF3FB; height: 35px;">
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_amt_4" runat="server" Text=""></asp:Label>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_amt_vat4" Width="75%" onkeypress="return isNumberKey(event)"
                                                        Height="65%" Style="text-align: right" runat="server" OnPreRender="txt_amt_vat4_PreRender"
                                                        OnTextChanged="txt_amt_vat4_TextChanged"></asp:TextBox>
                                                </td>
                                                <%--<td style="font-weight: bold; text-align: right;">
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
                                                </td>--%>
                                    </td>
                                    <td style="font-weight: bold; text-align: right;">
                                        Amt EXCISE&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_amt_exc" Width="75%" Style="text-align: right" Height="65%"
                                            runat="server" OnPreRender="txt_amt_exc_PreRender" onkeypress="return isNumberKey(event)"
                                            OnTextChanged="txt_amt_exc_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="background-color: #EFF3FB; height: 35px;">
                                    <td style="font-weight: bold; text-align: right;">
                                        <asp:Label ID="lbl_vat_4" runat="server" Text="Add vat"></asp:Label>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_tax4" Width="75%" Height="65%" onkeypress="return isNumberKey(event)"
                                            Style="text-align: right" runat="server"></asp:TextBox>
                                    </td>
                                    <%-- <td>
                                                    <asp:TextBox ID="txt_txt12" Width="75%" Height="65%" runat="server"></asp:TextBox>
                                                </td>
                                                
                                                <td style="font-weight: bold; text-align: right;">
                                                    <asp:Label ID="lbl_cst_2" runat="server" Text="CST 2%"></asp:Label>  &nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_tax2" Width="75%" Height="65%" runat="server" 
                                                        OnPreRender="txt_tax2_PreRender"></asp:TextBox>
                                                </td>--%>
                                    <td style="font-weight: bold; text-align: right;">
                                        EXCISE &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_exc" runat="server" Height="65%" onkeypress="return isNumberKey(event)"
                                            Style="text-align: right" Width="75%"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                </td>
                            </table>
                            </td>
                            <td>
                                <table style="margin-left: 75%; margin-top: -7%;">
                                    <tr>
                                        <td style="font-weight: bold; text-align: right;">
                                            Discount
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" Width="85px" Height="85%" onkeypress="return isNumberKey(event)"
                                                runat="server" AutoPostBack="True" OnTextChanged="TextBox9_TextChanged" Style="text-align: right"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <asp:GridView ID="grd_add" ShowFooter="True" AutoGenerateColumns="False" runat="server"
                                    GridLines="None" Style="margin-left: 135px; margin-top: -12px;">
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
                                                <asp:TextBox ID="txt_amt" Width="95px" runat="server" onkeypress="return isNumberKey(event)"
                                                    OnTextChanged="txt_amt_TextChanged" AutoPostBack="True" Style="text-align: right"
                                                    Text="0"></asp:TextBox>
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
                            </tr> </table>
                            <table style="margin-left: 700px" width="250px">
                                <tr>
                                    <td style="font-weight: bold; text-align: right;">
                                        NET AMOUNT&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_net_amt" Width="100px" onkeypress="return isNumberKey(event)"
                                            Height="85%" runat="server" Style="text-align: right"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <table>
                            <tr style="background-color: #EFF3FB; height: 35px;">
                                <td style="font-weight: bold; text-align: right;">
                                    PLA
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_pla" Width="45%" Height="65%" runat="server"></asp:TextBox>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    R.G.
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_r_g" Width="45%" Height="65%" runat="server"></asp:TextBox>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    Part
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_part" Width="45%" Height="65%" runat="server"></asp:TextBox>
                                </td>
                                <td style="font-weight: bold; text-align: right;">
                                    Dt
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_u_dt" Width="45%" Height="65%" runat="server"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="txt_u_dt"
                                        Format="dd/MM/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                            </tr>
                        </table>
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
