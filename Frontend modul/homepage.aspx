<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="AnketaManager.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container-fluid"  >
        <div class="row">
            <h1 class="col-md-2">User page:</h1>
                <button class="btn btn-primary btn-lg btn-block col-md-3" formaction="/userpage.aspx">User</button>
        </div>
        <br />
        <div class="row">
            <h1 class="col-md-2">Admin page:</h1>
                <button class="btn btn-primary btn-lg btn-block col-md-3" formaction="/adminpage.aspx">Admin</button>
        </div>
    </div>
    <br />
</asp:Content>

