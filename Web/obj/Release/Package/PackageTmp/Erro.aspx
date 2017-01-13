<%@ Page Title="TR3ARQ – Erro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Erro.aspx.cs" Inherits="Web.Erro" %>

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
            <div class="main aligncenter">
                <h3>OOPS!</h3>
                <h4>
                    Ocorreu um erro inesperado.
                    <br />
                    <br />
                    Por favor, tente novamente mais tarde.
                </h4>
            </div>
        </div>
    </section>
</asp:Content>