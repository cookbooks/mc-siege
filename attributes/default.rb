case node['platform']
when "smartos"
  default['siege']['prefix'] = "/opt/local"
else
  default['siege']['prefix'] = "/usr/local"
end
