# xen-orchestra

Cookbook to install [Xen Orchestra](https://xen-orchestra.com/) using [XenOrchestraInstallerUpdater script](https://github.com/ronivay/XenOrchestraInstallerUpdater)

## Tested platforms
- Ubuntu 18.04 and 20.04

## Usage

This cookbook can be used by including `xen-orchestra::default` in your run list and settings attributes as needed.

## Attributes

- `node['xen-orchestra']['installer_repository']` - repository of XenOrchestraInstallerUpdater (default: `https://github.com/ronivay/XenOrchestraInstallerUpdater.git`)

- `node['xen-orchestra']['installer_revision']` - branch of  XenOrchestraInstallerUpdater repository (default: `master`)

- `node['xen-orchestra']['installer_location']` - location where XenOrchestraInstallerUpdater will be downloaded (default: `/opt/xen-orchestra-installer`)

Following attributes are mappings to [xo-install.cfg](https://github.com/ronivay/XenOrchestraInstallerUpdater/blob/master/sample.xo-install.cfg):

- `node['xen-orchestra']['config_port']`
- `node['xen-orchestra']['config_repository']`
- `node['xen-orchestra']['config_branch']`
- `node['xen-orchestra']['config_plugins']`
- `node['xen-orchestra']['config_installdir']`
- `node['xen-orchestra']['config_configupdate']`
- `node['xen-orchestra']['config_autoupdate']`
- `node['xen-orchestra']['config_preserve']`