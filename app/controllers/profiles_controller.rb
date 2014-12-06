class ProfilesController < ApplicationController

	expose_decorated(:user)
	expose_decorated(:newest_reviews, decorator: ReviewDecorator) { user.reviews.limit(5) }

	def show
	end

end