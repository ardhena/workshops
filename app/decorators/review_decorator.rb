class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
  	"#{user.firstname} #{user.lastname}"
  end

  def date
  	created_at.in_time_zone.strftime("%m-%d-%y %H:%M")
  end

end
