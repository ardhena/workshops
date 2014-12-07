class ReviewDecorator < Draper::Decorator
  delegate_all

  decorates_association :user
  decorates_association :product

  def author  
  	"#{user.firstname} #{user.lastname}"
  end

  def date
  	created_at.in_time_zone.strftime("%d-%m-%y %H:%M")
  end

end
