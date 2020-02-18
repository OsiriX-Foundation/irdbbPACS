FROM nginx:1.14-alpine

COPY script.sh /script.sh
RUN chmod +x script.sh

ENTRYPOINT ["/script.sh"]