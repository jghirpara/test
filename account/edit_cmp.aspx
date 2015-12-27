<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit_cmp.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
            <asp:GridView ID="GridView1" class="table table-striped" runat="server" AutoGenerateColumns="false" DataKeyNames="id">
                <Columns>
                     <asp:BoundField DataField="company_name" HeaderText="Company Name" />
                     <asp:BoundField DataField="starting_form" HeaderText="Starting From" />
                     <asp:BoundField DataField="phone" HeaderText="Phone No" />
                     <asp:BoundField DataField="mobileno" HeaderText="Mobile No" />
                    <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id","editcomapanydetail.aspx?id={0}") %>'
                                    Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>

