# Hurtcoast Hurtworld OGS Server Dockerfile
#
# Start from our base hurtworld Docker container
# This Docker container will extend the base Hurtworld server container in order
# to provide the specific configuration that makes up the Hurtcoast Server.
#

# Begin from the ogs-hurtworld base image - a customizeable, vanilla instance of Hurtworld Server.
FROM quay.io/jonathanporta/ogs-hurtworld

# Opens host and query ports - we have to expose these explicitly because the base container's expose is ignore.
EXPOSE 12871/udp
EXPOSE 12881/udp

# I don't like that I have to redine the entry point here. I want to be able to just give the arguments...
# See whitespace dilema below...
ENTRYPOINT /srv/init.sh -exec 'host 12871;queryport 12881;servername [ogs] Hurtworld Hurtcoast' -logfile '/logs/gamelog.txt'

# TODO: FIGURE OUT HOW THE HELL I AM SUPPOSED TO ESCAPE WHITESPACE... GAAAAAH!!!!! <- Anger
# Execute the entrypoint from the parent container with the args for this server.
# CMD ["-exec 'host 12871;queryport 12881;servername [ogs] Hurtworld Hurtcoast' -logfile '/logs/gamelog.txt'"]
# CMD ["-exec", "'host 12871;queryport 12881;servername [ogs] Hurtworld Hurtcoast'", "-logfile", "'/logs/gamelog.txt'"]
# CMD ["-logfile", "'/logs/gamelog.txt'"] # YAY NO EXTRA QUOTES HERE!
# CMD ["-exec", "host", "12871;queryport", "12881;servername", "[ogs]", "Hurtworld", "Hurtcoast", "-logfile", "/logs/gamelog.txt"]

# Results:
# "./init.sh -exec 'host 12871;queryport 12881;servername [ogs] Hurtworld' -logfile /logs/gamelog.txt"
#
# "./init.sh '-exec 'host 12871;queryport 12881;servername [ogs] Hurtworld Hurtcoast' -logfile '/logs/gamelog.txt''"
#
# "./init.sh '-exec 'host 12871;queryport 12881;servername [ogs] Hurtworld Hurtcoast'' '-logfile '/logs/gamelog.txt''"
#
#
# "./init.sh -exec ''host 12871;queryport' 12881;servername [ogs] Hurtworld Hurtcoast' -logfile '/logs/gamelog.txt'"
#
# "./init.sh -exec ''host 12871;queryport' 12881;servername [ogs] Hurtworld Hurtcoast' -logfile '/logs/gamelog.txt'"
