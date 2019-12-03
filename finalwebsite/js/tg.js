    $(document).ready(function() {
        $("img#b1").click(function() {
            $("#pic1").toggle(500);
        });
        $("img#b2").click(function() {
            $("#pic2").toggle(500);
        });
        $("img#b3").click(function() {
            $("#pic3").toggle(500);
        });
        $("div#qa1").click(function() {
            $("#a1").toggle(100);
            $("#a2").toggle(300);
        });
        $("div#qa2").click(function() {
            $("#a3").toggle(100);
            $("#a4").toggle(300);
            $("#a5").toggle(300);
        });
    });