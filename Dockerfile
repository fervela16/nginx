FROM nginx:1.25.4-alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
# COPY ./certs/certificate.crt /etc/nginx/certs/certificate.crt
# COPY ./certs/private.key /etc/nginx/certs/private.key
EXPOSE 80
# EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
