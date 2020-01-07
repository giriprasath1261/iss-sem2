function myArray(arr)
{
var obj={

  Sum:function() {
    var sum2=0;
    for(i in arr)
      sum2+=arr[i];
    return sum2;
  },
  Product:function() {
    var product2=1;
    for(i in arr)
      product2*=arr[i];
    return product2
  },
  Modify:function(index) {
    arr[index]=index;
  },
  Display:function() {
    for(i in arr)
      console.log(arr[i]);
  },
  Sort:function() {

    function swap(arr, first_Index, second_Index){
        var temp = arr[first_Index];
        arr[first_Index] = arr[second_Index];
        arr[second_Index] = temp;
    }

    var len = arr.length,
        i, j, stop;

    for (i=0; i < len; i++){
        for (j=0, stop=len-i; j < stop; j++){
            if (arr[j] > arr[j+1]){
                swap(arr, j, j+1);
            }
        }
    }

    return arr;
  }
};
return obj;
}

var arr = [1,2,3,6,5];
console.log(myArray(arr).Sort());
