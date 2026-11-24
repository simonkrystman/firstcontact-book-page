FROM nginx:1.27-alpine
COPY index.html First_Contact_Front_Cover.png First_Contact_Chapter_One_Sample.pdf First_Contact_Media_Kit.pdf /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
