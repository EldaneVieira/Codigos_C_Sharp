using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BuscaCEP
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (var ws = new WebServiceWSCorreios.AtendeClienteClient())
            {
                if (!string.IsNullOrWhiteSpace(txtCep.Text))
                {
                    try
                    {
                        var resultado = ws.consultaCEP(txtCep.Text);

                        txtEstado.Text = resultado.uf;
                        txtCidade.Text = resultado.cidade;
                        txtBairro.Text = resultado.bairro;
                        txtRua.Text = resultado.end;


                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    
                }
                else
                {
                    MessageBox.Show("Informe um CEP válido!");
                }
            }

        }


    }
}
