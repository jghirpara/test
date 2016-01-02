<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="brockre_master.aspx.cs" Inherits="Default2" %>

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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span> </li>
            <li><a href="#">Customer</a> </li>
        </ul>
        <table>
        <tr></tr>
        dsadsad
        </table>
    </div>
    <div id="dvAccordian" style="width: ">
        <h3 style="text-align:center">
            Brockre</h3>
        <div>
            <center>
                <table width="75%">
                    <tr style="text-align: right">
                        <td style="font-weight: bold;">
                            Brocker Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Phone No.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Address 1
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Address 2
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            State
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" Height="25px" runat="server" 
                                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            City
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center">
                            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Visible="false" Text="Update" OnClick="Button2_Click" />
                        </td>
                    </tr>
                  </table>
            </center>
            <br />

            <%-- <asp:Button ID="Button1" onclick="openNextAccordionPanel(); runat="server" Text="Submit" />--%>
            <asp:GridView ID="GridView1" class="table table-striped" runat="server" AutoGenerateColumns="false" DataKeyNames="brock_id">
                <Columns>
                    <asp:BoundField DataField="brock_nm" HeaderText="Invoice Name" />
                    <asp:BoundField DataField="address_1" HeaderText="Address" />
                    <asp:BoundField DataField="address_2" HeaderText="Address" />
                      <asp:BoundField DataField="contact_no" HeaderText="Contact NO" />
                      <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("brock_id","brockre_master.aspx?bck={0}") %>'
                                    Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
