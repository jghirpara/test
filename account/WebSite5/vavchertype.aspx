<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="vavchertype.aspx.cs" Inherits="Default2" %>

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
    <div id="dvAccordian">
        <h3 style="text-align: center">Voucher Type</h3>
        <div>
            <center>

                <center>
                    <table>
                        <tr>
                            <td style="font-weight: bold; text-align: left;">Name
                            </td>
                            <td>
                                <asp:TextBox ID="txt_nm" runat="server"></asp:TextBox>
                            </td>
                            <td style="font-weight: bold; text-align: left;">Under Group
                            </td>
                            <td>
                                <asp:DropDownList ID="dwd_grp" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="text-align: right">
                            <td style="font-weight: bold;">Invoice no
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>Automatic</asp:ListItem>
                                    <asp:ListItem>Manual</asp:ListItem>
                                    <asp:ListItem>Custom</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="font-weight: bold"><asp:Label ID="Label1" runat="server" Visible="false" Text="Invoice no Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" Visible="false" Height="15px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="text-align: right">
                            <td style="font-weight: bold; text-align: left;" colspan="6">Terms & Condition
                            </td>
                        </tr>
                        <tr style="text-align: right">
                            <td style="font-weight: bold; height: 270px" colspan="6">
                                <span class="field">
                                    <div style="margin-left: 50px;">
                                        <cc1:Editor ID="Editor1" runat="server" Width="400px" Height="10" />
                                    </div>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" Visible="false" Text="Update" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </center>
                <br />
                <asp:GridView ID="GridView1" class="table table-striped" runat="server" AutoGenerateColumns="false" DataKeyNames="vch_id">
                <Columns>
                    <asp:BoundField DataField="vch_nm" HeaderText="Invoice Name" />
                    <asp:BoundField DataField="term_condition" HeaderText="Address" />
                      <asp:BoundField DataField="ino_no_type" HeaderText="Contact NO" />
                      <asp:BoundField DataField="ino_no_partan" HeaderText="Contact NO" />
                      <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("vch_id","vavchertype.aspx?vch={0}") %>'
                                    Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </center>
        </div>
    </div>
</asp:Content>
