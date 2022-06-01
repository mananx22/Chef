package 'apache' do
    package_name 'httpd'
end

service 'httpd' do
    action [:enable, :start]
end
