var baseUrl = "http://localhost:8000/";

// url summary
var url = baseUrl+"app/graphics/category";
// url before
var before_url = baseUrl+"app/graphics/before";
// url coq
var coq_url = baseUrl+"app/graphics/coq";
// url after
var after_url = baseUrl+"app/graphics/after";
// url distribution
var distribution_url = baseUrl+"app/graphics/distribution";

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
var distribution_min = '';
var distribution_max = '';


// change summary when clicked
$('#change').on('click', function () {
    $.get(url + '/' + $('#select_parameter').val() + '/' + $('#select_date_from').val() + '/' + $('#select_date_to').val() + '/' + $('#product_id').val(), function (response) {
        
        if (response.coq != null) {
            coq = response.coq.value;
            $('#coq_date').text('COQ ' + response.coq.created_at);
        }
        if (response.before != null) {
            before = response.before.value;
            $('#before_date').text('Before ' + response.before.created_at);
        }
        if (response.after != null) {
            after = response.after.value;
            $('#after_date').text('After ' + response.after.created_at);
        }
        if (response.distribution != null) {
            distribution = response.distribution.value;
            $('#distribution_date').text('Penyaluran ' + response.distribution.created_at);
        }

        if (response.info != null) {
            min = response.info.limit_min;
            max = response.info.limit_max;
            parameter = response.info.parameter

            $('#namaparameter').text(parameter)
        }       
        

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
                        fill: true,
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
    $.get(before_url + '/' + $('#before_from').val() + '/' + $('#before_to').val() + '/' + $('#before_product_id').val() + '/' + $('#before_param_id').val(), function (response) {
        if (response[0] != null) {
            before_min = response[0].limit_min
        }

        if (response[0] != null) {
            before_max = response[0].limit_max
        }
        before_value = []
        before_date = []

        response.forEach(function (data) {
            before_value.push(data.value)
            before_date.push(data.date)
        });

        var ctx = document.getElementById("before").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: before_date,
                datasets: [
                    {
                        label: 'Min (' + before_min + ')',
                        data: [before_min, before_min, before_min, before_min, before_min, before_min, before_min, before_min, before_min, before_min],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    }, {
                        label: 'before',
                        data: before_value,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 20, 0.74)',
                        backgroundColor: 'rgba(219, 20, 20, 0.3)',
                        fill: true
                    }, {
                        label: 'Max (' + before_max + ')',
                        data: [before_max, before_max, before_max, before_max, before_max, before_max, before_max, before_max, before_max, before_max],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },]
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
    $.get(coq_url + '/' + $('#coq_from').val() + '/' + $('#coq_to').val() + '/' + $('#coq_product_id').val() + '/' + $('#coq_param_id').val(), function (response) {
        if (response[0] != null) {
            coq_min = response[0].limit_min
        }

        if (response[0] != null) {
            coq_max = response[0].limit_max
        }
        coq_value = []
        coq_date = []

        response.forEach(function (data) {
            coq_value.push(data.value)
            coq_date.push(data.date)
        });

        var ctx = document.getElementById("coq").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: coq_date,
                datasets: [
                    {
                        label: 'Min (' + coq_min + ')',
                        data: [coq_min, coq_min, coq_min, coq_min, coq_min, coq_min, coq_min, coq_min, coq_min, coq_min],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    }, {
                        label: 'COQ',
                        data: coq_value,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 20, 0.74)',
                        backgroundColor: 'rgba(219, 20, 20, 0.3)',
                        fill: true
                    }, {
                        label: 'Max (' + coq_max + ')',
                        data: [coq_max, coq_max, coq_max, coq_max, coq_max, coq_max, coq_max, coq_max, coq_max, coq_max],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },]
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
    $.get(after_url + '/' + $('#after_from').val() + '/' + $('#after_to').val() + '/' + $('#after_product_id').val() + '/' + $('#after_param_id').val(), function (response) {
        if (response[0] != null) {
            after_min = response[0].limit_min
        }

        if (response[0] != null) {
            after_max = response[0].limit_max
        }
        after_value = []
        after_date = []

        response.forEach(function (data) {
            after_value.push(data.value)
            after_date.push(data.date)
        });

        var ctx = document.getElementById("after").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: after_date,
                datasets: [
                    {
                        label: 'Min (' + after_min + ')',
                        data: [after_min, after_min, after_min, after_min, after_min, after_min, after_min, after_min, after_min, after_min],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    }, {
                        label: 'After',
                        data: after_value,
                        borderWidth: 2,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 1)',
                        borderColor: 'rgba(219, 20, 20, 0.74)',
                        backgroundColor: 'rgba(219, 20, 20, 0.3)',
                        fill: true
                    }, {
                        label: 'Max (' + after_max + ')',
                        data: [after_max, after_max, after_max, after_max, after_max, after_max, after_max, after_max, after_max, after_max],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },]
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
    $.get(distribution_url + '/' + $('#distribution_from').val() + '/' + $('#distribution_to').val() + '/' + $('#distribution_product_id').val() +'/'+ $('#distribution_param_id').val(), function (response) {
        if (response[0] != null) {
            distribution_min = response[0].limit_min
        }
        
        if (response[0] != null) {
            distribution_max = response[0].limit_max
        }       
        
        distribution_value = []
        distribution_date = []

        response.forEach(function (data) {
            distribution_value.push(data.value)
            distribution_date.push(data.date)
        });

        var ctx = document.getElementById("distribution").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: distribution_date,
                datasets: [
                    {
                        label: 'Min (' + distribution_min + ')',
                        data: [distribution_min, distribution_min, distribution_min, distribution_min, distribution_min, distribution_min, distribution_min, distribution_min, distribution_min, distribution_min],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },{
                    label: 'Distribution',
                    data: distribution_value,
                    borderWidth: 2,
                    spanGaps: true,
                    pointBackgroundColor: 'rgba(255,255,255, 1)',
                    borderColor: 'rgba(219, 20, 20, 0.74)',
                    backgroundColor: 'rgba(219, 20, 20, 0.3)',
                    fill: true
                    }, {
                        label: 'Max (' + distribution_max + ')',
                        data: [distribution_max, distribution_max, distribution_max, distribution_max, distribution_max, distribution_max, distribution_max, distribution_max, distribution_max, distribution_max],
                        borderWidth: 1,
                        spanGaps: true,
                        pointBackgroundColor: 'rgba(255,255,255, 0)',
                        pointBorderColor: 'rgba(0,0,0,0)',
                        borderColor: 'rgba(20, 60, 219, 0.74)',
                        backgroundColor: 'rgba(20, 60, 219, 0.3)',
                        fill: false,
                    },]
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
        if (response.coq != null) {
            coq = response.coq.value;
            $('#coq_date').text('COQ '+response.coq.created_at);
        }
        if (response.before != null) {
            before = response.before.value;
            $('#before_date').text('Before '+response.before.created_at);
        }
        if (response.after != null) {
            after = response.after.value;
            $('#after_date').text('After '+response.after.created_at);
        }
        if (response.distribution != null) {
            distribution = response.distribution.value;
            $('#distribution_date').text('Penyaluran '+response.distribution.created_at);
        }

        if (response.data != null) {
            min = response.data.limit_min;
            max = response.data.limit_max;
            parameter = response.data.parameter;
            
            // write detail
            $('#produk').text(response.product.product_name);
            $('#parameter').text(parameter);
            $('#namaparameter').text(parameter);
        }

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