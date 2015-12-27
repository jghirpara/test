<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="add_sub_grp.aspx.cs" Inherits="Default2" %>

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
            Sub Group</h3>
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
                            Under Group
                        </td>
                        <td>
                            <asp:DropDownList ID="dwd_grp" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btn_sub" runat="server" Text="Save" Style="margin-bottom: 13px;"
                                OnClick="btn_sub_Click" />
                            <asp:Button ID="btn_up" runat="server" Text="Update" Visible="false" 
                                Style="margin-bottom: 13px;" onclick="btn_up_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" class="table table-striped" Width="250" runat="server"
                    AutoGenerateColumns="false" DataKeyNames="grp_id">
                    <Columns>
                        <asp:BoundField DataField="grp_name" HeaderText="Name" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("grp_id","add_sub_grp.aspx?gp={0}") %>'
                                    Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </center>
        </div>
    </div>
</asp:Content>
