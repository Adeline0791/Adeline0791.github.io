< script >
    var chart = c3.generate({
        data: {
            columns: [
                ['positive', 335, 417, 229, 472, 186, 547],
                ['moderate', 14, 21, 13, 24, 22, 44],
                ['bad', 7, 25, 6, 8, 13, 34]
            ]
        }
    });

setTimeout(function() {
    chart.load({
        columns: [
            ['positive', 335, 417, 229, 472, 186, 547]
        ]
    });
}, 1000);

setTimeout(function() {
    chart.load({
        columns: [
            ['moderate', 14, 21, 13, 24, 22, 44]
        ]
    });
}, 1500);

setTimeout(function() {
    chart.load({
        columns: [
            ['bad', 7, 25, 6, 8, 13, 34]
        ]
    });
}, 2000);

type: 'category',
    boundaryGap: false,
    data: data,
    axisLabel: {
        formatter: function(name) {
                var showNames = ["skykitchen", "Caffe e Gelato", "Werneckhof by Geisel", "Restaurant Stresa
                        ","
                        Weinstube Forelle ","
                        Restaurant Waldhorn ","
                        Das Dorf "];
                        return (showNames.indexOf(name) === -1 ? "" : name)

                        <
                        /script>