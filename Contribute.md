## Manual Installation
    - Install nodejs locally
    - Clone the repo
    - Install dependencies (npm install)
    - Start the DBlocally
        - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
        - Go to neon.tech and get yourself a new DB
    - Change the .env file and update your DB credentials
    - npx prisma migrate dev
    - npx prisma generate
    - npm run build
    - npm run start

## Docker Installation
    - Install Docker
    - Start postgres
        - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
    - Build the image
        - `docker build -t user-project .`
    - Start the image
        - `docker run -p 3000:3000 user-project`

## Docker Composr Installation Steps
    - Install Docker, docker-compose
    - Run `docker-compose up`