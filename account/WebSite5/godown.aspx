<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="godown.aspx.cs" Inherits="Default2" %>

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
        <h3 style="text-align: center">
            Godown Master</h3>
        <div>
            <center>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <center>
                            <table>
                                <tr>
                                    <td style="font-weight: bold; text-align: left;">
                                        Godown Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_nm" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center">
                                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                            <asp:Button ID="Button2" runat="server" Text="Update" Visible="false" 
                                            onclick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:GridView ID="GridView1" class="table table-striped" Width="250" runat="server"
                                AutoGenerateColumns="false" DataKeyNames="godw_id">
                                <Columns>
                                    <asp:BoundField DataField="godw_nm" HeaderText="Name" />
                                      <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("godw_id","godown.aspx?gwd={0}") %>'
                                                Text="Edit" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </center>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </center>
        </div>
    </div>
</asp:Content>
