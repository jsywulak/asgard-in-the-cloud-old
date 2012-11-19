directory "/usr/share/tomcat6/webapps" do
  recursive true
  action :delete
end

directory "/usr/share/tomcat6/webapps" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

remote_file "/usr/share/tomcat6/webapps/asgard.war" do
  source "https://s3.amazonaws.com/stelligent-asgard/asgard.war"
  mode "0644"
end

execute "chown" do
  command "chown tomcat:tomcat -R /usr/share/tomcat6/"
end
