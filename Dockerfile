FROM nginx

COPY index.html /usr/share/nginx/html
COPY opencv.js /usr/share/nginx/html
COPY 0113_2.png /usr/share/nginx/html
COPY 0113_3.png /usr/share/nginx/html
COPY 0113_4.png /usr/share/nginx/html
COPY 0113_5.png /usr/share/nginx/html
COPY 0113_7.png /usr/share/nginx/html
COPY 0113_8.png /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

COPY ssl.csr /etc/nginx/ssl.csr
COPY ssl.key /etc/nginx/ssl.key

EXPOSE 443
