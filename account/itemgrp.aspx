<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="itemgrp.aspx.cs" Inherits="Default2" %>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h3 style="text-align: center;">
                Sub Group</h3>
            <div style="height: 500px">
                <center>
                    <table width="25%">
                        <tr>
                            <td style="width: 250px;">
                                Item Group
                            </td>
                            <td>
                                <asp:TextBox ID="txt_add_pro" class="form-control" runat="server" OnTextChanged="txt_add_pro_TextChanged"
                                    AutoPostBack="true"></asp:TextBox>
                            </td>
                        </tr>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" Visible="false" Text="Update" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" class="table table-striped" Width="250" runat="server"
                        AutoGenerateColumns="false" DataKeyNames="item_grp_id">
                        <Columns>
                            <asp:BoundField DataField="item_grp_nm" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("item_grp_id","itemgrp.aspx?itmgrp={0}") %>'
                                        Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </center>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
