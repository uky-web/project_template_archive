#!/bin/bash

echo -e "\n"
echo " ----------- Running the site install... ----------- "
echo -e "\n"

drush si uky_base --account-name=webcom -y

echo -e "\n"
echo " ----------- Lets install the chosen plugin ----------- "
echo -e "\n"

drush chosenplugin

echo -e "\n"
echo " ----------- Enabling and setting Claro as default admin theme, because I like it! ----------- "
echo -e "\n"

drush theme:enable claro
drush config:set system.theme admin claro --yes
drush theme:uninstall seven
drush cr

echo -e "\n"
echo " ----------- Lets fix the files directory permissions...  ----------- "
echo -e "\n"

cd web/sites/default
find files -type d -exec chmod 775 {} +
find files -type f -exec chmod 644 {} +
chown -R root:apache files
cd ../../../

echo -e "\n"
echo " ----------- Lets export the config for this new site... ----------- "
echo -e "\n"

drush cex

echo -e "\n"
echo " ----------- Grab the ldap and webform settings so I don't have to manually input them ----------- "
echo -e "\n"

cp /home/sysjason/ldap_servers.server.ukad.yml config/sync/
cp /home/sysjason/webform.settings.yml config/sync/

echo -e "\n"
echo " ----------- Lets run config import now...  ----------- "
echo -e "\n"

drush cim -y

echo -e "\n"
echo " ----------- Add Webcom as admins ----------- "
echo -e "\n"

drush user-create jrul222
drush user-create arsh224
drush user-create nrsa222
drush user-create jdsumn3
drush urol "administrator" jrul222
drush urol "administrator" arsh224
drush urol "administrator" nrsa222
drush urol "administrator" jdsumn3

echo -e "\n"
echo " ----------- Update db and cache rebuild ----------- "
echo -e "\n"

drush updb
drush cr

echo -e "\n"
echo " ----------- Finished that up...  Add the site url into the reference/.siteurl file, edit settings.php and uncomment the trusted host settings, and then go take a break! ----------- "
echo -e "\n"
