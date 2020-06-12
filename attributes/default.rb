cookbook_name = 'xen-orchestra'

default[cookbook_name]['installer_repository'] = 'https://github.com/ronivay/XenOrchestraInstallerUpdater.git'
default[cookbook_name]['installer_revision'] = 'master'
default[cookbook_name]['installer_location'] = '/opt/xen-orchestra-installer'

default[cookbook_name]['xen_orchestra_config_port'] = '80'
default[cookbook_name]['xen_orchestra_config_repository'] = 'https://github.com/vatesfr/xen-orchestra'
default[cookbook_name]['xen_orchestra_config_branch'] = 'master'
default[cookbook_name]['xen_orchestra_config_plugins'] = 'all'
default[cookbook_name]['xen_orchestra_config_installdir'] = '/opt/xo'
default[cookbook_name]['xen_orchestra_config_configupdate'] = true
default[cookbook_name]['xen_orchestra_config_autoupdate'] = true
default[cookbook_name]['xen_orchestra_config_preserve'] = 3