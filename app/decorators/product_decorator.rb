class ProductDecorator < Draper::Decorator
  delegate_all
	decorates_association :category

  def owner
  	"#{user.firstname} #{user.lastname}"
  end

  def price_formatted
  	#price.round(2)
  	"$ #{'%.02f' % price}"
  end
end
