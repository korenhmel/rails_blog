class Comment < ActiveRecord::Base
  validates :autor, presence: true
  validates :body, presence: true, length: { maximum: 4000 }
  belongs_to :article
  belongs_to :user
end
