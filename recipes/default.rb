cookbook_name = 'xen-orchestra'
installer_location = node[cookbook_name]['installer_location']

if node['memory']['total'].to_i < 3_000_000
  Chef::Log.fatal('Client must have more than 3GB of RAM')
  raise
end

git installer_location do
  repository node[cookbook_name]['installer_repository']
  revision node[cookbook_name]['installer_revision']
  enable_checkout false
  action :sync
end

template "#{installer_location}/xo-install.cfg" do
  source 'xo-install.cfg.erb'
  owner 'root'
  group 'root'
  mode '0600'
  variables(
    port: node[cookbook_name]['xen_orchestra_config_port'],
    installdir: node[cookbook_name]['xen_orchestra_config_installdir'],
    configupdate: node[cookbook_name]['xen_orchestra_config_configupdate'],
    repository: node[cookbook_name]['xen_orchestra_config_repository'],
    branch: node[cookbook_name]['xen_orchestra_config_branch'],
    plugins: node[cookbook_name]['xen_orchestra_config_plugins'],
    autoupdate: node[cookbook_name]['xen_orchestra_config_autoupdate'],
    preserve: node[cookbook_name]['xen_orchestra_config_preserve']
  )
end

execute 'install_xen_orchestra' do
  cwd installer_location
  user 'root'
  live_stream true
  command './xo-install.sh --install'
end

execute 'update_xen_orchestra' do
  cwd installer_location
  user 'root'
  live_stream true
  command './xo-install.sh --update'
end
