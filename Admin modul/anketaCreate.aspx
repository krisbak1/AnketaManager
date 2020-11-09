<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anketaCreate.aspx.cs" Inherits="AnketaManager.anketaCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Kreiranje nove ankete --> 
    <div class="container">
      <div class="row">
         <div class="col-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                           <h4 style="text-align:center">Izrada ankete</h4>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Pitanje</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="pitanje" runat="server"
                               TextMode="MultiLine" Rows="2" placeholder="Pitanje"></asp:TextBox>
                        </div>
                     </div>                     
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Početak perioda aktivnosti</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="date_pocetak"
                               runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Kraj perioda aktivnosti</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="date_kraj" 
                               runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    
                  <div class="row">
                      <div class="col-6">
                          <label>Odgovor a)</label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="odgovor_a" runat="server" 
                               placeholder="Ponuđeni odgovor"></asp:TextBox>
                        </div>
                      </div>
                      <div class="col-6">
                          <label>Odgovor b)</label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="odgovor_b" runat="server" 
                               placeholder="Ponuđeni odgovor"></asp:TextBox>
                        </div>
                      </div>                     
                  </div>
                   <div class="row">
                      <div class="col-6">
                          <label>Odgovor c)</label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="odgovor_c" runat="server"
                               placeholder="Ponuđeni odgovor"></asp:TextBox>
                        </div>
                      </div>
                      <div class="col-6">
                          <label>Odgovor d)</label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="odgovor_d" runat="server" 
                               placeholder="Ponuđeni odgovor"></asp:TextBox>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg align-self-center" 
                                  ID="Button1" runat="server" Text="Submit" OnClick="AnketaSubmit"/>
                           </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>


</asp:Content>
