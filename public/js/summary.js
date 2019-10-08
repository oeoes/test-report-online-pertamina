// url summary
var url = "http://localhost:8000/app/graphics/category";
// url before
var before_url = "http://localhost:8000/app/graphics/before";
// url coq
var coq_url = "http://localhost:8000/app/graphics/coq";
// url after
var after_url = "http://localhost:8000/app/graphics/after";
// url distribution
var distribution_url = "http://localhost:8000/app/graphics/distribution";

var parameter = new Array();
var coq = new Array();
var before = new Array();
var after = new Array();
var distribution = new Array();

// before
var before_value = new Array();
var before_date = new Array();

// coq
var coq_value = new Array();
var coq_date = new Array();

// after
var after_value = new Array();
var after_date = new Array();

// distribution
var distribution_value = new Array();
var distribution_date = new Array();


// change summary when clicked
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

// change before when clicked
$('#change_before').on('click', function () {
    $.get(before_url + '/' + $('#before_from').val() + '/' + $('#before_to').val(), function (response) {
        before_value = []
        before_date = []      

        response.forEach(function (data) {
            before_value.push(data.before)
            before_date.push(data.date)
        });

        var ctx = document.getElementById("before").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: before_date,
                datasets: [{
                    label: 'Before',
                    data: before_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(20, 60, 219, 0.74)',
                    backgroundColor: 'rgba(20, 60, 219, 0.3)',
                    fill: true
                }]
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
})

// change coq when clicked
$('#change_coq').on('click', function () {
    $.get(coq_url + '/' + $('#coq_from').val() + '/' + $('#coq_to').val(), function (response) {
        coq_value = []
        coq_date = []

        response.forEach(function (data) {
            coq_value.push(data.coq)
            coq_date.push(data.date)
        });

        var ctx = document.getElementById("coq").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: coq_date,
                datasets: [{
                    label: 'COQ',
                    data: coq_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(219, 20, 196, 0.74)',
                    backgroundColor: 'rgba(219, 20, 196, 0.3)',
                    fill: true
                }]
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
})

// change after when clicked
$('#change_after').on('click', function () {
    $.get(after_url + '/' + $('#after_from').val() + '/' + $('#after_to').val(), function (response) {
        after_value = []
        after_date = []

        response.forEach(function (data) {
            after_value.push(data.after)
            after_date.push(data.date)
        });

        var ctx = document.getElementById("after").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: after_date,
                datasets: [{
                    label: 'After',
                    data: coq_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(20, 219, 160, 0.74)',
                    backgroundColor: 'rgba(20, 219, 160, 0.3)',
                    fill: true
                }]
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
})

// change distribution when clicked
$('#change_distribution').on('click', function () {
    $.get(distribution_url + '/' + $('#distribution_from').val() + '/' + $('#distribution_to').val(), function (response) {
        distribution_value = []
        distribution_date = []

        response.forEach(function (data) {
            distribution_value.push(data.distribution)
            distribution_date.push(data.date)
        });

        var ctx = document.getElementById("distribution").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: distribution_date,
                datasets: [{
                    label: 'Distribution',
                    data: coq_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(219, 20, 20, 0.74)',
                    backgroundColor: 'rgba(219, 20, 20, 0.3)',
                    fill: true
                }]
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
})


// --------------------------------

// on page load
$(document).ready(function () {
    $.get(url, function (response) {
        console.log(response);
        
        // write detail
        $('#produk').text(response.info.produk);
        $('#issuer').text(response.info.issuer);
        $('#tag').text(response.info.tag);
        $('#date').text(response.info.created_at);

        // assign summary array
        response.data.forEach(function (data) {
            parameter.push(data.parameter);
            coq.push(data.coq);
            before.push(data.before);
            after.push(data.after);
            distribution.push(data.distribution);
        });

        // assign coq array
        response.coq.forEach(function (data) {
            coq_value.push(data.coq)
            coq_date.push(data.date)
        })

        // assign before array
        response.before.forEach(function (data) {
            before_value.push(data.before)
            before_date.push(data.date)
        })

        // assign after array
        response.after.forEach(function (data) {
            after_value.push(data.after)
            after_date.push(data.date)
        })

        // assign distribution array
        response.distribution.forEach(function (data) {
            distribution_value.push(data.distribution)
            distribution_date.push(data.date)
        })

        // summary
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


        // before array
        var ctx_before = document.getElementById("before").getContext('2d');
        var myChart = new Chart(ctx_before, {
            type: 'line',
            data: {
                labels: before_date,
                datasets: [{
                        label: 'Before',
                        data: before_value,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: true
                    }
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

        // coq array
        var ctx_coq = document.getElementById("coq").getContext('2d');
        var myChart = new Chart(ctx_coq, {
            type: 'line',
            data: {
                labels: before_date,
                datasets: [{
                    label: 'COQ',
                    data: before_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(219, 20, 196, 0.74)',
                    backgroundColor: 'rgba(219, 20, 196, 0.3)',
                    fill: true
                }]
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

        // after array
        var ctx_after = document.getElementById("after").getContext('2d');
        var myChart = new Chart(ctx_after, {
            type: 'line',
            data: {
                labels: before_date,
                datasets: [{
                    label: 'After',
                    data: before_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(20, 219, 160, 0.74)',
                    backgroundColor: 'rgba(20, 219, 160, 0.3)',
                    fill: true
                }]
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

        // distribution array
        var ctx_distribution = document.getElementById("distribution").getContext('2d');
        var myChart = new Chart(ctx_distribution, {
            type: 'line',
            data: {
                labels: before_date,
                datasets: [{
                    label: 'Distribution',
                    data: before_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(219, 20, 20, 0.74)',
                    backgroundColor: 'rgba(219, 20, 20, 0.3)',
                    fill: true
                }]
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