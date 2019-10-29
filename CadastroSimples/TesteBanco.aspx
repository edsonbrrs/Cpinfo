<%@ Page Title="Registros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TesteBanco.aspx.cs" Inherits="CadastroSimples.registros" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron">

        <h3>Pessoas Registradas</h3>

        <div class="container">
            <table border=1 cellspacing=0 cellpadding=2 >
                <tr>
                    <th style="width: 250px">Nome</th>
                    <th style="width: 120px">CPF</th>
                    <th style="width: 60px">Idade</th>

                </tr>
                <asp:ListView runat="server" ID="ListaPessoas">
                    <ItemTemplate>
                    
                        <tr>
                            <th><%# DataBinder.Eval(Container.DataItem, "nome") %></th>
                            <th><%# DataBinder.Eval(Container.DataItem, "cpf") %></th>
                            <th><%# DataBinder.Eval(Container.DataItem, "idade") %></th>
                        </tr>

                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>



        

        <p><asp:Literal runat="server" ID="LtMensagem"></asp:Literal></p>

    </div>
    
</asp:Content>
