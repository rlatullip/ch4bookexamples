source 'https://rubygems.org'

gem 'rails', '3.2.16'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# use Haml for templates
gem 'haml'

# use Ruby debugger
group :development, :test do
	gem 'sqlite3'
  gem 'debugger'
end

group :production do
  # make sure the following gems are in your production group:
  gem 'pg' # use PostgreSQL in production (Heroku)
  gem 'rails_12factor'  # Heroku-specific production settings
end
