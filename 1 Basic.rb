package 'apache' do
  package_name 'httpd'
end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/index.html' do
  content 'Hello Manan'
  mode '0755'
  owner 'root'
  group 'apache'
end

file '/etc/manan.txt' do
    content ' He says .... '
end

execute 'commander or anything' do
    command 'echo blah >> /etc/manan.txt'
    only_if 'test -r /etc/manan.txt'
end