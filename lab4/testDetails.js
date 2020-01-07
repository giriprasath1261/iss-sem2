var data = require('./data.js');
var back = data;
function gethighestmarks()
{
	var i = "";
	var max = 0;
	var name = "";
	for( i in data) {
		var sum;
		sum = data[i][0] + data[i][1] + data[i][2] + data[i][3] + data[i][4];
		if (sum>max)
	       	{
			name=i;
			max=sum;
		}
	}
	console.log(name);
	return name;
}

var arr = Object.keys(data);

function getSubject2Toppers()
{
	for (var i = 0 ; i< arr.length ; i++){

		// Last i elements are already in place
		for (j = 0; j < arr.length; j++) {

			if(i!=0)
			{
				if (data[arr[i]][1]>data[arr[i-1]][1])
				{
					var temp = data[arr[i]];
					data[arr[i]] = data[arr[i-1]];
					data[arr[i-1]] = temp;
				}
			}

		}
	}
	console.log(data);
}

gethighestmarks();
getSubject2Toppers();
