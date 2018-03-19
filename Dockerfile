FROM cassandra:latest

# Create app directory
#WORKDIR /usr/src/app

# Install dependencies
#COPY package.json package-lock.json ./
COPY . .

# Bundle app source
RUN sh make_tables.sh 
#ENTRYPOINT sh make_tables.sh


# Build
# docker build -t restbus .

# Run
# docker run -p 3535:3535 restbus:latest
