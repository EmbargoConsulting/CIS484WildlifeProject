﻿<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <title>Locate the user</title>
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.50.0/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.50.0/mapbox-gl.css' rel='stylesheet' />
    <link href="Content/LoginCSS.css" rel="stylesheet" />
    <style>
        body { margin:0; padding:0; }
        #map { position:absolute; top:0; bottom:0; width:100%; }
    </style>
</head>
<body>

<div id='map'></div>
<script>
mapboxgl.accessToken = 'pk.eyJ1IjoiaG9saWRheTE5OTQiLCJhIjoiY2puY2Vncnc2MGo1ZzN2cGs0cWxhM2pxNiJ9.SqOygwNvB_HlnUa-DNlVZg';
var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [-96, 37.8], // starting position
    zoom: 3 // starting zoom
});

// Add geolocate control to the map.
map.addControl(new mapboxgl.GeolocateControl({
    positionOptions: {
        enableHighAccuracy: true
    },
    trackUserLocation: true
}));
</script>

</body>
</html>