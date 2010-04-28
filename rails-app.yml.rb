# rails-app.yml.rb
# by Jordi Romero (jrom)
# http://github.com/jrom/rails-app.yml

# Now, go read the README.md

config_name = ask("What do you want to call the config file? (Only word characters) [example: app]")
config_name = "app" if config_name.empty? || config_name !~ /\A\w*$\z/

file "config/#{config_name.downcase}.yml", <<FILE
production: 
  title: Title

development: 
  title: Title [DEV]

test: 
  title: Title [TEST]

FILE

file "config/initializers/load_#{config_name.downcase}_config.rb", <<FILE
#{config_name.upcase}_CONFIG = YAML.load_file("\#{Rails.root}/config/#{config_name.downcase}.yml")[Rails.env]
FILE

puts "\n\t*** Now you can use #{config_name.upcase}_CONFIG['var'] anywhere.\n\n"
