$(function() {

    function megaMatrix(Nx, Ny) {
        this.Nx = Nx;
        this.Ny = Ny;
        this.origMatrix = initMat();
        this.origBMatrix = initBMat();
    }

    var aRandomNumber = function() {
        var result = Math.floor((Math.random() * 2000000) + 1);
        result = (result - 1000000) / 10000;
        return result;
    };

    megaMatrix.prototype.initMat = function() {
        var result = [];
        for(var i = 0; i < this.Ny; i++) {
            var temp = [];
            for(var j = 0; j < this.Nx; j++) {
                temp.push(aRandomNumber());
            }
            result.push(temp);
        }
        return result;
    };

    megaMatrix.prototype.initBMat = function() {
        var result = [];
        for(var i = 0; i < this.Ny; i++) {
            result.push(aRandomNumber());
        }
        return result;
    };


    megaMatrix.prototype.iterateJacobi = function() {

    }

    megaMatrix.prototype.iterateGauss = function() {

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