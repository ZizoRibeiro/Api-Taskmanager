# Install all the Gems
bundle check || bundle Install

# Load the server
bundle exec puma -C config/puma.rb
