require 'rubygems'
require 'sinatra'
require 'omniauth-github'

enable :sessions

use OmniAuth::Builder do
  provider :github, '75f92bf8aed012699785', '55a23b15ad1999225215f5d9147424da2ee83197', :scope => 'public_repo,repo,user'
end

get '/' do
  redirect '/auth/github'
end

get '/auth/github/callback' do
  token = request.env['omniauth.auth']['credentials']['token']
  "Your GitHub Access Token is #{token}"
end
