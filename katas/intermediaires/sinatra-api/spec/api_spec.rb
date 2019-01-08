require 'spec_helper'
require 'rack/test'
require_relative '../app/api'

RSpec.describe Api do
 include Rack::Test::Methods

  def app
    Api.new
  end

  it 'says hello' do
    get '/hello'
    expect(last_response.body).to eq 'Hello world!'
  end

  it 'returns the list of movies' do
    get '/movies'
    expect(last_response.body).to include 'The Gold Rush'
  end

  it 'returns a specific movie' do
    get '/movies/3'
    expect(last_response.body).to include 'The General'
  end

  it 'returns the right director for a specific movie' do
    get '/movies/5'
    expect(last_response.body).to include 'Alfred Hitchcock'
  end

  it 'should renders nothing for movies/:id = 0' do
    get '/movies/0'
    expect(last_response.body).to match(//)
  end

  it 'should not renders page for route movies/:id = 7' do
    get '/movies/7'
    expect(last_response.body).to match("")
  end

  it 'loads the first pages correcly' do
    get '/movies/1'
    expect(last_response.status).to be 200
  end

  it 'returns the last page correctly' do
    get '/movies/6'
    expect(last_response.status).to be 200
  end

end
