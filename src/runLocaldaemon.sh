
#!/bin/bash

config_func(){
  echo "Do config_func $1 times..."
  kill -9 $(lsof -i:8888 -t) 
  cd config-service 
  bash ./gradlew bootRun
}

registry_func(){ 
  echo "Do registry_func $1 times..."
  cd service-registry
  bash ./gradlew bootRun
  
}

gateway_func(){ 
  echo "Do gateway_func $1 times..."
  cd gateway
  bash ./gradlew bootRun
}

auth_func(){
  echo "Do auth_func $1 times..."
  cd auth-service
  bash ./gradlew bootRun
}

kill_func(){
  echo "kill all process on PORT: 8888, 8761, 8081, 5000"  
  kill -9 $(lsof -i:8888 -t) 2> /dev/null
  kill -9 $(lsof -i:8761 -t) 2> /dev/null
  kill -9 $(lsof -i:8081 -t) 2> /dev/null
  kill -9 $(lsof -i:5000 -t) 2> /dev/null
}

echo ""
echo "********************** Hello! Spring | Microservices **************************"

ARG_VAR1=$1; 
VAR_kill="kill"
VAR_bootRun="bootRun"
VAR_help="help"



if [ "$ARG_VAR1" = "kill" ]; then
    kill_func
elif [ "$ARG_VAR1" = "bootRun" ]; then
    kill_func
    sleep 1
    echo "Run all process on PORT: 8888, 8761, 8081, 5000" 
    config_func 1 &    # Put a function in the background  8888
    sleep 10
    registry_func 2 &  # Put a function in the background 8761
    sleep 1
    gateway_func 3 &   # Put a function in the background 8081
    auth_func 4 &      # Put a function in the background 5000
elif [ "$ARG_VAR1" = "$VAR_help" ]; then 
  echo  
  echo "These are common shell commands used in various situations:"
  echo "    help     List all options"
  echo "    kill     Kill all process"
  echo "    bootRun  Run all services"
else
  echo "All running port."
  echo " PORT : 8888 | process : $(lsof -i:8888 -t)"
  echo " PORT : 8761 | process : $(lsof -i:8761 -t)"
  echo " PORT : 8081 | process : $(lsof -i:8081 -t)"
  echo " PORT : 5000 | process : $(lsof -i:5000 -t)"
fi

wait 
echo "All done"

