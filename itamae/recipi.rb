package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

user 'treasure' do
  action [:create]
  uid 1000
  username "treasure"
  password "$6$EONB88qf$nSXHV8nyUs2OrGNgq4gyH30DjTkssMasA1GFZgIBib1vdI/Sa/o4fiEPyEnwpTD6jQONaejY89D3JD0E8rbde1"
end

template "/etc/ssh/sshd_config" do
  action :create
  source "files/sshd_config.erb"
end

directory "/var/log/nginx/" do
  owner "nginx"
  group "nginx"
  mode  "0755"
end
