class UserDecorator < Draper::Decorator
	delegate_all

	decorates_association :reviews
	decorates_association :products

	def sign_up
		created_at.in_time_zone.strftime("%m-%d-%Y %H:%M")
	end

	def last_sign_in
		last_sign_in_at.in_time_zone.strftime("%m-%d-%Y %H:%M")
	end
end	