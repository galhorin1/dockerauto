if [ $(docker images | grep AlpCon | wc -l) -eq 0 ]; then
    docker build -t AlpCon:1.0 .
fi
if [ $(docker ps | grep AlpCon | wc -l) -eq 0 ]; then
    if [ $(docker ps -a | grep AlpCon | wc -l) -eq 0 ]; then
        docker start -d -v /home/gal/dockerapp/:/home/app/ --name AlpCon AlpCon:1.0
    else
        docker run -d -v /home/gal/dockerapp/:/home/app/ --name AlpCon AlpCon:1.0
    fi
fi

docker exec AlpCon python pythonscript
sleep(10)
docker stop AlpCon


