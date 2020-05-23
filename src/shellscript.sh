
To list 
=> echo " PORT : 8888 | process : $(lsof -i:8888 -t)"

=> lsof -nP -iTCP -sTCP:LISTEN | grep 8888 

To kill a process running on a port.
Ex running on port 8888.
=> kill -9 $(lsof -i:8888 -t) 2> /dev/null
