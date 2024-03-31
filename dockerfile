FROM amazonlinux
COPY lab1.sh .
RUN chmod +x lab1.sh
CMD ./lab1.sh
