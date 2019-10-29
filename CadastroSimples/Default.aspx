<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CadastroSimples._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">


        <h3>Cadastro de Pessoas</h3>
        
            <div class="campo">
                <asp:Label runat="server" AssociatedControlID="txtNome">Nome: </asp:Label>
                <asp:TextBox runat="server" ID="TxtNome"></asp:TextBox>
            </div>            
            <div class="campo">
                <asp:Label runat="server" AssociatedControlID="txtCPF">CPF: </asp:Label>
                <asp:TextBox runat="server" ID="TxtCPF"></asp:TextBox>
            </div>            
            <div class="campo">
                <asp:Label runat="server" AssociatedControlID="txtIdade">Idade: </asp:Label>
                <asp:TextBox runat="server" ID="TxtIdade"></asp:TextBox>
            </div>       
            <div class="campo">
                <asp:Button runat="server" ID="BtnCadastrar" Text="Cadastrar Pessoa" />
                <p><asp:Literal runat="server" ID="ltMensagem"></asp:Literal></p>
            </div>

    </div>    

</asp:Content>
