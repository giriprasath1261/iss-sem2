process.stdin.resume();
process.stdin.setEncoding('utf8');
var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;
process.stdin.on('data', function (data) {
    input_stdin += data;
});
process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();
});
function readLine() {
    return input_stdin_array[input_currentline++];
}
function main(){
    var line=readLine();
    var t=parseInt(line);
    for(i=0;i<t;i++)
    {
        var line=readLine();
        line = line.split(" ");
        var t1=parseInt(line[0]);
        var t2=parseInt(line[1]);
        console.log(t1+t2)
    }
}