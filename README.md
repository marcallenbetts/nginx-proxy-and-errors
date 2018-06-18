# nginx-proxy-and-errors
nginx web server configurations that come in handy when testing.

# Getting started
Install docker and docker-compose. Check the `.env` file and set up config for local and remote hosts. From there, `docker-compose up --build` and you're on your way.

# Port 8081
Hitting `http://localhost:8081` redirects to port 3000 for LOCAL_HOST.

# Port 8082
Hitting `http://localhost:8082` redirects to URL configured as REMOTE_HOST.

# Port 8085
If the request sent to port 8085 is an OPTIONS request it is passed along to REMOTE_HOST.

If the request sent to port 8085 is not an OPTIONS request (ex. POST, PUT, PATCH) it is passed along to port 8084 on LOCAL_HOST. This assumes there is a reverse proxy (sold separately) running on LOCAL_HOST that will handle the request or pass it along to REMOTE_HOST.

# Port 8090
Port 8090 is a web server that serves static content from the `web` directory. It will serve static content for POST requests.

And sometimes you just need an error response:
* `http://localhost:400`
* `http://localhost:401`
* `http://localhost:403`
* `http://localhost:404`
* `http://localhost:500`
* `http://localhost:503`
