Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mercadolibre, ENV['5269860020378499'], ENV['qLk2EMBmr8ZGjg7QKfQUhdJidwXf5V8N']
end
