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
  password "treasure"
end
