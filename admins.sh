#!/bin/bash
drush user-create jrul222
drush user-create arsh224
drush user-create nrsa222
drush user-create jdsumn3
drush urol "administrator" jrul222
drush urol "administrator" arsh224
drush urol "administrator" nrsa222
drush urol "administrator" jdsumn3
drush updb
drush cr
