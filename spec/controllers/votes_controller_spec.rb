require 'rails_helper'

RSpec.describe VotesController, type: :controller do
=begin
  let(:my_topic) { create(:topic) }
  let(:my_user) { create(:user) }
  let(:other_user) { create(:user) }
  let(:user_post) { create(:post, topic: my_topic, user: other_user) }
  let(:my_vote) { Vote.create!(value: 1) }

  context "guest" do
    describe "POST up_vote" do
      it "redirects the user to the sign in view" do
        post :up_vote, params: { post_id: user_post.id }
        expect(response).to have_http_status(:redirect)
      end
    end

    describe "POST down_vote" do
      it "redirects the user to the sign in view" do
        delete :down_vote, params: { post_id: user_post.id }
        expect(response).to have_http_status(:redirect)
      end
    end

   context "signed in user" do
        before do
        set_session[my_user]
        request.env["HTTP_REFERER"] = topic_post_path(my_topic, user_post)
      end
   end

    describe "POST up_vote" do
      it ":back redirects to posts show page" do
        request.env["HTTP_REFERER"] = topic_post_path(my_topic, user_post)
        post :up_vote, params: { post_id: user_post.id }
        expect(response).to have_http_status(:redirect)
      end

      it ":back redirects to posts topic show" do
        request.env["HTTP_REFERER"] = topic_path(my_topic)
        post :up_vote, params: { post_id: user_post.id }
        expect(response).to have_http_status(:redirect)
      end
    end
=end
  end
