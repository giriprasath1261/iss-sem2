function fifthday() {
  var today = new Date();
  var day = today.getDay();
  var fifth = day + 5;
  fifth = fifth % 7;
  // var arr = new Array("Sunday","Monday","Tuesday","Wednesday","Thrusday","Friday","Saturday");
  // console.log(arr[fifth]);
  switch (fifth) {
    case 1:
      console.log("Monday");
      break;
    case 2:
      console.log("Tuesday");
      break;
    case 3:
      console.log("Wednesday");
      break;
    case 4:
      console.log("Thrusday");
      break;
    case 5:
      console.log("Friday");
    case 6:
      console.log("Saturday");
    case 0:
      console.log("Sunday");
    }
}

fifthday();
