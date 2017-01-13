$(document).ready(function () {
    // Troca a imagem da logo
    $("#lnkPoobInfo img").hover(function () {
        $(this).attr("src", "../Images/logo-poob-info-over.png");
    }, function () {
        $(this).attr("src", "../Images/logo-poob-info.png");
    });
});