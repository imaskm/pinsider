FROM node:latest
COPY ./main.js .
EXPOSE 8080
CMD [ "node", "main.js", "&" ]

