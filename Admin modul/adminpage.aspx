<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="AnketaManager.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center">Ankete</h2><br />
    <div class="container">
        <div class="row" style="overflow:scroll;">

            <!-- Select query za prikaz anketa 
                 Update query nakon pritiska na 'Update' button, ne mjenjaju se vrijedosti za broj glasova 
                 Delete query briše red u kojem je 'Delete' button pritisnut
                  --> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anketaDBConnectionString %>" 
                    SelectCommand="SELECT * FROM [anketa_table];" 
                    UpdateCommand="UPDATE anketa_table SET pitanje = @pitanje, date_pocetak = @date_pocetak,
                    date_kraj = @date_kraj, odgovor_a = @odgovor_a, odgovor_b = @odgovor_b, 
                    odgovor_c = @odgovor_c, odgovor_d = @odgovor_d WHERE anketa_id = @anketa_id;" 
                    DeleteCommand="DELETE FROM anketa_table WHERE anketa_id = @anketa_id; ">

                <UpdateParameters>
                    <asp:Parameter Name="pitanje" Type="String" />
                    <asp:Parameter Name="date_pocetak" Type="String" />
                    <asp:Parameter Name="date_kraj" Type="String" />
                    <asp:Parameter Name="pitanje_a" Type="String" />
                    <asp:Parameter Name="pitanje_b" Type="String" />
                    <asp:Parameter Name="pitanje_c" Type="String" />
                    <asp:Parameter Name="pitanje_d" Type="String" />
                    <asp:Parameter Name="anketa_id" Type="Int32" />
                </UpdateParameters> 

                </asp:SqlDataSource> 
            
                <!-- Data binding --> 
                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" 
                    AutoGenerateColumns="False" DataKeyNames="anketa_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="anketa_id" HeaderText="anketa_id" InsertVisible="False" ReadOnly="True" SortExpression="anketa_id" />
                        <asp:BoundField DataField="pitanje" HeaderText="pitanje" SortExpression="pitanje" />
                        <asp:BoundField DataField="date_pocetak" HeaderText="date_pocetak" SortExpression="date_pocetak" />
                        <asp:BoundField DataField="date_kraj" HeaderText="date_kraj" SortExpression="date_kraj" />
                        <asp:BoundField DataField="odgovor_a" HeaderText="odgovor_a" SortExpression="odgovor_a" />
                        <asp:BoundField DataField="broj_glasova_a" HeaderText="broj_glasova_a" SortExpression="broj_glasova_a" />
                        <asp:BoundField DataField="odgovor_b" HeaderText="odgovor_b" SortExpression="odgovor_b" />
                        <asp:BoundField DataField="broj_glasova_b" HeaderText="broj_glasova_b" SortExpression="broj_glasova_b" />
                        <asp:BoundField DataField="odgovor_c" HeaderText="odgovor_c" SortExpression="odgovor_c" />
                        <asp:BoundField DataField="broj_glasova_c" HeaderText="broj_glasova_c" SortExpression="broj_glasova_c" />
                        <asp:BoundField DataField="odgovor_d" HeaderText="odgovor_d" SortExpression="odgovor_d" />
                        <asp:BoundField DataField="broj_glasova_d" HeaderText="broj_glasova_d" SortExpression="broj_glasova_d" /> 
                        
                        <!-- Edit i Delete buttons --> 
                        <asp:commandfield showeditbutton="true"
                            buttontype="Link"
                            headertext="Edit"/> 
                        <asp:commandfield showdeletebutton="true"
                            buttontype="Link"
                            headertext="Delete"/>
                    </Columns>
                </asp:GridView>
        </div>    

        <div class="row">
            <!-- Preusmjeravanje na stranicu za kreiranje ankete --> 
            <button class="btn btn-success btn-lg btn-block col" formaction="/anketaCreate.aspx">Create New</button>
        </div>
    </div>

</asp:Content>
