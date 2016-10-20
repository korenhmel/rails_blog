class Article < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates :title, presence: true, length: { maximum: 140 }
  validates :text, presence: true


  def subject
    title
  end

  def last_comment
    comments.last
  end
end

