<%@ Page Title="Item" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="Inventory_Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
 <h2><%: Title %>.</h2>
   <!--create form validation -->
     <!--clear form once submited -->
      
 <hr>
 <div class="row"> 

              <div class="col-md-8">  

              </div>
              
                   <div class="col-md-4">  
                    <ul class="nav nav-pills nav-justified">
                      <li><a href="Stock.aspx">Stock</a></li>
                      <li class="active"><a href="#">Add Item</a></li>
                    </ul>
                 </div>
        
 </div>
 <br>  
 <div class="row"> 


      <div class="col-md-3">   

     </div>


         <div class="col-md-6">           
           
                      <table class="tabletwo">
                          
                        <tr>
                          <th>Book Name</th>
                          <td> 
                              <asp:TextBox ID="TextBoxBookName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                           <th>ISBN</th>
                          <td> 
                              <asp:TextBox ID="TextBoxIsbn" runat="server"></asp:TextBox>
                          </td>
                        </tr>
                           <th>Author</th>
                          <td> 
                              <asp:TextBox ID="TextBoxAuthor" runat="server"></asp:TextBox>
                          </td>
                        </tr>
                           </tr>
                           <th>Publisher</th>
                          <td> 
                              <asp:TextBox ID="TextBoxPub" runat="server"></asp:TextBox>
                          </td>
                        </tr>
                           </tr>
                           <th>Category</th>
                          <td> 
                              <asp:TextBox ID="TextBoxCategory" runat="server"></asp:TextBox>
                          </td>
                        </tr>
                           </tr>
                           <th>Quantity</th>
                          <td>
                           <asp:TextBox ID="TextBoxQuant" runat="server"></asp:TextBox>
                          </td>
                        </tr>
                           </tr>
                           <th>Price</th>
                          <td>
                                  <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
                          </td>
                        </tr>
                           </tr>
                           <th>Retail</th>
                          <td>
                            <asp:TextBox ID="TextBoxRetail" runat="server"></asp:TextBox>
                          </td>

                          </tr>
                           </tr>
                           <th></th>
                          <td></td>
                        </tr>

                        </tr>
                           </tr>
                           <th>&nbsp;</th>
                          <td>
                              <asp:Button ID="Button1"  class="btn btn-warning" runat="server" OnClick="Button1_Click" Text="Add Book" />
                          </td>
                        </tr>

                      </table>

         </div>



     <div class="col-md-3">   

     </div>
  </div>

    
</asp:Content>
