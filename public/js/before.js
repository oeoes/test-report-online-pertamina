var url = "http://localhost:8000/app/graphics/category/before";
var parameter = new Array();
var before = new Array();

$('#change').on('click', function () {
    $.get(url + '/' + $('#select_flag').val(), function (response) {
        parameter = []
        coq = []
        before = []
        after = []
        distribution = []

        // write detail
        $('#produk').text(response.info.produk);
        $('#issuer').text(response.info.issuer);
        $('#tag').text(response.info.tag);
        $('#date').text(response.info.created_at);

        response.data.forEach(function (data) {
            parameter.push(data.parameter);
            coq.push(data.coq);
            before.push(data.before);
            after.push(data.after);
            distribution.push(data.distribution);
        });

        var ctx = document.getElementById("chart-line").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: parameter,
                datasets: [{
                        label: 'COQ',
                        data: coq,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 196, 0.74)',
                        backgroundColor: 'rgba(219, 20, 196, 0.3)',
                        fill: false
                    },
                    {
                        label: 'Before',
                        data: before,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false
                    },
                    {
                        label: 'After',
                        data: after,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(20, 219, 160, 0.74)',
                        backgroundColor: 'rgba(20, 219, 160, 0.3)',
                        fill: false
                    },
                    {
                        label: 'Distribution',
                        data: distribution,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 20, 0.74)',
                        backgroundColor: 'rgba(219, 20, 20, 0.3)',
                        fill: false
                    },
                ]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    });
});

$(document).ready(function () {
    $.get(url, function (response) {
        console.log(response);        

        // create array of report
        // response.data.forEach(function (data) {
        //     parameter.push(data.parameter);
        //     coq.push(data.coq);
        //     before.push(data.before);
        //     after.push(data.after);
        //     distribution.push(data.distribution);
        // });

        var ctx = document.getElementById("chart-line").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: parameter,
                datasets: [{
                        label: 'COQ',
                        data: coq,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 196, 0.74)',
                        backgroundColor: 'rgba(219, 20, 196, 0.3)',
                        fill: false
                    },
                    {
                        label: 'Before',
                        data: before,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false
                    },
                    {
                        label: 'After',
                        data: after,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(20, 219, 160, 0.74)',
                        backgroundColor: 'rgba(20, 219, 160, 0.3)',
                        fill: false
                    },
                    {
                        label: 'Distribution',
                        data: distribution,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 20, 0.74)',
                        backgroundColor: 'rgba(219, 20, 20, 0.3)',
                        fill: false
                    },
                ]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    });
});