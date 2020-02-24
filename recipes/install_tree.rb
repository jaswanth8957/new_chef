package 'tree' do
  action :install
end
package 'httpd' do
  action :install
end
file '/var/www/html/index.html' do
  content '<h1> hello world </h1>'
end
service 'httpd' do
  action [ :enable, :start ]
end
package 'git' do
  action :install
end

