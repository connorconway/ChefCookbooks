chocolatey_package 'sublimetext3' do 
	action :upgrade
end

windows_path node['sublime']['installation_path'] do
  action :add
  only_if platform_family?{'windows'}
end