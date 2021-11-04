echo "Check status And Manage status of services"
echo "Enter n:"
echo "1: echo nameserver 8.8.8.8 + nameserver 8.8.4.4"
echo "2: 2s - shutdown   2c - shutdown -c"
echo "q: exit"
  read INPUT_STRING
  case $INPUT_STRING in
	1)
		sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
		sudo bash -c 'echo "nameserver 8.8.4.4" >> /etc/resolv.conf'
		;;
	2s)
		sudo shutdown
		;;
	2c)	
		sudo shutdown -c
		;;
	q)
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
echo "That's all folks!"
