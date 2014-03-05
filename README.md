activerecord-voltdb-adapter
===========================

This is an ActiveRecord adapter for  voltdb extracted
from the activerecord-jdbc-adapter project.

This project is also an example of the activerecord-jdbc-adapter
adapter extension discovery mechanism, and how you might organize a
gem for your custom database. In particular, note:

- `lib/arjdbc/discover.rb`: This file gets loaded by
  activerecord-jdbc-adapter, and where you register your extension.
  Follow the conventions in that file to declare it.
- `lib/arjdbc/voltdb*`: Organize the ::ArJdbc::voltdb code in here.
  Typically you'll have a `connection_methods.rb` file which creates a
  `voltdb_connection` method on ActiveRecord::Base as well as an
  `adapter.rb` file which contains most of the custom adapter code.
- `lib/active_record/connection_adapters/voltdb_adapter.rb`: This
  file is what allows ActiveRecord to load an adapter from its
  `adapter: voltdb` line in database.yml.
