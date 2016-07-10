﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GroupProject.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="row">
        <div class="col-md-8">


    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        
        <div class="form-group">
          <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="form-control" TextMode="Text"></asp:Label>  
          <div class="col-md-10">
              <asp:TextBox runat="server" ID="FirstName" required="true"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ID="FirstNameVal" ControlToValidate="FirstName" CssClass="alert-danger" 
                  ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
          </div>
        </div>
        
        div class="form-group">
          <asp:Label runat="server" AssociatedControlID="LastName" CssClass="form-control" TextMode="Text"></asp:Label>  
          <div class="col-md-10">
              <asp:TextBox runat="server" ID="LastName" required="true"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ID="LastNameVal" ControlToValidate="LastName" CssClass="alert-danger" 
                  ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
          </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="EmailTb" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required."></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="emailVal" runat="server" ControlToValidate="EmailTb" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="You must enter a valid email address!"></asp:RegularExpressionValidator>

            </div>
        </div>

        <div class="form-group">
                    <asp:Label ID="UserLb" runat="server">UserName</asp:Label>
                    <asp:TextBox CssClass="form-control" ID="UserNameTb" required="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="UserNameReq" ControlToValidate="UserNameTb" CssClass="alert alert-danger" 
                        ErrorMessage="User Name Required" ></asp:RequiredFieldValidator>
                </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
            </div>
       
        <div class="col-md-4" style="margin-top:55px;">
            <asp:Image id="Image1" runat="server"
           AlternateText="register"
           ImageAlign="left"
           ImageUrl="~/icons/register.png"/>
         </div>
    
</asp:Content>
