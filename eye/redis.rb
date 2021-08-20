process :redis do
  pid_file "/var/run/redis/redis.pid"
  start_command "service redis start"
  stop_command "service redis stop"
  restart_command "service redis restart"
  stdall "/var/log/dnsvault/eye/redis.log"
  start_timeout 60.seconds
end
