cookbook_name = 'xen-orchestra'

default[cookbook_name]['installer_repository'] = 'https://github.com/ronivay/XenOrchestraInstallerUpdater.git'
default[cookbook_name]['installer_revision'] = 'master'
default[cookbook_name]['installer_location'] = '/opt/xen-orchestra-installer'

default[cookbook_name]['config_port'] = '80'
default[cookbook_name]['config_repository'] = 'https://github.com/vatesfr/xen-orchestra'
default[cookbook_name]['config_branch'] = 'master'
default[cookbook_name]['config_plugins'] = 'all'
default[cookbook_name]['config_installdir'] = '/opt/xo'
default[cookbook_name]['config_configupdate'] = true
default[cookbook_name]['config_autoupdate'] = true
default[cookbook_name]['config_preserve'] = 3