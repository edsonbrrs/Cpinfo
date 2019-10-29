<%@ Page Title="Registros de Pessoas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registros.aspx.cs" Inherits="CadastroSimples.registros" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">    
    
    <div class="jumbotron">
        <div class="container">
            <h3>Pessoas Cadastradas</h3>
            <table border=1 cellspacing=0 cellpadding=2>
                <tr>
                    <th class="modal-sm" style="width: 398px">Nome</th>
                    <th style="width: 257px">CPF</th>
                    <th>Idade</th>
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
    </div>   

</asp:Content>
