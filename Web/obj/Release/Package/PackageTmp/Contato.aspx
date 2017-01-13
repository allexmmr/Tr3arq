<%@ Page Title="TR3ARQ – Contato" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Web.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            //  Initialize Background Stretcher
            $('BODY').bgStretcher({
                images: ['Images/slide-1.jpg'],
                imageWidth: 1920,
                imageHeight: 1080,
                resizeProportionally: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
        <div class="main-block">
            <div class="container_12">
                <div class="wrapper border-vert">
                    <article class="grid_5">
                        <h3>Contato</h3>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div id="contact-form">
                                    <fieldset id="form" runat="server">
                                        <div>
                                            <label>
                                                <asp:TextBox ID="txtNome" placeholder="Nome" runat="server"></asp:TextBox>
                                                <br />
                                                <span class="error">
                                                    <asp:RequiredFieldValidator ID="reqNome" ErrorMessage="Por favor, preencha o seu nome." ControlToValidate="txtNome" ValidationGroup="Formulario" SetFocusOnError="true" runat="server"></asp:RequiredFieldValidator>
                                                </span>
                                            </label>
                                            <label>
                                                <asp:TextBox ID="txtEmail" placeholder="E-mail" runat="server"></asp:TextBox>
                                                <br />
                                                <span class="error">
                                                    <asp:RequiredFieldValidator ID="reqEmail" ErrorMessage="Por favor, preencha o seu e-mail." ControlToValidate="txtEmail" ValidationGroup="Formulario" SetFocusOnError="true" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="regularExpression" ErrorMessage="Por favor, preencha um e-mail válido." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Formulario" SetFocusOnError="true" Display="Dynamic" runat="server"></asp:RegularExpressionValidator>
                                                </span>
                                            </label>
                                            <label>
                                                <asp:TextBox ID="txtAssunto" placeholder="Assunto" runat="server"></asp:TextBox>
                                                <br />
                                                <span class="error">
                                                    <asp:RequiredFieldValidator ID="reqAssunto" ErrorMessage="Por favor, preencha o assunto." ControlToValidate="txtAssunto" ValidationGroup="Formulario" SetFocusOnError="true" runat="server"></asp:RequiredFieldValidator>
                                                </span>
                                            </label>
                                            <label class="message">
                                                <asp:TextBox ID="txtMensagem" placeholder="Mensagem" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                <br />
                                                <span class="error">
                                                    <asp:RequiredFieldValidator ID="reqMensagem" ErrorMessage="Por favor, preencha a mensagem." ControlToValidate="txtMensagem" ValidationGroup="Formulario" SetFocusOnError="true" runat="server"></asp:RequiredFieldValidator>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="buttons-wrapper">
                                            <asp:LinkButton ID="btnEnviar" Text="Enviar" ToolTip="Enviar" CssClass="button" ValidationGroup="Formulario" runat="server" OnClick="btnEnviar_Click" />
                                            <asp:LinkButton ID="btnLimpar" Text="Limpar" ToolTip="Limpar" CssClass="button" runat="server" OnClick="btnLimpar_Click" />
                                        </div>
                                    </fieldset>
                                    <div id="message" class="success" runat="server" visible="false">
                                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <div style="height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 99999; background-color: #fff; opacity: 0.7; text-align: center; position: fixed;">
                                    <span style="top: 50%; left: 50%; margin-top: -16px; margin-left: -15px; position: fixed;"><img src="Images/loading.gif" alt="Loading" /></span>
                                </div>
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                    </article>
                    <article class="grid_5 prefix_2">
                        <h3>TR3ARQ</h3>
                        <div class="map">
                            <iframe src="https://maps.google.com.br/maps?sll=-23.5251249,-46.7098256&amp;sspn=0.0075549,0.0109864&amp;q=R.+Bar%C3%A3o+de+Jundia%C3%AD,+522+-+Lapa,+S%C3%A3o+Paulo+-+SP,+05073-010&amp;ie=UTF8&amp;hq=&amp;hnear=R.+Bar%C3%A3o+de+Jundia%C3%AD,+522+-+Lapa,+S%C3%A3o+Paulo,+05073-010&amp;t=m&amp;z=14&amp;ll=-23.525125,-46.709826&amp;output=embed"></iframe>
                        </div>
                        <dl class="address">
                            <dt>
                                <strong>TR3ARQ – Arquitetura e Interiores</strong>
                                <br />
                                Rua Barão de Jundiaí, 522
                                <br />
                                Alto da Lapa
                                <br />
                                São Paulo, SP
                            </dt>
                            <dd><span>Tel.:</span> +55 11 3938-7468</dd>
                            <dd><span>E-mail:</span> <asp:HyperLink ID="lnkEmail" NavigateUrl="mailto: tr3arq@tr3arq.com" ToolTip="Envie-nos um e-mail" runat="server">tr3arq@tr3arq.com</asp:HyperLink></dd>
                        </dl>
                    </article>
                </div>
            </div>
        </div>
    </section>
</asp:Content>