var host = 'http://' + location.host;
var mymap = L.map('mapid').setView([-6.198935, 106.874128], 11);

// gas station icon
var station = L.icon({
    iconUrl: 'https://image.flaticon.com/icons/svg/353/353917.svg',
    iconSize: [80, 50],
    iconAnchor: [10, 30],
    popupAnchor: [-3, -40]
});

// truck icon
var truck = L.icon({
    iconUrl: 'https://image.flaticon.com/icons/svg/609/609361.svg',
    iconSize: [40, 40],
    iconAnchor: [45, 30],
    popupAnchor: [-3, -40]
});

L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 20,
    id: 'mapbox/streets-v11',
    accessToken: 'pk.eyJ1Ijoic3VwZXJwaWthciIsImEiOiI0MGE3NGQ2OWNkMzkyMzFlMzE4OWU5Yjk0ZmYzMGMwOCJ9.3bGFHjoSXB8yVA3KeQoOIw'
}).addTo(mymap);


// lat long for routing
var coordinate = []
// Routing
var route_control = L.Routing.control({
    waypoints: [
        L.latLng(coordinate[0], coordinate[1]),
        L.latLng(-6.1351018, 106.8936739),
    ],
    routeWhileDragging: false
}).addTo(mymap);

var marker = L.marker([-6.1351018, 106.8936739], { icon: station, zIndexOffset: 1000 }).addTo(mymap);
marker.bindPopup('<b>Terminal BBM Plumpang</b>');


var current_pos, current_acc;

function onLocationFound(e) {
    var radius = e.accuracy / 2;

    if (current_pos) {
        mymap.removeLayer(current_pos);
        mymap.removeLayer(current_acc);
    }

    // current_pos = L.marker(e.latlng).addTo(mymap).bindPopup("your location is " + radius + " meters from this point").openPopup();
    current_pos = L.marker(e.latlng);
    // current_acc = L.circle(e.latlng, radius).addTo(mymap);
    current_acc = L.circle(e.latlng, radius);
}

function onLocationError(e) {
    console.log(e.message);
    window.location.reload();
}

mymap.on('locationfound', onLocationFound);
mymap.on('locationerror', onLocationError);

function locate() {
    mymap.locate({ setView: false, maxZoom: 16 });
}

// cek apakah current user pada halaman detail, merupakan user yang telah
// terdaftar lacation coordinate nya pada database
function track_lookup() {
    if (progress == 'waiting' || progress == 'accepted' || progress == 'sampling') {
        console.log('cek coordinate to db');
        locate();
        axios.get(host + '/api/tracks/lookup/' + user_id + '/' + request_id)
            .then((response) => {
                if (response.data == 'True') {
                    set_location()
                }
            })
    }
}

// mapping coordinate from database to map layer
function mapping_coordinate(u_id, req_id) {
    axios.get(host + '/api/tracks/locate/' + u_id + '/' + req_id)
        .then((response) => {           
            L.marker([response.data.lat, response.data.lng], { icon: truck, zIndexOffset: 100000 }).addTo(mymap).bindPopup('<b>Sampling...</b>').openPopup();
            coordinate[0] = parseFloat(response.data.lat);
            coordinate[1] = parseFloat(response.data.lng);
            route_control.getPlan().setWaypoints([
                L.latLng(coordinate[0], coordinate[1]),
                L.latLng(-6.1351018, 106.8936739),
            ]);
        })
}

// cek coordinate
function cek_coordinate() {
    if (progress != 'released') {
        console.log('mapping');        
        if (user_email != tracked_email) {
            axios.get(host + '/api/users/tracking/' + tracked_email)
                .then((response) => {
                    mapping_coordinate(response.data.id, request_id)
                });
        }
        else {
            mapping_coordinate(user_id, request_id)
        }
    }
}

// melakukan update lokasi ke database
function set_location() {
    axios({
        method: 'post',
        url: host + '/api/tracks/setloc',
        data: {
            'user_id': user_id,
            'request_id': request_id,
            'lat': current_pos._latlng.lat,
            'lng': current_pos._latlng.lng,
        }
    }).then((response) => {
        // console.log(response);            
    })
}

setInterval(track_lookup, 10000);
cek_coordinate();
setInterval(cek_coordinate, 30000);