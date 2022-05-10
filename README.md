# docker-global

## Setup
1. Prepare your source code under data/html.
2. Create docker image by following command.

        $ docker-compose build

3. Copy original gtags.conf from container by following command.

        $ ./get-gtags-conf.sh

4. Modify data/gtags.conf for your source code.
5. Run docker container by following command.

        $ docker-compose up -d

6. Generate GLOBAL html by following command.

        $ ./run-genhtml.sh

## Access
You can access Global html by following URL.<br>
If you need to change access port, please change ports setting in docker-compose.yml.<br>

http://\<your IP address\>:8080/
