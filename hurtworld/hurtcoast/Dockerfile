# Hurtcoast Hurtworld OGS Server Dockerfile
#
# Start from our base hurtworld Docker container
# This Docker container will extend the base Hurtworld server container in order
# to provide the specific configuration that makes up the Hurtcoast Server.
#

# Begin from the ogs-hurtworld base image - a customizeable, vanilla instance of Hurtworld Server.
FROM quay.io/jonathanporta/ogs-hurtworld

# Execute the entrypoint from the parent container with the args for this server.
CMD ["-exec \"host 12871;queryport 12881;servername [ogs] Hurtworld - Hurtcoast\" -logfile \"/logs/gamelog.txt\""]
