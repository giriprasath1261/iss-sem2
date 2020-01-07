importPackage(java.io);
importPackage(java.lang);
var stdin = new BufferedReader(new InputStreamReader(System['in']));
var line = stdin.readLine();
var n = parseInt(line);
for(var i=1;i<=n;i++) {
	var l = stdin.readLine();
	 var elements = l.split(" ");
	var x = parseInt(elements[0]);
	var y = parseInt(elements[1]);
	sum = x+y;
	print(sum);
}
