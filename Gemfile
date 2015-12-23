source 'https://rubygems.org'

ruby "2.0.0"
gem 'rails', '4.1.4'
### OpenShift Online changes:
# Fix the conflict with the system 'rake':
group :production, :mysql do
  gem 'mysql2', '~> 0.3.18'
end
group :production, :postgresql do
  gem 'pg'
end
### / OpenShift changes
gem 'mysql2', '~> 0.3.18'
gem "devise", "3.2.1"
gem "browser"
gem 'will_paginate', '~> 3.0.2'
gem 'haml'
gem 'html2haml'
gem "haml-rails"
gem "therubyracer"
gem 'geocoder'
gem 'actionpack-page_caching'
gem 'datagrid'

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem "gritter", "1.2.0"
gem 'ahoy_matey'
gem 'activeuuid', '>= 0.5.0'
gem "rubycritic", :require => false
#gem 'dashing-rails'
gem 'puma'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
group :doc do
  gem 'sdoc', '~> 0.4.0'
end

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
group :development do
  gem 'spring'
  gem 'brakeman', :require => false
  gem 'railroady'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

