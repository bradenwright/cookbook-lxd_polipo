require 'rake'

desc 'Build MongoDB Database Nodes'
task :install do
  puts 'Running bundle install'
  IO.popen("bundle install", "w") { |pipe| puts pipe.gets rescue nil }
  puts 'Installing Polipo proxy, container proxy-ubuntu-1404'
  IO.popen("bundle exec kitchen verify", "w") { |pipe| puts pipe.gets rescue nil }
  puts "Finished!  Your all set to start using Polipo proxy.  View proxy info here:"
  puts "http://10.0.3.5:8123/polipo/"
end

task :destroy do
  puts 'Destroying container proxy-ubuntu-1404'
  IO.popen("bundle exec kitchen destroy", "w") { |pipe| puts pipe.gets rescue nil }
  puts 'Destroyed container proxy-ubuntu-1404'
end

task :default => [:install]

