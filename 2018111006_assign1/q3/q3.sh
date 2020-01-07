clear
total=$1
i=1
while [ $i -le $total ]
do
if [ $i%4 != 0 ]
then
	notify-send "Go To Work"
	sleep 25m
	notify-send "Worked a lot take some rest(its a small break keep that in mind)"
	sleep 5m

elif [ $i%4 == 0 ]
then
	notify-send "Go To Work"
	sleep 25m
	notify-send "Great job you did a lot of work you deserve a long break"
	sleep 15m
fi
done

notify-send "Your works done bye!!!"
