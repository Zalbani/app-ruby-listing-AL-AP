class Category < ApplicationRecord
has_many :announces
  validates :name,presence:  true
end
