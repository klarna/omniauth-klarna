Rails.application.config.middleware.use OmniAuth::Builder do
  provider :klarna, ENV['KLARNA_KEY'], ENV['KLARNA_SECRET']
end
