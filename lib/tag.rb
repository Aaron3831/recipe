class Tag < ActiveRecord::Base
 has_many :keywords
 has_many :recipes, through: :keywords
end
