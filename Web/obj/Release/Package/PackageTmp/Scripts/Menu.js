$(function () {
    // Deixa o link ativo em destaque
    var url = window.location.pathname.substring(1);

    if (url == "" || url.indexOf("Home") >= 0) {
        url = "Home";
    } else if (url.indexOf("Portfolio") >= 0) {
        url = "Portfolio";
    }

    $("#li" + url).addClass("current");
});