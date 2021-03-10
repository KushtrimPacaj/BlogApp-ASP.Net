<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BlogApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h4>Email: <a href="mailto:kushtrimpacaj@gmail.com">kushtrimpacaj@gmail.com</a></h4>



    <br />
    <p>Or you can use the form below:</p>

        <asp:Label id="nameLabel" AssociatedControlId="nameTextBox" Text="Name:" runat="server" /> <br />
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:requiredfieldvalidator 
            runat="server" 
            ErrorMessage=" Name is mandatory" 
            Font-Italic="true"  
            ForeColor="Red"
            ControlToValidate="nameTextBox"/>
    
         <br /><br />

        <asp:Label id="emailLabel" AssociatedControlId="emailTextBox" Text="Email:" runat="server" />  <br />
        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>&nbsp;

        <asp:RegularExpressionValidator 
            ID="regexEmailValid" 
            runat="server" 
            ValidationExpression="[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,64}"
            ControlToValidate="emailTextBox" 
            Font-Italic="true"  
            Display="Dynamic"
            ForeColor="Red"
            ErrorMessage="Invalid Email Format"/>
            &nbsp;
         <asp:requiredfieldvalidator 
            runat="server" 
            ErrorMessage="Email is mandatory" 
            Font-Italic="true"  
            ForeColor="Red"
            Display="Dynamic"
            ControlToValidate="emailTextBox"/>

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

         <br /> <br /> <br />
        <asp:validationsummary ID="MyVS" runat="server"
            HeaderText="These errors where found:"
            ShowSummary="true" 
            DisplayMode="BulletList" 
            ForeColor="Red"></asp:validationsummary>

        

</asp:Content>
