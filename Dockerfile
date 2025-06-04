# Gunakan base image Nginx versi ringan
FROM nginx:alpine

# Salin file HTML, CSS, JS ke folder publik default Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Port yang akan diekspos saat container dijalankan
EXPOSE 80

# Perintah default menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
