script="enable-wifi-script.sh"

sudo cp $script  /etc/init.d/

sudo chmod +x /etc/init.d/$script

sudo update-rc.d $script defaults

