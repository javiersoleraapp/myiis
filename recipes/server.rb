#
# Cookbook:: myiis
# Recipe:: server
#
# Copyright:: 2019, The Authors, All Rights Reserved.

powershell_script 'Intall IIS' do
  code 'Add-WindowsFeature Web-Server'
end

file 'c:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1>'
end

service 'w3svc' do
  action [:enable, :start]
end
