ENV["RACK_ENV"] ||= "localhost/bookmark_manager_development"
ENV["DATABASE_URL"] ||= "postgres://ushgavrfmajwyg:7op03RrRTX1_Z4O03YH2ddWqwc@ec2-107-20-174-127.compute-1.amazonaws.com:5432/dljb8mipjksfo"

require 'sinatra/base'
require './app/models/link'



class BookmarkManager < Sinatra::Base



  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect :'links'
  end

  run! if app_file == $0
end
