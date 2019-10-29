using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CadastroSimples.DAO
{
    public class Pessoa
    {
        public static bool Cadastrar(Models.Pessoas pessoa)
        {
            try
            {
                using (var conexao = new Models.CadastroDePessoasEntities())
                {
                    conexao.Pessoas.Add(pessoa);
                    conexao.SaveChanges();
                    return true;
                }
            }
            catch (Exception erro)
            {
                return false;
            }
        }
        public static IEnumerable<Models.Pessoas> ListarPessoas()
        {
            try
            {
                using (var conexao = new Models.CadastroDePessoasEntities())
                {
                    return conexao.Pessoas.ToList();
                }
            }
            catch
            {
                return new List<Models.Pessoas>();
            }

        } 
    }
}