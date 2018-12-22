require 'spec_helper'
require "rack/test"

require_relative "../app/blog"

RSpec.describe Blog do
 include Rack::Test::Methods

  def app
    Blog.new
  end

  describe "GET /" do

    context "after creating an article" do
      before do
        post "/articles", title: "Hi", content: "Hello World!"
      end

      it "returns the title of the article" do
        get "/articles/Hi"
        expect(last_response.body).to include "Hello World!"
      end
    end

  end

end
