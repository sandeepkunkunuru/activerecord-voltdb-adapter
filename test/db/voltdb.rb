config = { 
  :username => '_SYSTEM',
  :password => 'SYS',
  :adapter  => 'voltdb',
  :host     => ENV['VOLT_HOST'] || 'localhost',
  :database => ENV['VOLT_NAMESPACE'] || 'weblog_development'
}

ActiveRecord::Base.establish_connection( config )
