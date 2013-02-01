class Section < ActiveRecord::Base
  attr_accessible :location, :name
  belongs_to :course
end
