#!/usr/bin/env node
x= new Date();
y=x.getDay();
y+=5;
y%=7;
map = { 0:"Sunday",1:"Monday",2:"Tuesday",3:"Wednesday",4:"Thursday",5:"Friday",6:"Saturday" }
console.log(map[y]);