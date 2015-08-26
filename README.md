# attribute_to_sqlserver
How does Ruby on Rails map it's scaffolded data types to SQL Server?

## And the Answer Is ...
<pre>
rem Create a table that can be referenced by a foriegn key:
rem rails generate scaffold attribute_reference --force
...
rem rake db:migrate

rem Create the test1s table:
rem rails generate scaffold test1 attribute_binary:binary attribute_boolean:boolean a
ttribute_date:date attribute_datetime:datetime attribute_decimal:decimal attribute_float:float attribute_integer:integer attribute_r
eference:references attribute_string:string attribute_text:text attribute_time:time --force

C:\Users\don\Documents\Work\attribute_to_sqlserver>rails generate scaffold test1 attribute_binary:binary attribute_boolean:boolean a
ttribute_date:date attribute_datetime:datetime attribute_decimal:decimal attribute_float:float attribute_integer:integer attribute_r
eference:references attribute_string:string attribute_text:text attribute_time:time --force
      invoke  active_record
      create    db/migrate/20150826201720_create_test1s.rb
      create    app/models/test1.rb
      invoke    test_unit
      create      test/models/test1_test.rb
      create      test/fixtures/test1s.yml
      invoke  resource_route
       route    resources :test1s
      invoke  scaffold_controller
      create    app/controllers/test1s_controller.rb
      invoke    erb
      create      app/views/test1s
      create      app/views/test1s/index.html.erb
      create      app/views/test1s/edit.html.erb
      create      app/views/test1s/show.html.erb
      create      app/views/test1s/new.html.erb
      create      app/views/test1s/_form.html.erb
      invoke    test_unit
      create      test/controllers/test1s_controller_test.rb
      invoke    helper
      create      app/helpers/test1s_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/test1s/index.json.jbuilder
      create      app/views/test1s/show.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/test1s.coffee
      invoke    scss
      create      app/assets/stylesheets/test1s.scss
      invoke  scss
   identical    app/assets/stylesheets/scaffolds.scss

C:\Users\don\Documents\Work\attribute_to_sqlserver>
C:\Users\don\Documents\Work\attribute_to_sqlserver>rake db:migrate --trace
** Invoke db:migrate (first_time)
** Invoke environment (first_time)
** Execute environment
** Invoke db:load_config (first_time)
** Execute db:load_config
** Execute db:migrate
== 20150826201720 CreateTest1s: migrating =====================================
-- create_table(:test1s)
   -> 0.0930s
   -> -1 rows
== 20150826201720 CreateTest1s: migrated (0.0960s) ============================

** Invoke db:_dump (first_time)
** Execute db:_dump
** Invoke db:schema:dump (first_time)
** Invoke environment
** Invoke db:load_config
** Execute db:schema:dump

rem Describe the test1s tables
rem tsql -S DONALDS-PC\SQLEXPRESS

C:\Users\don\Documents\Work\attribute_to_sqlserver>tsql -S DONALDS-PC\SQLEXPRESS
locale is "English_United States.1252"
using default charset "UTF-8"
1> use attribute_to_sqlserver_development
2> go
1> sp_help "[attribute_to_sqlserver_development].[dbo].[test1s]"
2> go
Name    Owner   Type        Created_datetime
test1s  dbo     user table
(1 row affected)

Column_name             Type      Computed  Length  Prec    Scale   Nullable  TrimTrailingBlanks  FixedLenNullInSource  Collation
id                      int       no        4       10      0       no        (n/a)               (n/a)                 NULL
attribute_binary        varbinary no        -1                      yes       no                  yes                   NULL
attribute_boolean       bit       no        1                       yes       (n/a)               (n/a)                 NULL
attribute_date          date      no        3       10      0       yes       (n/a)               (n/a)                 NULL
attribute_datetime      datetime  no        8                       yes       (n/a)               (n/a)                 NULL
attribute_decimal       decimal   no        9       18      0       yes       (n/a)               (n/a)                 NULL
attribute_float         float     no        8       53      NULL    yes       (n/a)               (n/a)                 NULL
attribute_integer       int       no        4       10      0       yes       (n/a)               (n/a)                 NULL
attribute_reference_id  int       no        4       10      0       yes       (n/a)               (n/a)                 NULL
attribute_string        nvarchar  no        8000                    yes       (n/a)               (n/a)                 SQL_Latin1_General_CP1_CI_AS
attribute_text          nvarchar  no        -1                      yes       (n/a)               (n/a)                 SQL_Latin1_General_CP1_CI_AS
attribute_time          time      no        5       16      7       yes       (n/a)               (n/a)                 NULL
created_at              datetime  no        8                       no        (n/a)               (n/a)                 NULL
updated_at              datetime  no        8                       no        (n/a)               (n/a)                 NULL
(14 rows affected)
</pre>
