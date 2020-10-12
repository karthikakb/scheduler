# Be sure to restart your server when you modify this file.


# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w( usermeetings.css )
Rails.application.config.assets.precompile += %w( user.css )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( date_time_picker.js )

Rails.application.config.assets.precompile += %w( data_table.js )

Rails.application.config.assets.precompile += %w(validate.js )