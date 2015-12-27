<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="item_msater.aspx.cs" Inherits="Default2" %>

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
    <div id="dialog" style="display: none">
        <table>
            <tr>
                <td style="width: 250px;">
                    Item Group
                </td>
                <td>
                    <asp:TextBox ID="txt_add_pro" class="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Save</asp:LinkButton>
                   
                </td>
            </tr>
        </table>
    </div>

    <div id="dvAccordian" style="width: ">
        <h3 style="text-align: center;">
            Item Master</h3>
        <div>
            <center>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <center>
                            <table>
                                <tr style="text-align: right">
                                    <td style="font-weight: bold;">
                                        Item Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="font-weight: bold; text-align: left;">
                                        Under Group
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="dwd_grp" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left">
                                        <asp:ImageButton ID="id" ImageUrl="~/img/165943929.jpg" Height="20%" Width="20%"
                                            Style="margin-bottom: 10px" runat="server" />
                                         <%--   <asp:LinkButton id="lbtn1" onClick="showPanel('dialog');return false;"  >sifdoajfc</asp:LinkButton>--%>
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
                                        Barcode
                                    </td>
                                    <td>
                                        <asp:Image ID="Image2" runat="server" />
                                    </td>
                                </tr>
                                <tr style="text-align: right">
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
                                    </td>
                                </tr>
                                <tr style="text-align: right">
                                    <td style="font-weight: bold;">
                                        Unit
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="font-weight: bold;">
                                        MRP
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center">
                                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                        <asp:Button ID="Button2" runat="server" Visible="false" Text="Update" />
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </center>
        </div>
    </div>
   
</asp:Content>
