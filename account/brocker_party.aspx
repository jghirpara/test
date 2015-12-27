<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="brocker_party.aspx.cs" Inherits="Default3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("#dvAccordian").accordion();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <div id="dvAccordian" style="width: ">
        <h3>
            Brocker Allocation</h3>
        <div>
            <center>
                <table width="55%" >
                    <tr style="text-align: right">
                        <td style="font-weight: bold;">
                            Compnay Name
                        </td>
                        <td>
                            <asp:TextBox ID="txt_comp_nm"  runat="server" AutoPostBack="True"></asp:TextBox>
                                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" ServiceMethod="SearchCustomers1"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_comp_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                        </td>
                        <td style="font-weight: bold">
                            Brocker
                        </td>
                        <td>
                              <asp:TextBox ID="txt_brok_nm" runat="server" Height="15px"></asp:TextBox>
                            <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" ServiceMethod="SearchCustomers2"
                                            MinimumPrefixLength="0" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                                            runat="server" TargetControlID="txt_brok_nm" FirstRowSelected="false">
                                        </cc1:AutoCompleteExtender>
                        </td>
                       
                    </tr>
                    <tr style="text-align: right">
                     <td style="font-weight: bold">
                            Date
                        </td>
                        <td>
                           <asp:TextBox ID="txt_inv_dt" runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txt_inv_dt"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                        </td>
                        <td style="font-weight: bold">
                            Percentage
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                    
                        <td colspan="5" style="text-align:center">
                            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
                        </td>
                    </tr>
                    
                </table>
                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="false" DataKeyNames="cust_brock_id">
                   <Columns>
                     <asp:BoundField DataField="company_nm" HeaderText="Company Name" />
                        <asp:BoundField DataField="brock_name" HeaderText="Brocker Name" />
                        <asp:BoundField DataField="applicabale_date" HeaderText="Applicable Date" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                         <asp:BoundField DataField="per" HeaderText="Persantage" />
                   </Columns>
                </asp:GridView>
            </center>
          
          
           
        </div>
          
       
    </div>
        
</asp:Content>

