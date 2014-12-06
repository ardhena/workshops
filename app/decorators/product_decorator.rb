class ProductDecorator < Draper::Decorator
  delegate_all
	decorates_association :category
	decorates_association :reviews

  def owner
  	"#{user.firstname} #{user.lastname}"
  end

  def price_formatted
  	"$ #{'%.02f' % price}"
  end

  def description_formatted
  	description.truncate(54, separator: /\s/)
  end
end