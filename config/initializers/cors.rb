Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins  (Rails.env.production? ? 'https://nervous-elion-3ad50b.netlify.app/' : 'http://localhost:3000')
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

end   