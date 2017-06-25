// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
//= require aframe.min
//= require aframe-ar.min
//= require three.min
//= require instascan.min

$(document).ready(function () {
    $('#reader').html5_qrcode(function(data){
            alert(data)
        },
        function(error){
            console.log(error)
        }, function(videoError){
            console.log(videoError)
        }
    );
});

$(document).ready(function () {
    var preview = document.getElementById('preview');
    if(preview){
        var scanner = new Instascan.Scanner({ video: preview });
        scanner.addListener('scan', function (content) {
            alert(content);
        });
        Instascan.Camera.getCameras().then(function (cameras) {
            if (cameras.length > 0) {
                scanner.start(cameras[0]);
            } else {
                console.error('No cameras found.');
            }
        }).catch(function (e) {
            console.error(e);
        });
    }
});