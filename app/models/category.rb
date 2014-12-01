class Category < ActiveRecord::Base
  has_many :products

  validates :name, uniqueness: true, presence: true

  default_scope { order('name ASC') }
end
