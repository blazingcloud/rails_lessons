class Topic
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  #has_many :posts
  embeds_many :posts
end
