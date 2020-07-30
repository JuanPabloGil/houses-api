Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins  (Rails.env.production? ? 'https://dreamy-shirley-808e8b.netlify.app/' : 'http://localhost:3000')
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

end   