require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  #creates new instance of a post class, computes and stores given values
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { RandomData.random_price}
let(:topic) { Topic.create!(name: name, description: description) }
 # #4
   let(:sponsored_post) { Topic.posts.create!(title: title, body: body, price: price) }

   it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body and price attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: price)
    end
  end
 end
