include_recipe 'fail2ban'

template '/etc/fail2ban/filter.d/nginx.conf' do
  source 'fail2ban.conf.erb'
  notifies :restart, 'service[fail2ban]'
end
