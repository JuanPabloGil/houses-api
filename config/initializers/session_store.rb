# frozen_string_literal: true

if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: 'https://frozen-bayou-05010.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end