<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="tarrif.aspx.cs" Inherits="tarrif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 style="text-align: center;">
        Excise Commodity
    </h3>
    <div style="height: 500px">
        <center>
            <table width="25%">
                <tr>
                    <td style="width: 250px;">
                        Excise Commodity
                    </td>
                    <td>
                        <asp:TextBox ID="txt_comodity" class="form-control" runat="server" 
                            ontextchanged="txt_comodity_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Tarrif No
                    </td>
                    <td>
                        <asp:TextBox ID="txt_tarifno" class="form-control" runat="server" 
                            ontextchanged="txt_tarifno_TextChanged" AutoPostBack ="true" ></asp:TextBox>
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
            <asp:GridView ID="GridView1" class="table table-striped" Width="500" runat="server"
                OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="false" DataKeyNames="trf_id">
                <Columns>
                    <asp:BoundField DataField="exc_comodity" HeaderText="Excise Commodity" />
                    <asp:BoundField DataField="tarff_no" HeaderText="Tarrif No " />
                    <asp:TemplateField  HeaderText ="Delete">
                        <ItemStyle Width="80px" />
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" Text="Delete"
                                OnClientClick="javascript:return confirm('Do you really want to \ndelete the item?');">  
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("trf_id","tarrif.aspx?id={0}") %>'
                                Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </center>
    </div>
</asp:Content>
