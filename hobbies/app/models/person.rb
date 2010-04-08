class Person < ActiveRecord::Base
  has_many :hobby_origins
  has_many :hobbies, :through => :hobby_origins
end
