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
});
$(function() {
    $('#chart1').highcharts({
        chart: {
            type: 'line'
        },
        colors: ['#02DF82', '#0080FF', '#4F4F4F'],
        title: {
            text: 'Feedback Comparison'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: ['Skykitchen', 'Caffee Gelato', 'Werneckhof by Geisel', 'Restaurant Stresa', 'Weinstube Forelle', 'Restaurant Waldhorn', 'Das Dorf']
        },
        yAxis: {
            title: {
                text: 'person-time'
            }
        },
        tooltip: {
            enabled: true,
            formatter: function() {
                return '<b>' + this.series.name + '</b>   ' + this.y;
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true

                },
                enableMouseTracking: true
            }
        },
        series: [{
            name: 'Positive',
            data: [335, 418, 230, 474, 187, 74, 574]
        }, {
            name: 'Average',
            data: [15, 21, 13, 24, 22, 7, 44]
        }, {
            name: 'Negative',
            data: [7, 25, 6, 8, 13, 2, 34]
        }]
    });
    $('#chart2').highcharts({
        chart: {
            type: 'line'
        },
        colors: ['#02DF82', '#0080FF', '#4F4F4F'],
        title: {
            text: 'Feedback Comparison'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: ['Gasthaus Krombach', 'Schneider Bräuhaus', 'Zum Durnbraeu', 'Thalassa Sendling',
                'Lloyd\'s Cafe & Bar', 'Zeik', 'Frau Moeller', 'Philipps Restaurant'
            ]
        },
        yAxis: {
            title: {
                text: 'person-time'
            }
        },
        tooltip: {
            enabled: true,
            formatter: function() {
                return '<b>' + this.series.name + '</b>   ' + this.y;
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true

                },
                enableMouseTracking: true
            }
        },
        series: [{
            name: 'Positive',
            data: [1377, 2139, 1370, 711, 168, 52, 963, 689]
        }, {
            name: 'Average',
            data: [128, 364, 133, 33, 7, 1, 112, 124]
        }, {
            name: 'Negative',
            data: [45, 264, 82, 21, 5, 0, 60, 7]
        }]
    });
    $('#chart3').highcharts({
        chart: {
            type: 'line'
        },
        colors: ['#02DF82', '#0080FF', '#4F4F4F'],
        title: {
            text: 'Feedback Comparison'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: ['Hofbrau Muchen Berlin', 'Ratskeller Munchen', 'Estancia Beef-Club', 'Freiberger Schankhaus', 'Schwaerzlocher Hof']
        },
        yAxis: {
            title: {
                text: 'person-time'
            }
        },
        tooltip: {
            enabled: true,
            formatter: function() {
                return '<b>' + this.series.name + '</b>   ' + this.y;
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true

                },
                enableMouseTracking: true
            }
        },
        series: [{
            name: 'Positive',
            data: [4709, 4515, 259, 358, 61]
        }, {
            name: 'Average',
            data: [841, 591, 10, 56, 20]
        }, {
            name: 'Negative',
            data: [521, 296, 6, 22, 8]
        }]
    })
})