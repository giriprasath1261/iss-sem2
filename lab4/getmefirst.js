function getMeNextFirst() {
var data = "hi hello how are you !!"
var res = data.split(" ");
var ans = res[0];
for (var i = 1; i < res.length; i++)
{
  ans = ans.concat(res[i].charAt(0) + " ");
  // ans = ans.concat(" ");
  ans = ans.concat(res[i].slice(1));
}
console.log(ans);
return ans;
}

getMeNextFirst();
