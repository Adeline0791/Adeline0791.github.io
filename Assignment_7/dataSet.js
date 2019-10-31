    var items = [];
    var i = 0;
    var airtable_read_endpoint = "https://api.airtable.com/v0/appHWatPrZSiXCWX2/Table%201?api_key=keyzbRdSbMsfNyECL";
    var dataSet = [];
    $.getJSON(airtable_read_endpoint, function(result) {
        $.each(result.records, function(key, value) {
            items = [];
            items.push(value.fields['City']);
            items.push(value.fields['Search queries']);
            dataSet.push(items);
            console.log(items);
        });
        console.log(dataSet);
        var chart = c3.generate({
            data: {
                columns: dataSet,
                type: 'donut'
            },
            donut: {
                title: "Search queries",
            }
        });
    
    });
