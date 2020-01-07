clear
total=$1
i=1
while [ $i -le $total ]
do
if [ $i%4 != 0 ]
then
	notify-send "Go To Work"
	sleep 1s
	notify-send "Worked a lot take some rest(its a small break keep that in mind)"
	sleep 1s

elif [ $i%4 == 0 ]
then
	notify-send "Go To Work"
	sleep 1s
	notify-send "Great job you did a lot of work you deserve a long break"
	sleep 3s
fi
done

notify-send "Your works done bye!!!"
