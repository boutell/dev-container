FROM node:16
EXPOSE 3000
EXPOSE 2049
WORKDIR /persistent/workspace
RUN apt-get update
RUN apt-get -y install imagemagick nfs-ganesha nfs-ganesha-vfs vim nano
RUN mkdir -p /root/.local/bin
# needed for the utilities installed by m to cooperate
ENV PATH="/root/.local/bin:$PATH"
RUN npm install -g m && yes | m stable && yes | m tools stable
COPY ./utilities /utilities
RUN mkdir -p /persistent/mongodb
VOLUME /persistent
CMD ["/utilities/supervisor"]
