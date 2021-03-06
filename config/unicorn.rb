root = "/home/han/letUsShareWiFiPassword/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"
 
# change the letUsShareWiFiPassword to your application name
listen "/tmp/unicorn.letUsShareWiFiPassword.sock"
worker_processes 2
timeout 30
 
before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = '/mnt/Hipstaweb-<%= RUBBER_ENV %>/current/Gemfile'
end
