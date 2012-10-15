class Post
  include Mongoid::Document
  field :body, type: String
  #belongs_to :topic
  embedded_in :topic

  def trun_body
  	body[0..2]
  end
end
