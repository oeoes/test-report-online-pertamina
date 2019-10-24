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

// summary
var coq = '';
var before = '';
var after = '';
var distribution = '';
var min = '';
var max = '';
var parameter = '';

// before
var before_value = new Array();
var before_date = new Array();
var before_param = new Array();

// coq
var coq_value = new Array();
var coq_param = new Array();
var coq_date = new Array();

// after
var after_value = new Array();
var after_date = new Array();
var after_param = new Array();

// distribution
var distribution_value = new Array();
var distribution_date = new Array();
var distribution_param = new Array();


// change summary when clicked
$('#change').on('click', function () {
    $.get(url + '/' + $('#select_parameter').val() + '/'+ $('#select_date').val(), function (response) {
        console.log(response);        
        coq = response.coq.value;
        before = response.before.value;
        after = response.after.value;
        distribution = response.distribution.value;
        min = response.data.limit_min;
        max = response.data.limit_max;
        parameter = response.data.parameter;

        // write detail
        $('#produk').text('Pertalite');
        $('#parameter').text(parameter);
        $('#namaparameter').text(parameter);
        $('#date').text('date');
        

        var ctx_change = document.getElementById("chart-line").getContext('2d');
        var myChart = new Chart(ctx_change, {
            type: 'line',
            data: {
                labels: ['COQ', 'Before', 'After', 'Distribution'],
                datasets: [
                    {
                        label: 'Min (' + min + ')',
                        data: [min, min, min, min],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },
                    {
                        label: parameter,
                        data: [coq, before, after, distribution],
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 196, 0.74)',
                        backgroundColor: 'rgba(219, 20, 196, 0.3)',
                        fill: false,
                    },
                    {
                        label: 'Max (' + max + ')',
                        data: [max, max, max, max],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },
                ]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: false
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
        before_param = []

        response.forEach(function (data) {
            before_value.push(data.before)
            before_date.push(data.date)
            before_param.push(data.parameter)
        });

        var ctx = document.getElementById("before").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: before_param,
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
                            beginAtZero: false
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
        coq_param = []

        response.forEach(function (data) {
            coq_value.push(data.coq)
            coq_date.push(data.date)      
            coq_param.push(data.parameter)
        });

        var ctx = document.getElementById("coq").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: coq_param,
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
                            beginAtZero: false
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
        after_param = []

        response.forEach(function (data) {
            after_value.push(data.after)
            after_param.push(data.parameter)
        });

        var ctx = document.getElementById("after").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: after_param,
                datasets: [{
                    label: 'After',
                    data: after_value,
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
                            beginAtZero: false
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
        distribution_param = []

        response.forEach(function (data) {
            distribution_value.push(data.distribution)
            distribution_param.push(data.parameter)
        });

        var ctx = document.getElementById("distribution").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: distribution_param,
                datasets: [{
                    label: 'Distribution',
                    data: distribution_value,
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
                            beginAtZero: false
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
        coq = response.coq.value;
        before = response.before.value;
        after = response.after.value;
        distribution = response.distribution.value;
        min = response.data.limit_min;
        max = response.data.limit_max;
        parameter = response.data.parameter;
        
        
        // write detail
        $('#produk').text('Pertalite');
        $('#parameter').text(parameter);
        $('#namaparameter').text(parameter);
        $('#date').text('date');


        // assign coq array
        // response.coq.forEach(function (data) {
        //     coq_value.push(data.coq)
        //     coq_date.push(data.date)
        //     coq_param.push(data.parameter)
        // });

        // assign before array
        // response.before.forEach(function (data) {
        //     before_value.push(data.before)
        //     before_date.push(data.date)
        //     before_param.push(data.parameter)
        // });

        // assign after array
        // response.after.forEach(function (data) {
        //     after_value.push(data.after)
        //     after_param.push(data.parameter)
        // });

        // assign distribution array
        // response.distribution.forEach(function (data) {
        //     distribution_value.push(data.distribution)
        //     distribution_param.push(data.parameter)
        // });

        // summary
        var ctx = document.getElementById("chart-line").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['COQ', 'Before', 'After', 'Distribution'],
                datasets: [
                    {
                        label: 'Min ('+min+')',
                        data: [min, min, min, min],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },
                    {
                        label: parameter,
                        data: [coq, before, after, distribution],
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 196, 0.74)',
                        backgroundColor: 'rgba(219, 20, 196, 0.3)',
                        fill: false,
                    },
                    {
                        label: 'Max ('+max+')',
                        data: [max, max, max, max],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },
                    // {
                    //     label: 'Before',
                    //     data: before,
                    //     borderWidth: 2,
                    //     spanGaps: true,
                    //     pointBackgroundColor: 'rgba(255,255,255, 1)',
                    //     borderColor: 'rgba(20, 60, 219, 0.74)',
                    //     backgroundColor: 'rgba(20, 60, 219, 0.3)',
                    //     fill: false
                    // },
                    // {
                    //     label: 'After',
                    //     data: after,
                    //     borderWidth: 2,
                    //     spanGaps: true,
                    //     pointBackgroundColor: 'rgba(255,255,255, 1)',
                    //     borderColor: 'rgba(20, 219, 160, 0.74)',
                    //     backgroundColor: 'rgba(20, 219, 160, 0.3)',
                    //     fill: false
                    // },
                    // {
                    //     label: 'Distribution',
                    //     data: distribution,
                    //     borderWidth: 2,
                    //     spanGaps: true,
                    //     pointBackgroundColor: 'rgba(255,255,255, 1)',
                    //     borderColor: 'rgba(219, 20, 20, 0.74)',
                    //     backgroundColor: 'rgba(219, 20, 20, 0.3)',
                    //     fill: false
                    // },
                ]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: false
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
                labels: before_param,
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
                            beginAtZero: false
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
                labels: coq_param,
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
                            beginAtZero: false
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
                labels: after_param,
                datasets: [{
                    label: 'After',
                    data: after_value,
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
                            beginAtZero: false
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
                labels: distribution_param,
                datasets: [{
                    label: 'Distribution',
                    data: distribution_value,
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
                            beginAtZero: false
                        }
                    }]
                }
            }
        });
    });
});