/*==================*
 *     Generator    *
 *==================*/

// dimension of matrix
var N = 3;

// returns a random number between -100 and 100 up to 4 decimal places
function getRandom () {
  var precision = 4;
  var max = 100;
  var min = -100;
  return ((Math.floor((max - min) * Math.pow(10, precision) * Math.random()) / Math.pow(10, precision)) + min);
}

// create a
var a = [];

function getRandMatrix() {
  var toReturn = [];
  for(var i = 0; i < N; i++) {
    var temp = [];
    for(var j = 0; j < N; j++) {
      temp.push(getRandom());
    }
    toReturn.push(temp);
  }
}

// enforce diagonal dominance
a = getRandMatrix();

function isDD(mat) {
  for(var i = 0; i < N; i++) {
    var value = null;
    var toCompare = 0;
    for(var j = 0; j < N; j++) {
      if(j === i) {
        value = mat[i][j];
      } else {
        toCompare += mat[i][j];
      }
    }
    if(value < toCompare) {
      return false;
    }
  }
  return true;
}

while(!isDD(a)) {
  a = getRandMatrix();
}

// create random solution
var b = [];
for(var i = 0; i < N; i++) {
  b.push(getRandom());
}

// gen ax = b
  // Jacobi
  // gauss
  // Newton

// write to file

/*==================*
 *      Jacobi      *
 *==================*/
function jacobi(a, b, file) {
  var i, j;
  // initial guess
  var x = [0,0,0];

  // create D and R as empty arrays
  var D = [], R = [];
  for(i = 0; i < a.length; i++) {
      D[i] = [];
      R[i] = [];
      for(j = 0; j < a.length; j++) {
          D[i][j] = 0;
          R[i][j] = 0;
      }
  }

  // move A into D and R
  for(i = 0; i < a.length; i++) {
    for(j = 0; j < a.length; j++) {
      if(i === j) {
        D[i][j] = a[i][j];
      } else {
        R[i][j] = a[i][j];
      }
    }
  }

  var counter = 0;
  function converges() {
    if(false) {// if value is close enough
      // if counter reaches repeat amount
        // return true
      // else
        // up counter amount
        // return false
    } else {
      counter = 0;
      return false;
    }
  }

  while(!converges()) {

  }
}
