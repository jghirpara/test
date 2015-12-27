<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="dc_list.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Visible="false" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    </center>
    <br />
    <center>
        <asp:GridView ID="GridView1" class="table table-striped" AutoGenerateColumns="false"
            DataKeyNames="invoice_id" runat="server" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="25">
            <Columns>
                <asp:BoundField DataField="dc_no" HeaderText="Dc No" />
                <asp:BoundField DataField="company_nm" HeaderText=" Name" />
                <asp:BoundField DataField="transport_name" HeaderText="Transport Name" />
                <asp:BoundField DataField="brocker_name" HeaderText="Brocker Name" />
                <asp:BoundField DataField="total_amount" HeaderText="Amount" />
                <asp:TemplateField HeaderText="Print">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl='<%# Eval("invoice_id","Default2.aspx?inv={0}") %>'
                            Text="Print" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>
