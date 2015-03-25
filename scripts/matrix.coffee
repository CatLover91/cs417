require 'helpers'

class funcMatrix
    #create a pre-made matrix
    def initialize(aFile)

    end

    #create a random matrix
    def initialize(nx, ny)
        @nx = nx
        @ny = ny
        @matrix = initMat()
        @bmatrix = initBMat()
    end

    def x()
        tempx = @nx
        tempx
    end
    
    def y()
        tempy = @ny
        tempy
    end
    
    def toArray()
        
        
    end
    
    def toArrayB()
        
    end

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
end