# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name              = 'activerecord-voltdb-adapter'
  s.version           = '0.1'
  s.date              = '2014-03-05'

  s.platform = Gem::Platform.new([nil, 'java', nil])
  s.rubyforge_project = %q{jruby-extras}

  s.summary     = 'ActiveRecord adapter for voltdb.'
  s.description = 'ActiveRecord adapter for voltdb. Only for use with JRuby. Requires separate VoltDB JDBC driver.'

  s.authors  = ['Sandeep Kunkunuru']
  s.email    = 'sandeep.kunkunuru@gmail.com'
  s.homepage = 'http://jruby-extras.rubyforge.org/activerecord-jdbc-adapter'
  s.require_paths = %w[lib]
  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE]

  # = MANIFEST =
  s.files = %w[
    LICENSE
    README.md
    Rakefile
    activerecord-voltdb-adapter.gemspec
    lib/active_record/connection_adapters/voltdb_adapter.rb
    lib/activerecord-voltdb-adapter.rb
    lib/arjdbc/voltdb.rb
    lib/arjdbc/voltdb/adapter.rb
    lib/arjdbc/voltdb/connection_methods.rb
    lib/arjdbc/discover.rb
    test/voltdb_simple_test.rb
    test/db/voltdb.rb
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/.*test.*\.rb/ }

  s.add_dependency(%q<activerecord-jdbc-adapter>, ['>= 1.0.0'])

  s.rubygems_version = %q{1.3.7}
  s.required_rubygems_version = Gem::Requirement.new('> 1.3.1') if s.respond_to? :required_rubygems_version=
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
  end
end
