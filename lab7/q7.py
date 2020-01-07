import requests
get1="https://www.googleapis.com/youtube/v3/channels?part=statistics&forUsername=PewDiePie&key=AIzaSyAVA7aHCELblDFOjpEHRsxQBypQOTCF_18"
data = requests.get(url = get1)
# print(data);
obj = data.json()
print(obj)

get2="https://www.googleapis.com/youtube/v3/channels?part=statistics&forUsername=tseries&key=AIzaSyAVA7aHCELblDFOjpEHRsxQBypQOTCF_18"
data2 = requests.get(url= get2)
obj2 = data2.json()
print(obj2)
