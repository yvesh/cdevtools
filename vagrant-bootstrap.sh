# Setting up Vagrant
# Update packages
apt-get -y update

# Install git
apt-get -y install git wget unzip

# Install phing and co
DEBIAN_FRONTEND='noninteractive' apt-get install -y php5-cli php5-mysql php-pear mysql-client php5-xdebug php5-curl curl php5-mcrypt pear-channels

pear config-set preferred_state alpha
pear install --alldeps PHP_CodeSniffer-1.5.3
pear install --alldeps phing/phing
pear install --alldeps Console_CommandLine

# Insert ssh pubkey
cat /projects/pubkey > ~/.ssh/authorized_keys

# and make sure the permissions are alright.
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# run docker to built our docker files :-)
docker build -rm -t compojoom/lamp /projects/docker/

# Get Joomla
wget -O /projects/www/joomla3.zip https://github.com/joomla/joomla-cms/releases/download/3.3.6/Joomla_3.3.6-Stable-Full_Package.zip
wget -O /projects/www/joomla25.zip http://joomlacode.org/gf/download/frsrelease/19918/161803/Joomla_2.5.28-Stable-Full_Package.zip

# Dev 
unzip -q -d /projects/www/j33d /projects/www/joomla3.zip
unzip -q -d /projects/www/j25d /projects/www/joomla25.zip

# Test
unzip -q -d /projects/www/j33_test /projects/www/joomla3.zip
unzip -q -d /projects/www/j25_test /projects/www/joomla25.zip

# Symlinker
cp /projects/tools/symlinker /usr/bin/symlinker
chmod a+x /usr/bin/symlinker

# Copy my start / help scripts to the vagrant user dir
cp /projects/tools/bashdocker.sh /home/vagrant
cp /projects/tools/initdocker.sh /home/vagrant
cp /projects/tools/rundocker.sh /home/vagrant

# Install Joomla standard
git clone https://github.com/joomla/coding-standards.git `pear config-get php_dir`/PHP/CodeSniffer/Standards/Joomla

# Execute devcompo.sh in your environment after
echo "Now start initdocker.sh and execute devcompo.sh in the projects folder to set everything else up"
