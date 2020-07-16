# docker-wordpress-pma-mysql

## setup
### edit config .env
you should change port, ip, passwords, etc. to your needs
### if you change nothing in .env
after starting services go to [localhost:8080](http://localhost:8080/)

### start services
    $ docker-compose up

### start services in detached mode
    $ docker-compose up -d

### stop services
    $ docker-compose down
    
### stop and delete everything
    $ docker-compose down --volumes
    ### make sure to delete every folder too after that operation

## optional later on
### export database dump (change passwords in file)
    $ sudo ./export.sh

### copy the project to an external server
#### how rsync works
    $ rsync -v -r <folder> <user>@<ip>:<destination>
#### example: copy external wordpress instance into a local folder
    $ rsync -v -r wordpress root@123.123.123.123:.
