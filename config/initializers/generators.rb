require 'slim/smart'

Rails.application.configure do
  config.generators do |g|
    # don't generate empty files when using scaffold/resource generators:
    # - app/assets/javascripts
    # - app/assets/stylesheets
    # - app/helper files
    g.assets false
    g.helper false
    g.template_engine = :slim

    # Not compatible w/ Rails 7 Alpha version
    # g.test_framework :minitest, spec: true
  end

  # https://github.com/slim-template/slim/tree/39cc3fb82b34092ec9e92b8057c5b60c426ffca5#configuring-slim
  Slim::Engine.set_options pretty: true if Rails.env.development?
end
