using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CadastroSimples
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnCadastrar.Click += BtnCadastrar_Click;   
        }

        private void BtnCadastrar_Click(object sender, EventArgs e)
        {
            var novaPessoa = new Models.Pessoas();
            novaPessoa.nome = TxtNome.Text;
            novaPessoa.cpf = TxtCPF.Text;

            int anos;
            anos = Convert.ToInt32(TxtIdade.Text);
            novaPessoa.idade = anos;

            novaPessoa.ativo = true;

            bool cadastrado = DAO.Pessoa.Cadastrar(novaPessoa);
            if (cadastrado)
            {
                ltMensagem.Text = novaPessoa.nome + " cadastrado(a) com sucesso!";
            }
            else
            {
                ltMensagem.Text = " erro ao cadastrar: " + novaPessoa.nome + "!";
            }
        }
    }
}