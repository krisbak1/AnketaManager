<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userpage.aspx.cs" Inherits="AnketaManager.userpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Placeholder za prikazanu anketu --> 
    <div class="container-fluid">
        <h1>Pitanje</h1>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
          <label class="form-check-label" for="exampleRadios1">
            Prvi odgovor
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
          <label class="form-check-label" for="exampleRadios2">
            Drugi odgovor
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
          <label class="form-check-label" for="exampleRadios3">
            Treci odgovor
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios4" value="option4">
          <label class="form-check-label" for="exampleRadios4">
            Cetvrti odgovor
          </label>
        </div>
        <br />
        <button class="btn btn-primary btn-lg btn-block col-md-3">Submit</button>
      </div>
</asp:Content>
