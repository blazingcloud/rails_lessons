class Course < ActiveRecord::Base
  attr_accessible :price, :title
  has_many :sections
end
