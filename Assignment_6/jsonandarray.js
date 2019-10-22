$(document).ready(function() {

    $("button#hide_h2").click(function() {
        $("h2").hide(500);
    });

    $("button#show_h2").click(function() {
        $("h2").show(300);
        $("h2").css("color", "blue");
        $("h2").html("You clicked me hard.");
    });

    $("button#clear_screen").click(function() {
        var $x = $("container");
        $x.empty();
    });

    $("button#get_data").click(function() {
        var items = [];
        var i = 0;
        var airtable_read_endpoint = "https://api.airtable.com/v0/appSWehaoFyo3NKxR/Christmas%20market?api_key=keyzbRdSbMsfNyECL";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result) {
            $.each(result.records, function(key, value) {
                items = [];
                items.push(value.fields['City']);
                items.push(value.fields['State']);
                items.push(value.fields['When']);
                items.push(value.fields['Where']);
                items.push(value.fields['What time']);
                items.push(value.fields['Popularity']);
                items.push(value.fields['Search Queries']);
                dataSet.push(items);
                console.log(items);
            }); // end .each
            console.log(dataSet);

            $('#table1').DataTable({
                data: dataSet,
                retrieve: true,
                columns: [{
                        title: "City",
                        defaultContent: ""
                    },
                    {
                        title: "State",
                        defaultContent: ""
                    },
                    {
                        title: "When",
                        defaultContent: ""
                    },
                    {
                        title: "Where",
                        defaultContent: ""
                    },
                    {
                        title: "What time",
                        defaultContent: ""
                    },
                    {
                        title: "Popularity",
                        defaultContent: ""
                    },
                    {
                        title: "Search Queries",
                        defaultContent: ""
                    },
                ]
            });
        }); // end .getJSON
    }); // end button

}); // document ready