<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="unit_master.aspx.cs" Inherits="Default2" %>

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
            Unit Master</h3>
        <div style="height: 500px">
            <center>
                <table width="55%">
                    <tr>
                        <td style="font-weight: bold; text-align: left;">
                            Unit Name
                        </td>
                        <td>
                            <asp:TextBox ID="txt_nm" runat="server"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold; text-align: left;">
                            Decimal Point
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                             <asp:Button ID="Button1" runat="server" Text="Save" 
                                 style=" margin-bottom: 13px;" onclick="Button1_Click" />
                                 <asp:Button ID="Button2" runat="server" Visible=false Text="Update" 
                                 style=" margin-bottom: 13px;" onclick="Button2_Click"/>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" class="table table-striped" Width="250" runat="server"
                    AutoGenerateColumns="false" DataKeyNames="unit_id">
                    <Columns>
                        <asp:BoundField DataField="unit_nm" HeaderText="Name" />
                         <asp:BoundField DataField="decimal_no" HeaderText="Decimal No" />
                           <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("unit_id","unit_master.aspx?un={0}") %>'
                                    Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </center>
        </div>
    </div>
</asp:Content>
