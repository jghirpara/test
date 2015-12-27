<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="company_list.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 align="center">
        Company List</h3>
    <hr style="border-color: #3A94CA" />
    <br />
    <asp:GridView ID="GridView1" class="table table-striped" OnRowDeleting="GridView1_RowDeleting"
        OnRowDataBound=" OnRowDataBound" runat="server" Width="100%" 
        AutoGenerateColumns="false"   AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" 
        DataKeyNames="cust_id" PageSize="25">
        <Columns>
            <asp:BoundField DataField="company_name" HeaderText="Company Name" />
            <asp:BoundField DataField="contact_per_name" HeaderText="Contact Person" />
            <asp:BoundField DataField="contact_no" HeaderText="Contact NO" />
            <asp:BoundField DataField="nick_nm" HeaderText="Nick Name" />
            <%-- <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" ButtonType="Button"      DeleteText="Delete">
                                            <ItemStyle ForeColor="#003399" />
                                        </asp:CommandField>--%>
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
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("cust_id","company_master.aspx?cmp={0}") %>'
                        Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
