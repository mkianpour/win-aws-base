source 'https://rubygems.org'

gem 'berkshelf'

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem 'berkshelf', github: 'berkshelf/berkshelf'
#   gem 'vagrant', github: 'mitchellh/vagrant', tag: 'v1.6.3'
# end
#
# group :plugins do
#   gem 'vagrant-berkshelf', github: 'berkshelf/vagrant-berkshelf'
#   gem 'vagrant-omnibus', github: 'schisamo/vagrant-omnibus'
# end

group :lint do
  gem 'foodcritic'
  gem 'rubocop'
end

group :unit do
  gem 'rspec'
  gem 'chefspec'
end

group :kitchen_common do
  gem 'test-kitchen'
  gem 'busser'
end

group :kitchen_docker do
  gem 'kitchen-docker'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant'
end

group :kitchen_cloud do
  gem 'kitchen-digitalocean'
  gem 'kitchen-ec2', github: 'test-kitchen/kitchen-ec2'
end

group :development do
  gem 'rb-fsevent'
  gem 'guard'
  gem 'guard-kitchen'
  gem 'guard-foodcritic'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'rake'
  gem 'serverspec'
  gem 'rubocop'
end
