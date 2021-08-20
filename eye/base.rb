working_dir "#{env['FILE_PATH']}"
# working_dir File.expand_path(File.join(File.dirname(__FILE__), %w[ ../my_balance_mina/current/ ]))
stdall 'log/trash.log' # stdout,err logs for processes by default
env 'RAILS_ENV' => 'production' # global env for each processes
trigger :flapping, times: 10, within: 1.minute, retry_in: 10.minutes
check :cpu, every: 10.seconds, below: 100, times: 3
# global check for all processes
