process :sidekiq do |p|
  daemonize true
  pid_file "tmp/pids/sidekiq.pid"
  stdall "log/sidekiq.log"
  start_command "bundle exec sidekiq -e production"
  start_timeout 30.seconds
  stop_signals [:USR1, 0, :TERM, 10.seconds, :KILL]
  check :cpu, every: 30, below: 100, times: 5
  check :memory, every: 30, below: 500.megabytes, times: 5
  #check :memory, every: 30, below: 2.gigabytes, times: 5
end
