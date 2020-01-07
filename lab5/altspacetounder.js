function altspacetounderscore()
{
  var data = "Hello how are you !!"
// var standard_input = process.stdin;
//
// standard_input.setEncoding('utf-8');
//
// // Prompt user to input data in console.
// console.log("Please input text in command line.");
//
// // When user input data and click enter key.
// standard_input.on('data', function (data) {
//   var ans = "";
//   var res = data.split(" ");
//   for (var i = 0; i < res.length; i++) {
//     if ((i%2 == 0 ) {
//       ans = ans.concat(res[i]);
//       ans = ans.concat(" ");
//     }
//     else {
//       ans = ans.concat(res[i]);
//       ans = ans.concat("_");
//     }
//   }
//   process.exit();
// });
  // var n = data.replace(/ /g, "_");
  // console.log(n);
var ans = "";
var res = data.split(" ");
for (var i = 0; i < res.length; i++) {
  if (i%2 == 0) {
    ans = ans.concat(res[i]);
    ans = ans.concat(" ");
  }
  else {
    ans = ans.concat(res[i]);
    ans = ans.concat("_");
  }
}
console.log(ans);
return ans;
}

altspacetounderscore();
