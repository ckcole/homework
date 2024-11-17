# pi hole setup
# https://www.crosstalksolutions.com/the-worlds-greatest-pi-hole-and-unbound-tutorial-2023/#Lets_get_started# mac ssh pi@192.168.200.182
# windows putty

sudo apt update && sudo apt upgrade -y

# option 2
#had to run this first to get the file?
# from error message from trying the uninstall here:
# https://raspberrypi.stackexchange.com/questions/99195/where-is-my-etc-dhcpcd-conf-file
sudo dpkg --configure -a

# then i could run this?
sudo apt install dhcpcd5


# then hopefully i can run this from the tutorial.
sudo nano -w /etc/dhcpcd.conf

#our subnet is 1.1

# advanced > netwrok > dhcp server > address reservation > mac address of pihole
# assigned 192.168.1.250

# also i turned on advanced > systemtools > traffic monitor > on



# Example static IP configuration:
interface eth0
static ip_address=192.168.1.13/24
# static ip6_address=fd51:42f8:caae:d92e::ff/64
static routers=192.168.1.1
static domain_name_servers=192.168.1.1 1.1.1.1


#omg it worked,  now we install pi hole
curl -sSL https://install.pi-hole.net | bash


# we should donate to pi hole
# https://pi-hole.net/donate

#it works. recording password IOUmqo5Z

# password for pihole: phytk7wh 

# it is alive and set up.  we now need to establish rules.
# ctrl f for "We’re not using this Pi-hole yet, s"

# add more domains from the firebog
# https://firebog.net/

#search for "Configure Devices to use the Pi-hole"

# search "The far superior method is to use your DHCP server to set these Pi-hole settings"

# adding to adlist
#https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt, https://phishing.army/download/phishing_army_blocklist.txt, https://www.github.developerdan.com/hosts/lists/amp-hosts-extended.txt, https://www.github.developerdan.com/hosts/lists/facebook-extended.txt, https://big.oisd.nl/, https://nsfw.oisd.nl/, https://someonewhocares.org/hosts/zero/, https://someonewhocares.org/hosts/ipv6zero/

# for the sense hat:
# sudo apt-get install python-sense-emu python3-sense-emu python-sense-emu-doc sense-emu-tools -yy
