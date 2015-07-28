require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment_added" do
  	user = FactoryGirl.create(:user)
  	sign_in user

	  	place = FactoryGirl.create(:place)
	  	comment = FactoryGirl.create(:comment)

	  		assert_difference 'Comment.count' do
			post :create, :place_id => place.id, :comment => {
				message: comment.message,
				rating: comment.rating
			}
			end

		assert_equal 1, user.comments.count	
  		assert_redirected_to place_path(place)
  	end
end
