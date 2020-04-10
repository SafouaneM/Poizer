$(document).ready(function() {

    $("#hideLogin").click(function () { //wanneer element hidelogin word gedrukt doen we onderstaand
        $("#loginForm").hide(); //verberg dit
        $("#registerForm").show();
    });

    $("#hideRegister").click(function () { //wanneer element hidereguster word gedrukt doen we onderstaand
    $("#loginForm").show(); //laat dit zien
    $("#registerForm").hide();
});

});