require 'rubygems'
require 'bundler'
Bundler.require(:default)

response = RestClient.get('https://team-api.18f.gov/public/api/team/', accept: :json)
data = JSON.parse(response.body)
usernames = data['results'].map { |user| user['github'] }
puts usernames
