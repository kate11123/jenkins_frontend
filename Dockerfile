FROM nginx

RUN apt-get update
RUN apt-get install nodejs -y
RUN apt-get install yarn -y

RUN mkdir -p /var/www/frontend/html
RUN chown -R $USER:$USER /var/www/frontend/html
RUN chown -R 755 /var/www/frontend
RUN rm /etc/nginx/conf.d/default.conf

COPY index.html /var/www/frontend/html/
COPY frontend.conf /etc/nginx/conf.d/
