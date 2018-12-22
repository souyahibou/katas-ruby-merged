require 'spec_helper'
require_relative '../app/article'

RSpec.describe Article do

  describe ".list" do
    subject(:list) { described_class.list }

    context "without any article" do
      specify { expect(list).to be_empty  }
    end

    context "after creating an article" do
      before { described_class.create("Hi", "Hello World") }

      it "returns the title of the article" do
        expect(list).to eq ["Hi"]
      end
    end
  end

  describe ".find" do
    subject(:find) { described_class.find("Hi") }

    context "after creating an article" do
      before { described_class.create("Hi", "Hello World") }

      it "returns the content of the article" do
        expect(find).to eq "Hello World"
      end
    end

  end
end
