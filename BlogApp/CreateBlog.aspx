<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateBlog.aspx.cs" Inherits="BlogApp.CreateBlog" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Create a blog</h3>

      <asp:Label id="titleLabel" AssociatedControlId="titleTextBox" Text="Title:" runat="server" /> <br />
        <asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:requiredfieldvalidator 
            runat="server" 
            ErrorMessage=" Title is mandatory" 
            Font-Italic="true"  
            ForeColor="Red"
            ControlToValidate="titleTextBox"/>
    
         <br /><br />

        <asp:Label id="contentLabel" AssociatedControlId="contentTextBox" Text="Content:" runat="server" />  <br />
        <asp:TextBox ID="contentTextBox" runat="server" TextMode="MultiLine"  Width="800px"></asp:TextBox>
        
        <asp:requiredfieldvalidator 
            runat="server" 
            ErrorMessage="Content is mandatory" 
            Font-Italic="true"  
            ForeColor="Red"
            Display="Dynamic"
            ControlToValidate="contentTextBox"/>

        <br /><br />
        <asp:Button id="submitBtn" runat="server" OnClick="submitBtn_Click" Text="Submit"/>

</asp:Content>
