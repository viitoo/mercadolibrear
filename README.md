# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# mercadolibrear

AT=`curl -s -X POST -H 'content-type: application/x-www-form-urlencoded' 'https://api.mercadopago.com/oauth/token' -d 'grant_type=client_credentials' -d 'client_id=5269860020378499' -d 'client_secret=qLk2EMBmr8ZGjg7QKfQUhdJidwXf5V8N' | grep -o '"access_token":"[^"]*"' | sed -n 's/.*"access_token":"\(.*\)"/\1/p'`

curl -X POST \
-H "Content-Type: application/json" \
"https://api.mercadopago.com/users/test_user?access_token=$AT" \
-d '{"site_id":"MLA"}'


api = Mercadolibre::Api.new({
  app_key: 'YOUR_APP_KEY',
  app_secret: 'YOUR_APP_SECRET',
  callback_url: 'YOUR_CALLBACK_URL',
  site: 'YOUR_SITE_COUNTRY'
})


