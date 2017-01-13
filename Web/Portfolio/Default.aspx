<%@ Page Title="TR3ARQ – Portfolio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Portfolio.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/jQuery.fancybox.css" rel="stylesheet" />
    <script src="<%= Page.ResolveClientUrl("~/Scripts/jQuery.elastislide.js") %>"></script>
    <script src="<%= Page.ResolveClientUrl("~/Scripts/jQuery.fancybox.pack.js") %>"></script>
    <script>
        $(document).ready(function () {
            //  Initialize Background Stretcher
            $('BODY').bgStretcher({
                images: ['../Images/slide-1.jpg'],
                imageWidth: 1920,
                imageHeight: 1080,
                resizeProportionally: true
            });

            $('#carousel').elastislide({ imageW: 300, margin: 20, minItems: 3 });
            $('.magnifier').fancybox();

            $(".view").hover(
            function () { $(this).find("img").stop().animate({ opacity: 0.5 }, "normal") },
            function () { $(this).find("img").stop().animate({ opacity: 1 }, "normal") })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
        <div class="main-block">
            <div class="container_12">
                <h3>Portfolio</h3>
                <div id="carousel" class="es-carousel-wrapper">
                    <div class="es-carousel">
                        <ul>
                            <li>
                                <figure class="img-rounded">
                                    <a class="view magnifier" data-fancybox-group="gallery" href="Apartamento-Campo-Bello-140m">
                                        <img src="Apartamento-Campo-Bello-140m/Images/Thumb.jpg" alt="Apartamento Campo Bello 140m²" />
                                        <span>Apartamento Campo Bello 140m²</span>
                                    </a>
                                </figure>
                            </li>
                            <li>
                                <figure class="img-rounded">
                                    <a class="view magnifier" data-fancybox-group="gallery" href="Apartamento-Ipiranga-180m">
                                        <img src="Apartamento-Ipiranga-180m/Images/Thumb.jpg" alt="Apartamento Ipiranga 180m²" />
                                        <span>Apartamento Ipiranga 180m²</span>
                                    </a>
                                </figure>
                            </li>
                            <li>
                                <figure class="img-rounded">
                                    <a class="view magnifier" data-fancybox-group="gallery" href="Apartamento-Pompeia-120m">
                                        <img src="Apartamento-Pompeia-120m/Images/Thumb.jpg" alt="Apartamento Pompéia 120m²" />
                                        <span>Apartamento Pompéia 120m²</span>
                                    </a>
                                </figure>
                            </li>
                            <li>
                                <figure class="img-rounded">
                                    <a class="view magnifier" data-fancybox-group="gallery" href="Apartamento-Vila-Leopoldina-140m">
                                        <img src="Apartamento-Vila-Leopoldina-140m/Images/Thumb.jpg" alt="Apartamento Vila Leopoldina 140m²" />
                                        <span>Apartamento Vila Leopoldina 140m²</span>
                                    </a>
                                </figure>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>