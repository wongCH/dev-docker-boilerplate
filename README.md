# docker-dev-boilerplate
Using Docker to setup local development environment

Setting up a new development project with docker shld always be the same. The only things that is different is the programming language that is needed.

To start, we always setup the folder structure this way:

# Project architecture:
```sh
.
├── startup
│   ├── Dockerfile # build your docker image to install the assemblies / runtime for your application
│   ├── init.sh # start up script to run when u create a new container
│   └── dev.env # this is the environment file for environment variables
│   
├── app # your application folder, you can name it anything you want.
│
└── docker-compose.yaml # configure your docker compose file to start the environment
    
```

# To run
1. At the root directory, run docker compose run --rm dev sh

### "dev" is the service name in your docker compose
### "sh" if you want to shell into your docker, add the "sh" or you can append additional command like terraform init etc.
