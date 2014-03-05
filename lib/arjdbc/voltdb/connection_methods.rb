class ActiveRecord::Base
  class << self
    def voltdb_connection( config )
      config[:port] ||= 21212
      config[:url] ||= "jdbc:voltdb://#{config[:host]}:#{config[:port]}"
      config[:driver] ||= 'org.voltdb.jdbc.Driver'
      jdbc_connection(config)
    end
  end
end
