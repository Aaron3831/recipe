class Keyword < ActiveRecord::Base
  belongs_to :tag
  belongs_to :recipe
end
