require 'sinatra/base'
require_relative 'models/link'
ENV["RACK_ENV"] ||= "development"

class BookmarkManager < Sinatra::Base

	get 'https://waynemaceybookmarks.herokuapp.com/links' do
		@links = Link.all
		erb :'links/index'
	end

	get '/links/new' do
		erb :'links/new'
	end

	post '/links/save' do
		Link.create(:title => params[:title], :url => params[:url])
		redirect '/links'
	end

  run! if app_file == $0
end
