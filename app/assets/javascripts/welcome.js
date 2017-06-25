// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
//= require aframe.min
//= require aframe-ar.min
//= require three.min
//= require html5-qrcode.min

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
