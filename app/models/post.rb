class Post < ActiveRecord::Base
  attr_accessible :body, :title
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :user_id, presence: true

  default_scope order: 'posts.created_at DESC'
end
