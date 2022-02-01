# From inside speedtest dir w/Dockerfile; create the image 'speedtest'
sudo docker build -t speedtest .  

sudo docker run --detach --name librespeed \
        --restart always \
        --publish 80:80 \
        --publish 443:443 \
        --env MODE=standalone \
        -it speedtest #The image you created

#Run following cmd to see the container:
#sudo docker container ls 
