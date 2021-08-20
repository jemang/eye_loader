# Eye self-configuration section
Eye.config do
  logger '/home/system/config/log/eye.log'
end

# Adding application
Eye.application 'my_balance' do
  env 'FILE_PATH' => "/home/system/my_balance_mina/current/"
  env 'PORT' => 3030
  use 'eye/puma.rb'
end

Eye.application 'ioms' do
  env 'FILE_PATH' => "/home/system/ioms/current/"
  env 'PORT' => 3005
  use 'eye/puma.rb'
end
