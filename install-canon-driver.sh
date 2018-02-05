#!/bin/sh

# Canon driver
## printer
cd /media/enxajt/5b3636ab-a21c-41fd-9318-bcee2c17e8b4/enx-init/DL/printer,scanner/2017.05.20.CanonMG7100series-driver-install/cnijfilter-mg7100series-4.00-1-deb/packages
sudo dpkg -iG cnijfilter-common_4.00-1_amd64.deb
sudo dpkg -iG cnijfilter-mg7100series_4.00-1_amd64.deb
sudo service cups restart
sudo /usr/lib/cups/backend/cnijbe
sudo /usr/sbin/lpadmin -p mg7100LAN -m canonmg7100.ppd -v "cnijbe://Canon/?port=net&serial=F4-81-39-20-1A-00" -E
sudo /usr/sbin/lpadmin -d mg7100LAN
## scan
cd /media/enxajt/5b3636ab-a21c-41fd-9318-bcee2c17e8b4/enx-init/DL/printer,scanner/2017.05.20.CanonMG7100series-driver-install/scangearmp-mg7100series-2.20-1-deb/packages/
sudo dpkg -iG scangearmp-common_2.20-1_amd64.deb
sudo dpkg -iG scangearmp-mg7100series_2.20-1_amd64.deb
