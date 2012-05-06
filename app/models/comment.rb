class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :body, :user_id
  
  validates :body, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  default_scope order: 'comments.created_at DESC'
end
