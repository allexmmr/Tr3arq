using Library.Common;
using System;
using System.Web.UI;

namespace Web
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region btnEnviar_Click

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                #region Envia e-mail ao usuário

                Mail mail = new Mail();

                // Criando o corpo do e-mail
                string mensagem;
                mensagem = "<html>";
                mensagem += "<head>";
                mensagem += "<title>TR3ARQ – Contato</title>";
                mensagem += "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>";
                mensagem += "</head>";
                mensagem += "<body bgcolor='#FFFFFF' leftmargin='0' topmargin='0' marginwidth='0' marginheight='0'>";
                mensagem += "<table width='600' border='0' cellpadding='0' cellspacing='0' align='center'>";
                mensagem += "<tr>";
                mensagem += "<td style='background-color: #333;'>";
                mensagem += "<p style='text-align: center;'><a href='http://www.tr3arq.com' target='_blank' title='TR3ARQ – Arquitetura e Interiores'><img src='http://www.tr3arq.com/Images/logo.png' width='117' height='57' border='0' alt='TR3ARQ – Arquitetura e Interiores'></a></p>";
                mensagem += "</td>";
                mensagem += "</tr>";
                mensagem += "<tr>";
                mensagem += "<td style='padding: 20px 30px 20px 30px; background-color: #e7b000; font-family: Arial, sans-serif; font-size: 13px; color: #333; text-align: left;'>";
                mensagem += "<p>Prezado(a) <b>" + txtNome.Text + "</b>,</p>";
                mensagem += "<p>Obrigado por entrar em contato conosco.</p>";
                mensagem += "<p>";
                mensagem += "<b>Nome completo:</b> " + txtNome.Text + "<br />";
                mensagem += "<b>E-mail:</b> <a href='mailto:" + txtEmail.Text + "' style='color: #333; text-decoration: none;'>" + txtEmail.Text + "</a><br />";
                mensagem += "<b>Assunto:</b> " + txtAssunto.Text + "<br />";
                mensagem += "<b>Mensagem:</b><br />";
                mensagem += txtMensagem.Text;
                mensagem += "</p>";
                mensagem += "</td>";
                mensagem += "</tr>";
                mensagem += "<tr>";
                mensagem += "<td style='padding: 10px; background-color: #333; font-family: Arial, sans-serif; font-size: 12px; color: #b0afb5; text-align: center;'>";
                mensagem += "© Copyright 2015-" + DateTime.Now.Year + " | <a href='http://www.tr3arq.com' target='_blank' title='TR3ARQ – Arquitetura e Interiores' style='color: #b0afb5; text-decoration: none;'>TR3ARQ – Arquitetura e Interiores</a> | Todos os direitos reservados.";
                mensagem += "</td>"; ;
                mensagem += "</tr>";
                mensagem += "</table>";
                mensagem += "</body>";
                mensagem += "</html>";

                mail.SenderName = "TR3ARQ – Arquitetura e Interiores";
                mail.SenderMail = "tr3arq@tr3arq.com";
                mail.Recipient = txtEmail.Text;
                mail.Subject = "Contato";
                mail.Message = mensagem;

                try
                {
                    mail.SendMail();
                    form.Visible = false;
                    message.Visible = true;
                    lblMensagem.Text = txtNome.Text + ", obrigado por entrar em contato conosco.";
                }
                catch (Exception)
                {
                    form.Visible = false;
                    message.Visible = true;
                    lblMensagem.Text = txtNome.Text + ", ocorreu um erro ao enviar sua mensagem.<br />" +
                        "Por favor, tente novamente mais tarde.";
                }

                #endregion
            }
        }

        #endregion

        #region btnLimpar_Click

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAssunto.Text = string.Empty;
            txtMensagem.Text = string.Empty;
        }

        #endregion
    }
}