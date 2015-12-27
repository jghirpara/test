<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="payment.aspx.cs" Inherits="Default3" %>

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
  <%--  <div id="dvAccordian" style="width: ">--%>
        <h3>
            Payment Receive</h3>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <center>
                        <table width="55%">
                            <tr style="text-align: right">
                                <td style="font-weight: bold">
                                    Payment Type
                                    
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" Height="25px" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                                <td style="font-weight: bold;">
                                    Compnay Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_comp_nm" runat="server" AutoPostBack="true" OnTextChanged="txt_comp_nm_TextChanged"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" ServiceMethod="SearchCustomers1"
                                        MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                        runat="server" TargetControlID="txt_comp_nm" FirstRowSelected="false">
                                    </cc1:AutoCompleteExtender>
                                </td>
                                </tr>
                               <tr style="text-align: right">
                                <td style="font-weight: bold">
                                        Date
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_inv_dt"  runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txt_inv_dt"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                    <td style="font-weight: bold">
                                        Amount
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
                                    </td>
                            </tr>
                        </table>
                       
                        
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="invoice_id">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" 
                                        oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="invoice_no" HeaderText="Invoice No" />
                                <asp:BoundField DataField="company_nm" HeaderText="Name" />
                                <asp:BoundField DataField="invoice_date" HeaderText="Date" />
                               <%-- <asp:BoundField DataField="debit_amount" HeaderText="Amount" />--%>
                                 <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("debit_amount")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txt_amt" Width="95px" runat="server" Style="text-align: right"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:Panel ID="Panel2" Visible="false" runat="server">
                            <br />
                            <h3>
                                Bank Payment
                            </h3>
                            <table width="55%">
                                <tr style="text-align: right">
                                    <td style="font-weight: bold">
                                        Bank Payment type
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" Height="25px" runat="server" AutoPostBack="True"
                                            OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                                            <asp:ListItem>---select Type---</asp:ListItem>
                                            <asp:ListItem>Chque</asp:ListItem>
                                            <asp:ListItem>Electronic Chque</asp:ListItem>
                                            <asp:ListItem>Electroni DD/Po</asp:ListItem>
                                            <asp:ListItem>Inter Bank Transfer</asp:ListItem>
                                            <asp:ListItem>Same Bank Transfer</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                     <td style="font-weight: bold">
                                        
                                    </td>
                                    <td>
                                        
                                    </td>
                                </tr>
                                <tr style="text-align: right">
                                    <td style="font-weight: bold">
                                        <asp:Label ID="Label3" runat="server"  Text="Chque/DD NO"></asp:Label>
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text="NEFT/RTGS NO"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Height="15px"></asp:TextBox>
                                        <asp:TextBox ID="TextBox7" Visible="false" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold">
                                        Date
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_dt2"  runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_dt2"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr style="text-align: right">
                                    <td style="font-weight: bold">
                                        Bank
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold">
                                        Branch
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                         <asp:Panel ID="Panel1" Visible="false" runat="server">
                            <br />
                            <h3>
                                Cash Payment
                            </h3>
                            <table width="25%">
                                    <tr style="text-align: right">
                                <td style="font-weight: bold">
                                            Remarak
                                        </td>
                                        <td>
                                        
                                            <asp:TextBox ID="txt_remark" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                            </table>
                        </asp:Panel>
                    </center>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
   <%--     </div>--%>
    </div>
</asp:Content>
