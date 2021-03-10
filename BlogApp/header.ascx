<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="BlogApp.WebUserControl1" %>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand"  id="HomeTitle" runat="server" href="~/">BlogApp</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" id="Home" href="~/">Home</a></li>
                        <li><a runat="server" id="About" href="~/About">About</a></li>
                        <li><a runat="server" id="Contact" href="~/Contact">Contact</a></li>
                        <li><a runat="server" id="CreateBlog" href="~/CreateBlog">Create new blog!</a></li>
                    </ul>
                </div>
            </div>
        </div>