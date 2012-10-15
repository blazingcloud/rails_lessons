class Topic < ActiveRecord::Base
  attr_accessible :admin_only, :body, :title
end
