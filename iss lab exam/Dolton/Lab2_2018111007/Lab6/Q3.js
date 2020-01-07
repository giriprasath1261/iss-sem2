#!/usr/bin/env node
var data_file = "http://localhost:8000/getmarks";
var http_request = new XMLHttpRequest();
http_request.onreadystatechange = function(){
if (http_request.readyState == 4  && http_request.status == 200){
  var jsonObj = JSON.parse(http_request.responseText);
  document.getElementById("Name").innerHTML = jsonObj.name;
  document.getElementById("Country").innerHTML = jsonObj.country;
  console.log("HELLO");
}
}
http_request.open("GET", data_file, true);
http_request.send();
