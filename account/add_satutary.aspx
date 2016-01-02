<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="add_satutary.aspx.cs" Inherits="Default2" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h3 style="text-align: center;">
                Sub Group</h3>

                <table>
                nckndslnclsdn
                <tr>
                <td>shcuadshcb</td>
                </tr>
                </table>
                
                </test>
            <div style="height: 500px">
                <center>
                    <table width="25%">
                        <tr style="height: 35px;">
                            <td style="font-weight: bold; text-align: right;">
                                Type of statutory
                            </td>
                            <td>
                                <asp:DropDownList ID="dwd_stu" runat="server" 
                                    onselectedindexchanged="dwd_stu_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Vat Class</asp:ListItem>
                                    <asp:ListItem>Dutys And Taxes</asp:ListItem>
                                    <asp:ListItem>Cst</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <asp:Panel ID="Panel1" Visible="true" runat="server">
                      <tr style="height: 35px;">
                            <td style="font-weight: bold; text-align: right;">
                               Tax Name
                            <td>
                                <asp:TextBox ID="txt_nm" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 35px;">
                            <td style="font-weight: bold; text-align: right;">
                               Tax
                            </td>
                            <td>
                                <asp:TextBox ID="txt_tax" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 35px;">
                            <td style="font-weight: bold; text-align: right;">
                                Add Tax 
                            </td>
                            <td>
                                <asp:TextBox ID="txt_add_vat" Enabled="false" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr style="height: 35px;">
                            <td style="font-weight: bold; text-align: right;">
                                Applicable Date
                            </td>
                            <td>
                                <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_date"
                                            Format="dd/MM/yyyy">
                                        </cc1:CalendarExtender>
                            </td>
                        </tr>
                           </asp:Panel>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" Visible="false" Text="Update" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                     <asp:GridView ID="GridView1" class="table table-striped" Width="250" runat="server"
                        AutoGenerateColumns="false" DataKeyNames="stu_id">
                        <Columns>
                            <asp:BoundField DataField="satutary_nm" HeaderText="Name" />
                              <asp:BoundField DataField="vat" HeaderText="Tax(%)" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("stu_id","add_satutary.aspx?strp={0}") %>'
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
