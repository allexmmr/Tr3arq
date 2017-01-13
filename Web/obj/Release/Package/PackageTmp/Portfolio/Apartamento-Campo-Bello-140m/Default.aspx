<%@ Page Title="TR3ARQ – Portfolio: Apartamento Campo Bello 140m²" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Portfolio.Apartamento_Campo_Bello_140m.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            //  Initialize Background Stretcher
            $('BODY').bgStretcher({
                images: ['Images/001.jpg', 'Images/002.jpg', 'Images/003.jpg', 'Images/004.jpg', 'Images/005.jpg'],
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