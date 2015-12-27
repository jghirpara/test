<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="company_master.aspx.cs" Inherits="Default2" %>

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
    <div id="dvAccordian" style="width: ">
        <h3>
            Basic Detail</h3>
        <div>
            <center>
             
                        <table>
                            <tr style="text-align: right">
                                <td style="font-weight: bold;">
                                    Name
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="15px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="text-align: right">
                                <td style="font-weight: bold">
                                    Group
                                </td>
                                <td>
                                    <asp:DropDownList ID="dwd_grp" runat="server" OnSelectedIndexChanged="dwd_grp_SelectedIndexChanged"
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                           
                        </table>
                
            </center>
            <%-- <asp:Button ID="Button1" onclick="openNextAccordionPanel(); runat="server" Text="Submit" />--%>
        </div>
        <h3>
            statuary Detail</h3>
        <div>
            <center>
                <asp:Panel ID="Panel1" Visible="false" runat="server">
                 <table width="75%">
                    <tr style="text-align: right">
                        <td style="font-weight: bold;">
                            Compnay Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Contact Person
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Phone No.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox13" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Address 1
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox14" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Address 2
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox15" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Pin Code
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox16" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            State
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            City
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            Date
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox17" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Bank Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox18" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Branch
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox19" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Ifsc
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox20" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
                 <asp:Panel ID="Panel2" Visible="false" runat="server">
                 <table width="75%">
                    <tr style="text-align: right">
                        <td style="font-weight: bold;">
                            Bank Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Contact Person
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Phone No.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Address 1
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Address 2
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Pin Code
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            State
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            City
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" Height="25px" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td style="font-weight: bold">
                            Date
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td style="font-weight: bold">
                            Bank Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Branch
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" Height="15px"></asp:TextBox>
                        </td>
                        <td style="font-weight: bold">
                            Ifsc
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox21" runat="server" Height="15px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
            </center>
        </div>
    </div>
</asp:Content>
