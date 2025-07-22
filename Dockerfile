FROM node:20-alpine

WORKDIR /app 

# copy the all package file to the /app directory - * indicate all files with package name

COPY package*.json .

# to install all dependencies 

RUN npm install 
# then copy all the other files to the app file 

COPY . . 

# after this create a .dockerignore - to place node_module to ignore

# now for port setup
EXPOSE 5173 

# run the application 
CMD [ "npm","run","dev" ]

# update the package.json - --host 0.0.0.0 - to run on any system(ip address)