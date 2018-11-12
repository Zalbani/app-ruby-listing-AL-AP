class Category < ApplicationRecord
has_many :annonces
  validates :name,presence:  true
end
