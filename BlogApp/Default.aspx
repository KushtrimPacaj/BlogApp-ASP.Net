<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
 <div>    
    <asp:TextBox ID="searchText" runat="server" ToolTip="Search blogs"></asp:TextBox>   <asp:Button ID="searchBtn" runat="server" Text="Search" onclick="searchBtn_Click" />  
     <br />
    <asp:Label ID="nothingFoundLabel" runat="server" ForeColor="Red" Text="No blogs found" Visible="false"></asp:Label>  

     <br />     <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   CssClass="gridview"   AlternatingRowStyle-CssClass="even"
        OnRowDataBound = "OnRowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged" DataKeyNames="id"
        AllowPaging="true" CellPadding="80" CellSpacing="10">  
        <Columns>
           <asp:BoundField DataField="id" HeaderText=" " ItemStyle-CssClass="gridview_first"/>
           <asp:BoundField DataField="name" HeaderText="Titulli" ItemStyle-CssClass="gridview_second"/>
           <asp:BoundField DataField="content" HeaderText="Permbajtja e shkurter" ItemStyle-CssClass="gridview_third"/>

        </Columns>



        <HeaderStyle ForeColor="Gray" />



    </asp:GridView>   

</div>  


</asp:Content>
