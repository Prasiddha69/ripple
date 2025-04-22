FROM nginx

WORKDIR /app/website-file/

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# # Test command
# # docker build -t ripple-website .

# # docker run -d -p 80:80 ripple-website


# # docker rm $(docker ps -aq) && docker system prune -af   