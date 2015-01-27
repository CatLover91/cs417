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


function processFile(e) {
    var file = e.target.result,
        results;
    if (file && file.length) {
        results = file.split("\n");
        console.log(results)
        $('#name').val(results[0]);
        $('#age').val(results[1]);
    }
}

uploadButton.on('click', function() {
    if (!window.FileReader) {
        alert('Your browser is not supported')
    }
    var input = fileInput.get(0);

    // Create a reader object
    var reader = new FileReader();
    if (input.files.length) {
        if (input.files.length === 2) {
            var textFile1 = input.files[0];
            var textFile2 = input.files[1];
            reader.readAsText(textFile1);
            var txt1 = $(reader).on('load', processFile);
            reader.readAsText(textFile2);
            var txt2 = $(reader).on('load', processFile);
            // MAIN FUNCTION CALL
        } else {
            alert('Please make sure to upload two text files.')
        }
    } else {
        alert('Please upload a file before continuing.')
    }
});



