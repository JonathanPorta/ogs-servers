# Super Silly Fun Land Ark OGS Server Dockerfile
#
# Start from our base Ark Docker container
# This Docker container will extend the base Ark server container in order
# to provide the specific configuration that makes up the Super Silly Fun Land Server.
#

# Begin from the ogs-ark base image - a customizeable, vanilla instance of Hurtworld Server.
FROM quay.io/jonathanporta/ogs-ark

# Opens host and query ports - we have to expose these explicitly because the base container's expose is ignore.
EXPOSE 27015/tcp \
  27015/udp \
  7777/tcp \
  7777/udp \
  7778/tcp \
  7778/udp \
  32330/tcp \
  32330/udp

# Execute the entrypoint from the parent container with the args for this server.
CMD ["TheCenter?listen?SessionName=Super Silly Fun Land?ServerAdminPassword=admin password here?QueryPort=27015 -server"]
