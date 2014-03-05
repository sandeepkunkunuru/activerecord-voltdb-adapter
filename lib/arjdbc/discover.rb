# arjdbc/discover.rb: Declare ArJdbc.extension modules in this file
# that loads a custom module and adapter.

module ::ArJdbc
  extension :VoltDB do |name|
    if name =~ /voltdb/i
      require 'arjdbc/voltdb'
      true
    end
  end
end
