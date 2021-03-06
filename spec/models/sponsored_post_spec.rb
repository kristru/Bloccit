require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  #creates new instance of a post class, computes and stores given values
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { RandomData.random_price}
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_sentence) }
 # #4
   let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: price) }

   it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body and price attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: price.to_i)
    end
  end
 end
