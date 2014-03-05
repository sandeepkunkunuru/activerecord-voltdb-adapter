#require 'arjdbc/mssql/tsql_helper'

module ::ArJdbc
  module VoltDB
    #include TSqlMethods
    #
    #def self.column_selector
    #  [ /cache/i, lambda {  | _, col | col.extend( ::ArJdbc::VoltDB::Column ) } ]
    #end
    #
    #module Column
    #end
    #
    #def create_table(name, options = { })
    #  super(name, options)
    #  primary_key = options[:primary_key] || 'id'
    #  execute "ALTER TABLE #{name} ADD CONSTRAINT #{name}_PK PRIMARY KEY(#{primary_key})" unless !options[:id]
    #end
  end
end
