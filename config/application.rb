require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module TechlogApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])

    config.generators do |g|
      g.assets false          # CSS, JavaScriptファイルを自動生成しない
      g.helper false          # helperファイルを自動生成しない
      g.test_framework :rspec # テストフレームワークをrspecに設定
    end

    config.i18n.default_locale = :ja
  end
end
