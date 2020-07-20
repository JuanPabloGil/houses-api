Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins  (Rails.env.production? ? 'https://house-api-jpmg.herokuapp.com' : 'http://localhost:3000')
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

end   