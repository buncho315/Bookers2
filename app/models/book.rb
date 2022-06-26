class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image　#自分で追記

  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 200}
  #５~6自分で

end
