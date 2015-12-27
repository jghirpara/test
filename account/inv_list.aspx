<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="inv_list.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="true">
        </asp:DropDownList>
    </center>
    <br />
    <center>
        <asp:GridView ID="GridView1" class="table table-striped" 
            AutoGenerateColumns="false" PageSize="25" DataKeyNames="invoice_id" 
            runat="server" onpageindexchanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="invoice_no" HeaderText="Inv No" />
                <asp:BoundField DataField="company_nm" HeaderText=" Name" />
                <asp:BoundField DataField="transport_name" HeaderText="Transport Name" />
                <asp:BoundField DataField="brocker_name" HeaderText="Brocker Name" />
                <asp:BoundField DataField="total_amount" HeaderText="Amount" />
                <asp:TemplateField HeaderText="Print">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl='<%# Eval("invoice_id","invoicenew.aspx?inv={0}") %>'
                            Text="Print" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("invoice_id","inv_genrate.aspx?inv={0}") %>'
                            Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>
