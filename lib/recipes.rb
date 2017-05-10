class Recipe < ActiveRecord::Base
  has_many :meals
  has_many :ingredients, through: :meals
  has_many :tags, through: :keywords
end
