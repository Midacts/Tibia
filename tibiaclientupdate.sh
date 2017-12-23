# Gets the current user
user=$(whoami)

# Changes to the desktop
cd /home/$user/Desktop

# Makes the Tibia directory only if it does not exist
mkdir -p Tibia

# Gets the latest Tibia version
wget http://download.tibia.com/tibia.x64.tar.gz

# Makes a new Tibia Directory
mkdir Tibia-Latest

# Untars the latest Tibia download
tar xzf tibia.x64.tar.gz -C Tibia-Latest

# Copies the latest version of Tibia into our existing directory
Latest=$(ls Tibia-Latest)
cp -r Tibia-Latest/$Latest/* Tibia/

# Deletes the tar and temp new directory
rm -rf Tibia-Latest
rm -rf tibia.x64.tar.gz*

# Makes sure the libpcre16.0.3 exists
ln -s /usr/lib/x86_64-linux-gnu/libpcre16.so.3 /home/$user/Desktop/Tibia/bin/libpcre16.so.0

# Makes sure xdotool is installed
apt-get install -y xdotool
