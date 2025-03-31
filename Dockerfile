FROM node:22-alpine

WORKDIR /app

COPY ./package* .
COPY ./prisma .

RUN npm install

COPY . .

ENV DATABASE_URL=postgresql://postgres:mysecretpassword@localhost:5432/postgres

RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

CMD [ "npm", "start" ]