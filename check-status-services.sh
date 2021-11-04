echo "Check status And Manage status of services"
echo "Enter n:"
echo "1: check apache2 -cstd"
echo "2: check mysql -cstd"
echo "3: check elasticsearch -cstd"
echo "4: check sql server -cstd"
echo "5: check nginX -cstd"
echo "6: check docker + docker.socket -cstd"
echo "101: nginX + elasticsearch + mysql -cstd"
echo "201: systemclt: listing all loaded services - inactive services(202) - active services(203)"
echo "204: systemclt: listing all not-loaded services - inactive services(205) - active services(206)"
echo "221: pstree - systemd-cgtop "
echo "q: exit"
echo "Enter s+i to stop"
echo "Enter t+i to restart"
echo "Enter d+i to disable"
echo "Enter r+i to reload"
  read INPUT_STRING
  case $INPUT_STRING in
	1)
		sudo systemctl status apache2
		;;
	s1)
		sudo systemctl stop apache2
		;;
	t1)
		sudo systemctl restart apache2
		;;
	d1)
		sudo systemctl disable apache2
		;;
	r1)
		sudo systemctl reload apache2
		;;
	2)
		sudo systemctl status mysql
		;;
	s2)
		sudo systemctl stop mysql
		;;
	t2)
		sudo systemctl restart mysql
		;;
	d2)
		sudo systemctl disable mysql
		;;
	3)
		sudo systemctl status elasticsearch
		;;
	s3)
		sudo systemctl stop elasticsearch
		;;
	t3)
		sudo systemctl restart elasticsearch
		;;
	d3)
		sudo systemctl disable elasticsearch
		;;
	4)
		sudo systemctl status mssql-server
		;;
	s4)
		sudo systemctl stop mssql-server
		;;
	t4)
		sudo systemctl restart mssql-server
		;;
	d4)
		sudo systemctl disable mssql-server
		;;
	5)
		sudo systemctl status nginx
		;;
	s5)
		sudo systemctl stop nginx
		;;
	t5)
		sudo systemctl restart nginx
		;;
	d5)
		sudo systemctl disable nginx
		;;
	6)
		sudo systemctl status docker
		sudo systemctl status docker.socket
		;;
	s6)
		sudo systemctl stop docker
		sudo systemctl stop docker.socket
		;;
	t6)
		sudo systemctl restart docker
		sudo systemctl restart docker.socket
		;;
	d6)
		sudo systemctl disable docker
		sudo systemctl disable docker.socket
		;;
	101)
		sudo systemctl status nginx
		sudo systemctl status elasticsearch 
		sudo systemctl status mysql
		;;
	s101)
		sudo systemctl stop nginx
		sudo systemctl stop elasticsearch 
		sudo systemctl stop mysql
		;;
	t101)
		sudo systemctl restart nginx
		sudo systemctl restart elasticsearch 
		sudo systemctl restart mysql
		;;
	d101)
		sudo systemctl disable nginx
		sudo systemctl disable elasticsearch 
		sudo systemctl disable mysql
		;;
	201)
		sudo systemctl list-units --all --type service
		;;	
	202)
		sudo systemctl list-units --all --type service --state inactive
		;;				
	203)
		sudo systemctl list-units --all --type service --state active
		;;
	204)
		sudo systemctl list-unit-files --all --type service
		;;	
	205)
		sudo systemctl list-unit-files --all --type service --state inactive
		;;				
	206)
		sudo systemctl list-unit-files --all --type service --state active
		;;
        221)
                sudo pstree
                ;;
        222)
                sudo systemd-cgtop
                ;;							
	q)
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
echo "That's all folks!"

# sudo systemctl enable elasticsearch : bật cùng máy chủ
