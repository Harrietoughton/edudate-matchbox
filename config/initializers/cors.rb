# frozen_string_literal: true

# gives us the ability to whitelist certain domains - so we can allow data to be passed between front and backend
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'
    resource '*', headers: :any, methods: %i[get post put patch delete options head], credentials: true
  end

  allow do
    origins 'https://edudate.herokuapp.com'
    resource '*', headers: :any, methods: %i[get post put patch delete options head], credentials: true
  end
end
