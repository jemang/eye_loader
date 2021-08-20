# Eye self-configuration section
Eye.config do
  logger '/home/localhost/config/log/eye.log'
end

# Adding application
Eye.application 'eproc_dev' do
  env 'FILE_PATH' => "/home/localhost/eproc-dev/"
  env 'MODE' => "development"
  env 'PORT' => '3030'
  use '../eye/base.rb'
  use '../eye/puma.rb'
end
