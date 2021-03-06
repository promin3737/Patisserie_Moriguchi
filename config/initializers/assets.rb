# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( application.scss )
Rails.application.config.assets.precompile += %w( public/homes.scss )
Rails.application.config.assets.precompile += %w( public/items.scss )
Rails.application.config.assets.precompile += %w( public/accesses.scss )
Rails.application.config.assets.precompile += %w( events.scss )
Rails.application.config.assets.precompile += %w( signup.scss )
Rails.application.config.assets.precompile += %w( public/orders.scss )
Rails.application.config.assets.precompile += %w( public/cart_items.scss )
Rails.application.config.assets.precompile += %w( public/end_users.scss )
Rails.application.config.assets.precompile += %w( public/addresses.scss )