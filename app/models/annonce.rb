class Annonce < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :message
  has_one_attached :picture

  validates :category_id,presence: true
  validates :content,presence: true
  validates :price,presence: true
  validates :title,presence: true
  validates :user_id,presence: true
  validates :picture,presence: true

end
