<%@ Page Title="Stock" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Inventory_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %>.</h2>


 <hr>

     <div class="row"> 

              <div class="col-md-8">  

                    <form class="form-search">
                      <input type="text" class="input-medium search-query">
                       <div class="btn-group">
                      <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                        Search <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu">   
                        <li><a href="#">x</a></li>
                        <li class="divider"></li>
                        <li><a href="#">x</a></li>
                      </ul>
                    </div>
                    </form>

              </div>

               <div class="col-md-4">  
                    <ul class="nav nav-pills nav-justified">
                      <li class="active"><a href="#">Stock</a></li>
                      <li><a href="Item.aspx">Add Item</a></li>
                    </ul>
              </div>
        
 </div> <br> <br>  


       <div "style="overflow-x:auto;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Book Title">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ISBN">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("isbn") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("author") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Publisher">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("publisher") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Retail">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("retail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            No record found
        </EmptyDataTemplate>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    </div>
</asp:Content>

