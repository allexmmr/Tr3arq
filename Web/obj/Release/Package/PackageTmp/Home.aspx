<%@ Page Title="TR3ARQ – Arquitetura e Interiores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            //  Initialize Background Stretcher
            $('BODY').bgStretcher({
                images: ['Images/slide-1.jpg', 'Images/slide-2.jpg', 'Images/slide-3.jpg', 'Images/slide-4.jpg', 'Images/slide-5.jpg'],
                imageWidth: 1920,
                imageHeight: 1080,
                resizeProportionally: true,
                slideDirection: 'N',
                slideShowSpeed: 1000,
                transitionEffect: 'fade',
                sequenceMode: 'normal',
                pagination: '#nav'
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>