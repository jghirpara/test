<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="item_msater.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span> </li>
            <li><a href="#">Customer</a> </li>
        </ul>
    </div>
    <h3 align="center">
        Item Master</h3>
    <hr style="border-color: #3A94CA" />
    <br />
    <div id="dialog" style="display: none">
    </div>
    <h3 style="text-align: center;">
    </h3>
    <br />
    <div>
     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
        <table width="100%" border="1">
            <tr>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <td style="width: 50%">
                            <table align="center">
                                <tr>
                                    <td>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold;">
                                                Item Name
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" AutoPostBack="true"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; width: 11%">
                                                Under Group
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="dwd_grp" runat="server" Width="99%" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold;">
                                                Item Code
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" Height="15px"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold;">
                                                Nick Name
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox6" runat="server" Height="15px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="text-align: right">
                                            <td style="font-weight: bold">
                                                Item Description
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" Height="15px"></asp:TextBox>
                                            </td>
                                         
                                            <td style="font-weight: bold;">
                                                Unit
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" Width="99%" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        
                                      
                                        </tr>
                                       <%-- <tr style="text-align: right">
                                            <td style="font-weight: bold;">
                                                Opening Stock
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold;">
                                                Opening Date
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox2" DaysModeTitleFormat="MM-yyyy"
                                                    Format="dd-MM-yyyy" runat="server">
                                                </asp:CalendarExtender>
                                            </td>
                                        </tr>--%>
                                       
                                        <tr style="text-align: right;">
                                            <td style="font-weight: bold; width: 19%">
                                                HSN Code
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_hsn" class="form-control" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="font-weight: bold; width: 14%">
                                                Tarif NO
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_tarif_no" class="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                            </table>
                            <br />
                            <center>
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" Visible="false" Text="Update" OnClick="Button2_Click" />
                            </center>
                            <br />
                        </td>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <td style="width: 50%" valign="top">
                    <asp:GridView ID="GridView1" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging"
                        AllowPaging="True" class="table table-striped" runat="server" AutoGenerateColumns="false"
                        DataKeyNames="item_id" PageSize="20">
                        <Columns>
                            <asp:BoundField DataField="item_name" HeaderText="Item Name" />
                            <asp:BoundField DataField="item_code" HeaderText="Code" />
                            <asp:BoundField DataField="item_des" HeaderText="Description" />
                            <asp:BoundField DataField="unit" HeaderText="Unit" />
                            <asp:BoundField DataField="hsn_code" HeaderText="HSN" />
                            <asp:BoundField DataField="tariff_no" HeaderText="Teriff NO" />
                            <asp:TemplateField HeaderText="Delete">
                                <ItemStyle Width="80px" />
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" Text="Delete"
                                        OnClientClick="javascript:return confirm('Do you really want to \ndelete the item?');">  
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("item_id","item_msater.aspx?itm={0}") %>'
                                        Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table></ContentTemplate></asp:UpdatePanel>
    </div>
</asp:Content>
