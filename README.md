# Drupal 8 Project Template

This project template provides a starter kit for managing your site dependencies with [Composer](). It is a variation of the official [Drupal Composer](https://github.com/drupal-composer/drupal-project) Drupal project starter kit, with additions and modifications specific to the Univeristy of Kentucky web platform. 

## What does the template do?

When installing the given `composer.json` some tasks are taken care of:

* The UK base Installation Profile is installed, and along with it the UK base theme, as well as Drupal core.
* Autoloader is implemented to use the generated composer autoloader in `vendor/autoload.php`,
  instead of the one provided by Drupal (`web/vendor/autoload.php`).
* Contributed modules (packages of type `drupal-module`) will be placed in `web/modules/contrib/`.
* Custom modules (packages type `drupal-custom-module`) will be placed in `web/modules/custom`.
* Contributed themes (packages of type `drupal-theme`) will be placed in `web/themes/contrib/`.
* Custom themes (packages of type `drupal-custom-theme`) will be placed in `web/themes/custom/`.
* Contributed profiles (packages of type `drupal-profile`) will be placed in `web/profiles/contrib/`.
* Custom profiles (packages of type `drupal-custom-profile`) will be placed in `web/profiles/custom/`.
* Creates default writable versions of `settings.php` and `services.yml`.
* Creates `web/sites/default/files`-directory.
* Latest version of drush is installed locally for use at `vendor/bin/drush`.
* Latest version of DrupalConsole is installed locally for use at `vendor/bin/drupal`.
* Creates environment variables based on your .env file. See [.env.example](.env.example).


## Updating Drupal Core
It is recommended that you to allow the Installation Profile to manage the version of Drupal Core.



## FAQ

### Should I commit the contrib and custom modules I download?
No. Your project should maintain its dependencies (such as additional modules or themes) using composer. 
