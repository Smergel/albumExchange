class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :comment, presence: true, length: { minimum: 1, maximum: 1000 }
end
