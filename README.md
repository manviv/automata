# automata

Solution of Part1

Manual Codes to get the Container and setup running and talking to each other.

#Pull the image of the csvserver

docker pull docker.io/infracloudio/csvserver:latest

#Get the container port
 
CPort=`docker image inspect 8cb989ef80b5 | grep "tcp" | uniq | sed 's/"//g;s/ //g' | awk -F / '{print $1}'`

#Run the docker with Env Var and Dir Mount
 
`docker run --name keviv -e CSVSERVER_BORDER=Orange -dp 9393:$CPort -v /root/infra/csvserver/solution/inputFile:/csvserver/inputdata 8cb989ef80b5 tail -f /dev/null`

#Start the csvserver

`docker exec -d keviv ./csvserver`

# Docker compose

docker-compose --verbose up "from the repo as pwd"

