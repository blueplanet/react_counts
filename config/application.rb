require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails4base
  class Application < Rails::Application
    config.time_zone = 'Asia/Tokyo'
    config.i18n.available_locales = [:ja]
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.assets false
      g.view_specs false
      g.controller_specs false
      g.helper_specs false
      g.fixture false
    end
  end
end
