<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addexpence.aspx.cs" Inherits="addexpence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="text-align: center;">
      Expense
    </h3>
<div style="height: 500px">
                <center>
                    <table width="25%">
                        <tr>
                            <td style="width: 250px;">
                                 Add Expense
                            </td>
                            <td>
                                <asp:TextBox ID="txt_expence" class="form-control" runat="server" 
                                     AutoPostBack="true" ontextchanged="txt_expence_TextChanged"></asp:TextBox>
                            </td>
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
                        AutoGenerateColumns="false" DataKeyNames="id"  OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="ex_name" HeaderText="Expense Name" />
                             <asp:TemplateField HeaderText="Delete">
                        <ItemStyle Width="80px" />
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" Text="Delete" 
                                OnClientClick="javascript:return confirm('Do you really want to \ndelete the item?');">  
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id","addexpence.aspx?id={0}") %>'
                                        Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </center>
            </div>

</asp:Content>

