<%@ Page Title="TR3ARQ – Perfil" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Web.Perfil" %>

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
                        <h3>Perfil</h3>
                        <figure class="img-rounded">
                            <asp:Image ID="Image1" ImageUrl="~/Images/perfil.jpg" AlternateText="Perfil" runat="server" />
                        </figure>
                        <h4>Experiencia</h4>
                        <p>
                            A frente do escritório estão as arquitetas Bianca Oliveira e Vanessa Borges. Ambas com ampla experiência em obras de empreendimentos imobiliários, acompanhamento e decoração de áreas comuns e decorados.
                            <br />
                            A filosofia do escritório é criar espaços de qualidade, que seja um convite a convivência entre os usuários e que agregue valor a vida das pessoas e ao imóvel.
                            <%--
                            <br />
                            Com os conhecimentos de Arquitetura e Design de Interiores conseguem extrair do cliente suas ambições, transformar lugares e fazer com que se tenha a sensação de estar em um lugar único.
                            --%>
                        </p>
                    </article>
                    <article class="grid_5 prefix_2">
                        <p>
                            Qualidade nos serviços prestados (projetos e obra), cronograma + planejamento = atendimento de prazo e satisfação do cliente são os três pilares da TR3ARQ. Com isso a TR3ARQ vem ganhando nome no mercado e a confiança de seus clientes que são desde investidores até clientes finais.
                        </p>
                        <h4>Missao</h4>
                        <p>
                            Nossa missão é oferecer soluções em arquitetura, design e serviços relacionados a reforma com agilidade, eficiência, inovação e garantindo sempre a satisfação do cliente.
                        </p>
                        <h4>Visao</h4>
                        <p>
                            Nossa visão é ser um escritório reconhecido no mercado por cumprir prazos e metas, por entregar sempre projetos inovadores e de qualidade, atendendo sempre às expectativas do cliente e entregando projetos e obras com excelência.
                        </p>
                        <h4>Valores</h4>
                        <span class="listTitle">Nossos valores são:</span>
                        <br />
                        <ul class="list">
                            <li><span>Eficiência</span></li>
                            <li><span>Comprometimento</span></li>
                            <li><span>Inovação</span></li>
                            <li><span>Competência</span></li>
                        </ul>
                        <ul class="list">
                            <li><span>Satisfação do cliente</span></li>
                            <li><span>Ética</span></li>
                            <li><span>Qualidade</span></li>
                            <li><span>Respeito</span></li>
                        </ul>
                        <span class="clear"></span>
                    </article>
                </div>
            </div>
        </div>
    </section>
</asp:Content>