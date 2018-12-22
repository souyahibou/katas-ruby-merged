require 'sinatra/base'
require 'tilt/erb'

require_relative "article"

class Blog < Sinatra::Base

  get '/' do
    articles = Article.list
    erb :index, locals: { articles: articles }
  end

  get '/articles/new' do
    erb :new
  end

  get '/articles/:title' do
    Article.find(params["title"])
  end

  post '/articles' do
    Article.create(params["title"], params["content"])
    redirect '/'
  end
end

