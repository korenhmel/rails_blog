class Comment < ActiveRecord::Base
  validates :autor, presence: true
  validates :body, presence: true
  belongs_to :article
  belongs_to :user
end
