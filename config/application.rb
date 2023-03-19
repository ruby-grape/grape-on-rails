require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GrapeOnRails
  class Application < Rails::Application
    # Since we're testing against multiple versions, initialize configuration defaults
    # based upon the version we're using.
    rails_version = Gem::Version.new(Rails.version)
    if rails_version >= Gem::Version.new('7.0')
      config.load_defaults 7.0
    elsif rails_version >= Gem::Version.new('6.1')
      config.load_defaults 6.1
    else
      config.load_defaults 6.0
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
