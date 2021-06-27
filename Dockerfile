FROM nginx:1.15.2-alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY ./build /var/www/
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
