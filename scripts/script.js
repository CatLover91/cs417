$(function() {
    var fileInput = $('#files');
    var uploadButton = $('#upload');

    function generateMatrix(Nx, Ny) {

    }

    function processMatrix(normMatrix) {

    }

    function iterateJacobi(m) {

    }

    function iterateGauss(m) {

    }

    new Dragdealer('x-slider', {
        steps: 8,
        animationCallback: function(x,y){
            $('#x-slider .value').text((x*8)+2);
        }
    });

    new Dragdealer('y-slider', {
        steps: 8,
        animationCallback: function(x,y){
            $('#x-slider .value').text((x*8)+2);
        }
    });

    var genButton = $('#generate')

    genButton.on('click', function() {
        var x = $('x-slider .value').innerHTML;
        var y = $('y-slider .value').innerHTML;
        var origMatrix = generateMatrix(x, y);
    });



});