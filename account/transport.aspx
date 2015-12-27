<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="transport.aspx.cs" Inherits="Default2" %>

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
    <div>
        <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span> </li>
            <li><a href="#">Customer</a> </li>
        </ul>
    </div>
    <div id="dvAccordian">
        <h3 style="text-align: center;">
            Ledger Sub Group</h3>
        <div style="height: 500px">
            <center>
                <table width="55%">
                    <tr>
                        <td style="font-weight: bold; text-align: left;">
                            Name
                        </td>
                        <td>
                            <asp:TextBox ID="txt_nm" runat="server"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold; text-align: left;">
                            Address
                        </td>
                        <td>
                            <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold; text-align: left;">
                            Phone
                        </td>
                        <td>
                            <asp:TextBox ID="txt_phn" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btn_sub" runat="server" Text="Save" 
                                Style="margin-bottom: 13px; height: 26px;" onclick="btn_sub_Click" />
                            <asp:Button ID="btn_up" runat="server" Text="Update" Visible="false" 
                                Style="margin-bottom: 13px;" onclick="btn_up_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" class="table table-striped" Width="250" runat="server"
                    AutoGenerateColumns="false" DataKeyNames="trp_id">
                    <Columns>
                        <asp:BoundField DataField="trp_nm" HeaderText="Name" />
                        <asp:BoundField DataField="trp_add" HeaderText="Name" />
                        <asp:BoundField DataField="phone_no" HeaderText="Name" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("trp_id","transport.aspx?trp={0}") %>'
                                    Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </center>
        </div>
    </div>
</asp:Content>
