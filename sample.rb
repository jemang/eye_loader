# Eye self-configuration section
Eye.config do
  logger '/home/sample/config/log/eye.log'
end

# Adding application
Eye.application 'sample' do
  env 'FILE_PATH' => "/home/sample/repo/"
  env 'MODE' => "development"
  env 'PORT' => '3030'
  use 'eye/base.rb'
  use 'eye/puma.rb'
end
