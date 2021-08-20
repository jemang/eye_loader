process :puma do
  mode = env['MODE'].present? ? env['MODE'] : 'production'
  daemonize true
  pid_file 'tmp/pids/server.pid'
  start_grace 5.seconds
  start_command "bundle exec puma -p #{env['PORT']} -e #{mode}"
  stop_signals [:QUIT, 10.seconds, :TERM, 5.seconds, :KILL]

  # check :http, url: 'http://127.0.0.1:8000',
  # every: 60.seconds, times: [2, 3], timeout: 10.second
end
