require 'bundler/setup'
require 'sinatra/base'


class Api < Sinatra::Base

	get '/' do
		redirect_to "/movies"
	end

	get '/hello' do
			'Hello world!'
	end

	get '/movies' do
			 erb :index
	end


	get "/movies/:id" do
    if (1..6).include? params['id'].to_i
				@data_hash = JSON.parse( File.read("data.json") )
				@movies = @data_hash["movies"][params['id'].to_i - 1]
				@directors = @data_hash["directors"]
				erb :article
    end
	end
end
