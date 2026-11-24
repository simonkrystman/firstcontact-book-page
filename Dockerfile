FROM nginx:1.27-alpine
# Repo is flat; the served site keeps the package's assets/ and downloads/ paths.
COPY index.html styles.css script.js privacy.html /usr/share/nginx/html/
COPY favicon.svg /usr/share/nginx/html/assets/favicon.svg
COPY First_Contact_Front_Cover.png /usr/share/nginx/html/assets/book-cover.png
COPY First_Contact_Chapter_One_Sample.pdf /usr/share/nginx/html/downloads/first-contact-chapter-one.pdf
COPY First_Contact_Media_Kit.pdf /usr/share/nginx/html/downloads/first-contact-media-kit.pdf
COPY nginx.conf /etc/nginx/conf.d/default.conf
