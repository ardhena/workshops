class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true

  default_scope { order('created_at DESC') }
end