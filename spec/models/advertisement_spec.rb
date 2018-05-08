require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title:"New Advertisement Title", copy: "New Ad Copy", price:200.00) }

  describe "attributes" do
    it "has title, copy and price attributes" do
      expect(advertisement).to have_attributes(title: "New Advertisement Title", copy: "New Ad Copy", price:200.00)
    end
  end
end
